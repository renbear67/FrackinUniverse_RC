function init()
 --Power
  self.powerModifier = effect.configParameter("powerModifier", 0)
  effect.addStatModifierGroup({{stat = "powerMultiplier", baseMultiplier = self.powerModifier}})
end


function update(dt)

end

function uninit()

end
