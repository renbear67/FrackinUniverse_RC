function init()
  effect.addStatModifierGroup({
	{stat = "fumudslowImmunity", amount = 1},
	{stat = "jungleslowImmunity", amount = 1}
  })
	
  _x = effect.configParameter("healthDown", 0)
  baseValue = effect.configParameter("healthDown",0)*(status.resourceMax("health"))

  if (status.resourceMax("health")) * _x >= 100.0 then
     effect.addStatModifierGroup({{stat = "maxHealth", amount = baseValue }})
     else
     effect.addStatModifierGroup({{stat = "maxHealth", amount = baseValue }})
  end
  
  script.setUpdateDelta(0)
  
end

function update(dt)

end

function uninit()
  
end