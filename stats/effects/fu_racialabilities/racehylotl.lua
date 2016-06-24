function init()
	effect.addStatModifierGroup({
		{stat = "maxHealth", amount = 20},
		{stat = "waterbreathProtection", amount = 1},
		{stat = "perfectBlockLimit", amount = 2},
		{stat = "damageAbsorption", amount = 0.15}
	})  
  script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()
  
end