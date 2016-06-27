function init()
  local bounds = mcontroller.boundBox()
	effect.addStatModifierGroup({
		{stat = "biomeradiationImmunity", amount = 1},
		{stat = "fireImmunity", amount = 1}
	})    
  script.setUpdateDelta(5)
  self.liquidMovementParameter = {
    maxMovementPerStep=1.0,
    gravityMultiplier=1.32
  }  
end

function update(dt)
mcontroller.controlParameters(self.liquidMovementParameter)
  
end

function uninit()

end
