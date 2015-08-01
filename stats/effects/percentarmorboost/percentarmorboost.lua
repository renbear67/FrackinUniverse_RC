function init()
  script.setUpdateDelta(5)
  _x = effect.configParameter("healthDown", 0)
  baseValue = effect.configParameter("healthDown",0)*(status.resourceMax("health"))
    effect.addStatModifierGroup({{stat = "protection", amount = baseValue }})
end


function update(dt)

end


function uninit()
  
end