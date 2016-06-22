local fuoldInit = init
local fuoldUpdate = update
local fuoldUninit = uninit

function init()
	fuoldInit()
  self.lastYPosition = 0
  self.lastYVelocity = 0
  self.fallDistance = 0
  local bounds = mcontroller.boundBox() --Mcontroller for apex movement
end

function update(dt)
  fuoldUpdate(dt)
  
  local minimumFallDistance = 14
  local fallDistanceDamageFactor = 3
  local minimumFallVel = 40
  local baseGravity = 80
  local gravityDiffFactor = 1 / 30.0	
  local curYPosition = mcontroller.yPosition()
  local yPosChange = curYPosition - (self.lastYPosition or curYPosition)
  local curYVelocity = yPosChange / dt
  local yVelChange = curYVelocity - self.lastYVelocity

  if self.fallDistance > minimumFallDistance and yVelChange > minimumFallVel  and mcontroller.onGround() then
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

  if curYVelocity < -minimumFallVel then
    self.fallDistance = self.fallDistance + -yPosChange
  else
    self.fallDistance = 0
  end

  self.lastYPosition = curYPosition
  self.lastYVelocity = curYVelocity
  
	--Human
	if world.entitySpecies(entity.id()) == "human" then
		status.addEphemeralEffect("racehuman",math.huge)
	end
	
	--Avian
	if world.entitySpecies(entity.id()) == "avian" then
		status.addEphemeralEffect("raceavian",math.huge)
		status.addEphemeralEffect("damagebonusavian",math.huge)
	end

	--Apex
	if world.entitySpecies(entity.id()) == "apex" then
		status.addEphemeralEffect("percenthealthboostapex",math.huge)
		mcontroller.controlModifiers({
				runModifier = 1.15,
				jumpModifier = 1.10
			})
	end
	
	--Floran
	if world.entitySpecies(entity.id()) == "floran" then
		status.addEphemeralEffect("racefloran",math.huge)
		status.addEphemeralEffect("maxenergyboostfloran",math.huge)
	end
	
	--Hylotl
	if world.entitySpecies(entity.id()) == "hylotl" then
		status.addEphemeralEffect("racehylotl",math.huge)
		status.addEphemeralEffect("swimboosthylotl",math.huge)
	end
	
	--Glitch
	if world.entitySpecies(entity.id()) == "glitch" then
		status.addEphemeralEffect("raceglitch",math.huge)
	end
	
	--Novakid
	if world.entitySpecies(entity.id()) == "novakid" then
		status.addEphemeralEffect("racenovakid",math.huge)
		status.addEphemeralEffect("novakidglow",math.huge)
	end


	--avali
	if world.entitySpecies(entity.id()) == "avali" then
		status.addEphemeralEffect("raceavali",math.huge)
		mcontroller.controlModifiers({
				runModifier = 1.16,
				jumpModifier = 1.08
			})
	end
	
	--avikan
	if world.entitySpecies(entity.id()) == "avikan" then
		status.addEphemeralEffect("raceavikan",math.huge)
	end
	
	--peglaci
	if world.entitySpecies(entity.id()) == "peglaci" then
		status.addEphemeralEffect("racepeglaci",math.huge)
	end
	--felins
	if world.entitySpecies(entity.id()) == "felins" then
		status.addEphemeralEffect("racefelins",math.huge)
		mcontroller.controlModifiers({
				runModifier = 1.10,
				jumpModifier = 1.20
			})
	end	
	--Orcana
	if world.entitySpecies(entity.id()) == "orcana" then
		status.addEphemeralEffect("raceorcana",math.huge)
		status.addEphemeralEffect("swimboostorcana",math.huge)
	end
	--ponex
	if world.entitySpecies(entity.id()) == "ponex" then
		status.addEphemeralEffect("raceponex",math.huge)
		mcontroller.controlModifiers({
				runModifier = 1.25
			})
	end
	--viera
	if world.entitySpecies(entity.id()) == "viera" then
		status.addEphemeralEffect("raceviera",math.huge)
		mcontroller.controlModifiers({
				runModifier = 1.05
			})
	end	
	
  local mouthPosition = vec2.add(mcontroller.position(), status.statusProperty("mouthPosition"))
  if status.statPositive("breathProtection") or world.breathable(mouthPosition) 
	or status.statPositive("waterbreathProtection") and world.liquidAt(mouthPosition) 
	then
    status.modifyResource("breath", status.stat("breathRegenerationRate") * dt)
  else
    status.modifyResource("breath", -status.stat("breathDepletionRate") * dt)
  end
  
  
  
	
end