function init()
  local bounds = mcontroller.boundBox()
	effect.addStatModifierGroup({
		{stat = "maxHealth", amount = 40},
		{stat = "waterbreathProtection", amount = 1}
	})    
  script.setUpdateDelta(5)
  self.liquidMovementParameter = {
    liquidForce = 80,
    liquidFriction = 2.25
  }  
end

function update(dt)
mcontroller.controlParameters(self.liquidMovementParameter)
  
end

function uninit()

end
