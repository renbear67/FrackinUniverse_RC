function init()
	effect.addStatModifierGroup({
		{stat = "maxEnergy", amount = 50},
		{stat = "maxHealth", amount = 40},
		{stat = "breathDepletionRate", amount = -2.0}
	})
  self.movementParams = mcontroller.baseParameters()  
  
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(5)
  
  
  self.liquidMovementParameter = {
    liquidJumpProfile = {
      jumpHoldTime = 0.275
    }
  }  
end


function update(dt)
mcontroller.controlParameters(self.liquidMovementParameter)
end

function uninit()
  
end


