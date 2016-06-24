function init()
effect.addStatModifierGroup({
		{stat = "snowslowImmunity", amount = 1},
		{stat = "slushslowImmunity", amount = 1},
		{stat = "biomecoldImmunity", amount = 1}
	})
  script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()
  
end