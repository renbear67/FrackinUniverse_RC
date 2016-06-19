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

	-- Adjusts avian fall damage
--	if world.entitySpecies(entity.id()) == "avian" then
--		local minimumFallDistance = 21
--		local minimumFallVel = 60
--	end
	
	-- Adjusts apex fall damage
--	if world.entitySpecies(entity.id()) == "apex" then
--		local minimumFallDistance = 17.5
--		local minimumFallVel = 50
--	end
	
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
	end

	--Apex
	if world.entitySpecies(entity.id()) == "apex" then
		--status.addEphemeralEffect("raceapex",math.huge)
		mcontroller.controlModifiers({
				runModifier = 1.25,
				jumpModifier = 1.25
			})
	end
	
	--Floran
	if world.entitySpecies(entity.id()) == "floran" then
		status.addEphemeralEffect("racefloran",math.huge)
	end
	
	--Hylotl
	if world.entitySpecies(entity.id()) == "hylotl" then
		status.addEphemeralEffect("racehylotl",math.huge)
		status.addEphemeralEffect("swimboost",math.huge)
	end
	
	--Glitch
	if world.entitySpecies(entity.id()) == "glitch" then
		status.addEphemeralEffect("raceglitch",math.huge)
		mcontroller.controlModifiers({
				runModifier = .90,
				jumpModifier = .75
			})
	end
	
	--Novakid
	if world.entitySpecies(entity.id()) == "novakid" then
		status.addEphemeralEffect("racenovakid",math.huge)
		status.addEphemeralEffect("xenonglow",math.huge)
	end
	

 -- if status.resourceLocked("energy") and status.resourcePercentage("energy") == 1 then
 --   animator.playSound("energyRegenDone")
 -- end


  local mouthPosition = vec2.add(mcontroller.position(), status.statusProperty("mouthPosition"))
  if status.statPositive("breathProtection") or world.breathable(mouthPosition) 
	or status.statPositive("waterbreathProtection") and world.liquidAt(mouthPosition) 
	then
    status.modifyResource("breath", status.stat("breathRegenerationRate") * dt)
  else
    status.modifyResource("breath", -status.stat("breathDepletionRate") * dt)
  end
  
  
  
	
end