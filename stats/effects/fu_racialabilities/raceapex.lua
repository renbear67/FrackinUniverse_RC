function init()
  effect.addStatModifierGroup({
	{stat = "fumudslowImmunity", amount = 1},
	{stat = "jungleslowImmunity", amount = 1}
  })
	
 
  baseValue = effect.configParameter("healthDown",0)*(status.resourceMax("health"))
  effect.addStatModifierGroup({{stat = "maxHealth", amount = baseValue }})
  

  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(0)
  
end

function update(dt)
		mcontroller.controlModifiers({
				runModifier = 1.08,
				jumpModifier = 1.10
			})
end

function uninit()
  
end