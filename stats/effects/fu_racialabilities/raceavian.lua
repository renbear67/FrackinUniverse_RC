function init()
  self.powerModifier = effect.configParameter("powerModifier", 0)
  effect.addStatModifierGroup({{stat = "powerMultiplier", baseMultiplier = self.powerModifier}})
  effect.addStatModifierGroup({{stat = "fallDamageMultiplier", effectiveMultiplier = 0.5}})
  self.movementParams = mcontroller.baseParameters()  
  
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(5)

  self.liquidMovementParameter = {
    airForce = 34,
    airJumpProfile = {
      jumpSpeed = 35.5,
      jumpControlForce = 420.0
    }
  }  
end

function update(dt)
mcontroller.controlParameters(self.liquidMovementParameter)
end

function uninit()
  
end


