function init()
  effect.addStatModifierGroup({
			{stat = "breathProtection", amount = 1},
			{stat = "biomeradiationImmunity", amount = 1},
			{stat = "fireImmunity", amount = 1}
		})
		
	script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()
  
end