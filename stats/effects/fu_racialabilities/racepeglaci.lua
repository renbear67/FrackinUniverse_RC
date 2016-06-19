function init()
effect.addStatModifierGroup({
		{stat = "liquidnitrogenImmunity", amount = 1},
		{stat = "biomecoldImmunity", amount = 1},
		{stat = "maxEnergy", amount = 50}
	})

  script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()
  
end