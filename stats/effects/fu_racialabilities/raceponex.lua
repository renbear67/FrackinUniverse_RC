function init()
	effect.addStatModifierGroup({
		{stat = "beestingImmunity", amount = 1}
	})  
  local bounds = mcontroller.boundBox()	
  script.setUpdateDelta(0)
end

function update(dt)
		mcontroller.controlModifiers({
				runModifier = 1.25
			})
end

function uninit()
  
end