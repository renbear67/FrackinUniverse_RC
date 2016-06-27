function init()
effect.addStatModifierGroup({
		{stat = "snowslowImmunity", amount = 1},
		{stat = "slushslowImmunity", amount = 1},
		{stat = "biomecoldImmunity", amount = 1},
		{stat = "breathDepletionRate", amount = 3.25}
	})
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(0)
end

function update(dt)
	mcontroller.controlModifiers({
			runModifier = 1.16,
			jumpModifier = 1.08
		})
end

function uninit()
  
end