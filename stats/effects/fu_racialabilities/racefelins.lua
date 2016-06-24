function init()
effect.addStatModifierGroup({
	{stat = "insanityImmunity", amount = 1},
	{stat = "breathDepletionRate", amount = 3.25}
	})
  self.powerModifier = effect.configParameter("powerModifier", 0)
  effect.addStatModifierGroup({{stat = "powerMultiplier", baseMultiplier = self.powerModifier}})
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(0)
end

function update(dt)
	mcontroller.controlModifiers({
			runModifier = 1.10,
			jumpModifier = 1.20
		})
end

function uninit()
  
end