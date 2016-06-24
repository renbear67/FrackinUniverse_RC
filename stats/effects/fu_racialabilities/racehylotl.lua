require("/scripts/vec2.lua")
function init()
    inWater=0
	effect.addStatModifierGroup({
		{stat = "maxHealth", amount = 20},
		{stat = "waterbreathProtection", amount = 1},
		{stat = "wetImmunity", amount = 1},
		{stat = "perfectBlockLimit", amount = 2},
		{stat = "protection", amount = 5}
	})  
--script.setUpdateDelta(5)	
  script.setUpdateDelta(0)
end


--function isDry()
--local mouthPosition = vec2.add(mcontroller.position(), status.statusProperty("mouthPosition"))
--	if not world.liquidAt(mouthPosition) then
--	
--	     effect.addStatModifierGroup({
--		{stat = "protection", amount = 0}   --this needs to be hard-set to their original value instead of statmod
--	    })
--	    self.protection=0
--	    inWater = 0
--	end
--end

function update(dt)
--local mouthPosition = vec2.add(mcontroller.position(), status.statusProperty("mouthPosition"))
--	if world.liquidAt(mouthPosition) and inWater == 0 then
--	     effect.addStatModifierGroup({
--		{stat = "protection", amount = 20}
--	    })
--	    inWater = 1
--	else
--	  isDry()
--        end  
end

function uninit()
  
end