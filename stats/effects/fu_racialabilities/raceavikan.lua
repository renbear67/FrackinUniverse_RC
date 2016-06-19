function init()
effect.addStatModifierGroup({
		{stat = "fireImmunity", amount = 1},
		{stat = "biomeheatImmunity", amount = 1},
		{stat = "maxHealth", amount = 20}
	})

  script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()
  
end