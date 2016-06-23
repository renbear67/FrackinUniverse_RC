function init()
  effect.addStatModifierGroup({ {stat = "gravrainImmunity", amount = 1} })
  self.gravityModifier = effect.configParameter("gravityModifier")
  self.movementParams = mcontroller.baseParameters()
  setGravityMultiplier()
end

function setGravityMultiplier()
  local oldGravityMultiplier = self.movementParams.gravityMultiplier or 1
  self.newGravityMultiplier = self.gravityModifier
end

function update(dt)
  mcontroller.controlParameters({
     gravityMultiplier = self.newGravityMultiplier
  })
end

function uninit()
  
end


--function init()
--    effect.addStatModifierGroup({ {stat = "gravrainImmunity", amount = 1} })
--    local bounds = mcontroller.boundBox()
--end
 
--function update()

--     self.newGravityMultiplier = status.resource("customGravity")
--     mcontroller.controlParameters({
--       gravityMultiplier = self.newGravityMultiplier
--     })
--end
-- 
--function unit()
--
--end


