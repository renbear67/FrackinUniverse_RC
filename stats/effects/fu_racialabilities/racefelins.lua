function init()
effect.addStatModifierGroup({
		{stat = "insanityImmunity", amount = 1}
	})
  self.powerModifier = effect.configParameter("powerModifier", 0)
  effect.addStatModifierGroup({{stat = "powerMultiplier", baseMultiplier = self.powerModifier}})
  script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()
  
end