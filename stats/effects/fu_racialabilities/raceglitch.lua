function init()
  effect.addStatModifierGroup({
			{stat = "protection", amount = 10},
			{stat = "breathProtection", amount = 1},
			{stat = "poisonImmunity", amount = 1},
			{stat = "beestingImmunity", amount = 1}
		})
  script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()
  
end