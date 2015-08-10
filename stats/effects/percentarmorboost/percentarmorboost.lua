function init()
  script.setUpdateDelta(5)
  _x = effect.configParameter("healthDown", 0)
  baseValue = effect.configParameter("healthDown",0)*(status.resource("protection"))
  if (status.resource("protection")) >= 10
  effect.addStatModifierGroup({{stat = "protection", amount = baseValue }})
  else
  effect.addStatModifierGroup({{stat = "protection", amount = 1 }})
  endif
end


function update(dt)

end


function uninit()
  
end