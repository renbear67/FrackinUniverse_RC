function init()
	effect.addStatModifierGroup({
	{stat = "lightregen", amount = 1},
	{stat = "lightregenenergy", amount = 1},
	{stat = "maxHealth", amount = 5},
	{stat = "MaxEnergy", amount = 15}
	})
	script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()
  
end