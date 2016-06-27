function init()
effect.addStatModifierGroup({
		{stat = "slimestickImmunity", amount = 1},
		{stat = "slimefrictionImmunity", amount = 1}
	})
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(0)
end

function update(dt)
		mcontroller.controlModifiers({
				runModifier = 1.10
			})
end

function uninit()
  
end