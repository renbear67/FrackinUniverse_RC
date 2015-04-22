function init()
  self.lastYVelocity = 0
  self.fallDistance = 0
  self.hitInvulnerabilityTime = 0
  self.suffocateSoundTimer = 0

  local ouchNoise = status.statusProperty("ouchNoise")
  if ouchNoise then
    animator.setSoundPool("ouch", {ouchNoise})
  end
end

function applyDamageRequest(damageRequest)
  if world.getProperty("invinciblePlayers") then
    return {}
  end

  if damageRequest.damageSourceKind ~= "falling" and (self.hitInvulnerabilityTime > 0 or world.getProperty("nonCombat")) then
    return {}
  end

  local damage = 0
  if damageRequest.damageType == "Damage" or damageRequest.damageType == "Knockback" then
    damage = damage + root.evalFunction2("protection", damageRequest.damage, status.stat("protection"))
  elseif damageRequest.damageType == "IgnoresDef" then
    damage = damage + damageRequest.damage
  end
  
  if status.resourcePositive("shieldHealth") then
    local shieldAbsorb = math.min(damage, status.resource("shieldHealth"))
    status.modifyResource("shieldHealth", -shieldAbsorb)
    damage = damage - shieldAbsorb
  end

  local damageHealthPercentage = damage / status.resourceMax("health")

  if damage > 0 and damageRequest.damageType ~= "Knockback" then
    status.modifyResource("health", -damage)
    animator.playSound("ouch")
    if damageHealthPercentage > status.statusProperty("hitInvulnerabilityThreshold") then
      self.hitInvulnerabilityTime = status.statusProperty("hitInvulnerabilityTime") * math.min(damageHealthPercentage, 1.0)
    end
  end

  status.addEphemeralEffects(damageRequest.statusEffects)

  local knockbackFactor = (1 - status.stat("grit")) * damageHealthPercentage

  local knockbackMomentum = damageRequest.knockbackMomentum
  knockbackMomentum[1] = knockbackMomentum[1] * knockbackFactor
  knockbackMomentum[2] = knockbackMomentum[2] * knockbackFactor
  mcontroller.addMomentum(knockbackMomentum)

  return {{
    sourceEntityId = damageRequest.sourceEntityId,
    targetEntityId = entity.id(),
    position = mcontroller.position(),
    damage = damage,
    damageSourceKind = damageRequest.damageSourceKind,
    targetMaterialKind = status.statusProperty("targetMaterialKind"),
    killed = not status.resourcePositive("health")
  }}
end

function notifyResourceConsumed(resourceName, amount)
  if resourceName == "energy" then
    status.setResourcePercentage("energyRegenBlock", 1.0)
  end
end

function update(dt)
  local minimumFallDistance = 14 * (1 + status.stat("fallProtection"))
 -- local fallDistanceDamageFactor = 3
  local minimumFallVel = 40
  local baseGravity = 80
  local gravityDiffFactor = 1 / 30.0

  local curYVelocity = mcontroller.yVelocity()

  local yVelChange = curYVelocity - self.lastYVelocity
  --- edits here. If player is on ground, then we want to check material and maybe apply fall damage.
  if mcontroller.onGround() then
    local position = mcontroller.position()
    local fallDistanceDamageFactor = 3
    local groundmat = world.material(vec2.add(position, {0,-3}), "foreground")
    local groundmatl = world.material(vec2.add(position, {0.25,-3}), "foreground")
    local groundmatr = world.material(vec2.add(position, {-0.25,-3}), "foreground")

-- ********************FrackinUniverse terrain effects*******************

-- infernus / magma tiles  (burning effect)
    if groundmat == "magmatile1" or groundmat == "magmatile2" then
      status.addEphemeralEffects{{effect = "burning"}}
    end

-- slime/slime2  (bounce, slightly affects traction)
    if groundmat == "slime" or groundmat == "slime2" then
      status.addEphemeralEffects{{effect = "slimestick"}}
    end
    
-- black slime (bounce, slightly affects traction, poisonous)
    if groundmat == "blackslime" then
      status.addEphemeralEffects{{effect = "slimestick"}}
      status.addEphemeralEffects{{effect = "weakpoison"}}
    end
    
-- mud (slow)
    if groundmat == "mud" then
      status.addEphemeralEffects{{effect = "fumudslow"}}
    end
    
-- clay (slow)
    if groundmat == "clay" then
      status.addEphemeralEffects{{effect = "fumudslow"}}
    end
    
-- spider silk (sticky + destroys tile)
    if groundmat == "spidersilkblock" then
      status.addEphemeralEffects{{effect = "webstick"}}
    end
    
-- irradiated tiles (light radiation)
    if groundmat == "irradiatedtile" or groundmat == "irradiatedtile2" or groundmat == "irradiatedtile3" then
      status.addEphemeralEffects{{effect = "radiationburn"}}
    end
    
-- proto tiles (slight regen)
    if groundmat == "bioblock" or groundmat == "bioblock2" or groundmat == "biodirt" then
      status.addEphemeralEffects{{effect = "regenerationminor"}}
      mcontroller.controlModifiers({
        groundMovementModifier = -0.15,
        runModifier = -0.15,
        jumpModifier = -0.15
      })
    end
    
-- elder stone (severe radioactive)
    if groundmat == "protorock" then
      status.addEphemeralEffects{{effect = "ffextremeradiation"}}
    end
    

-- *****ohgoditburns original terrain effects************
    if groundmat == "snow" then
      fallDistanceDamageFactor = 1
      mcontroller.controlModifiers({
        groundMovementModifier = -0.73,
        runModifier = -0.73,
        jumpModifier = -0.73
      })
    end

    if groundmatl == "slush" or groundmatr== "slush" then
      fallDistanceDamageFactor = 2
      mcontroller.controlParameters({
        normalGroundFriction = 1,
        groundForce = 20,
        slopeSlidingFactor = 0.2
        })
      mcontroller.controlModifiers({
        groundMovementModifier = -0.3,
        runModifier = -0.3,
        jumpModifier = -0.3
      })
    end

    if groundmatl == "ice" or groundmatr== "ice" or
    groundmatl == "iceblock" or groundmatr == "iceblock" or
    groundmatl == "frozenwater" or groundmatr == "frozenwater" or
    -- ***FrackinUniverse Ice Waste blocks below
    groundmatl == "iceblock1" or groundmatr== "iceblock1" or
    groundmatl == "iceblock2" or groundmatr== "iceblock2" then
      status.addEphemeralEffects{{effect = "iceslip"}}
    end

    if groundmat == "metallic" or groundmat2== "metallic" then
       mcontroller.addMomentum({100 * sign(mcontroller.positionDelta()[1]),0})
    end

    if self.fallDistance > minimumFallDistance and yVelChange > minimumFallVel then
      local damage = (self.fallDistance - minimumFallDistance) * fallDistanceDamageFactor
      damage = damage * (1.0 + (world.gravity(mcontroller.position()) - baseGravity) * gravityDiffFactor)
      damage = damage * status.stat("fallDamageMultiplier")
      status.applySelfDamageRequest({
          damageType = "IgnoresDef",
          damage = damage,
          damageSourceKind = "falling",
          sourceEntityId = entity.id()
        })
    end

  end

  if curYVelocity < -minimumFallVel then
    self.fallDistance = self.fallDistance + -mcontroller.positionDelta()[2]
  else
    self.fallDistance = 0
  end

  self.lastYVelocity = curYVelocity

  local mouthPosition = vec2.add(mcontroller.position(), status.statusProperty("mouthPosition"))
  if status.statPositive("breathProtection") or world.breathable(mouthPosition) then
    status.modifyResource("breath", status.stat("breathRegenerationRate") * dt)
  else
    status.modifyResource("breath", -status.stat("breathDepletionRate") * dt)
  end

  if not status.resourcePositive("breath") then
    self.suffocateSoundTimer = self.suffocateSoundTimer - dt
    if self.suffocateSoundTimer <= 0 then
      self.suffocateSoundTimer = 0.5 + (0.5 * status.resourcePercentage("health"))
      animator.playSound("suffocate")
    end
    status.modifyResourcePercentage("health", -status.statusProperty("breathHealthPenaltyPercentageRate") * dt)
  else
    self.suffocateSoundTimer = 0
  end

  self.hitInvulnerabilityTime = math.max(self.hitInvulnerabilityTime - dt, 0)
  local flashTime = status.statusProperty("hitInvulnerabilityFlash")

  if self.hitInvulnerabilityTime > 0 and math.fmod(self.hitInvulnerabilityTime, flashTime) > flashTime / 2 then
    status.setPrimaryDirectives("multiply=ffffff00")
  else
    status.setPrimaryDirectives()
  end

  if status.resourceLocked("energy") and status.resourcePercentage("energy") == 1 then
    animator.playSound("energyRegenDone")
  end

  if status.resource("energy") == 0 then
    if not status.resourceLocked("energy") then
      animator.playSound("outOfEnergy")
      animator.burstParticleEmitter("outOfEnergy")
    end

    status.setResourceLocked("energy", true)
  elseif status.resourcePercentage("energy") == 1 then
    status.setResourceLocked("energy", false)
  end

  if not status.resourcePositive("energyRegenBlock") then
    status.modifyResourcePercentage("energy", status.stat("energyRegenPercentageRate") * dt)
  end
end
