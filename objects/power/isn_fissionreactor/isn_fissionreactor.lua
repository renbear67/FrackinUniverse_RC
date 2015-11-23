function init(virtual)
	if virtual == true then return end
	entity.setInteractive(true)
	
	if storage.radiation == nil then storage.radiation = 0 end
	if storage.active == nil then storage.active = true end
end

function onInboundNodeChange(args)
	if entity.isInboundNodeConnected(0) then
		if entity.getInboundNodeLevel(0) == true then storage.active = true
		else storage.active = false
		end
	else storage.active = true
	end
end

function update(dt)
	if storage.radiation >= 100 then
		entity.setAnimationState("hazard", "danger")
	elseif storage.radiation >= 40 then
		entity.setAnimationState("hazard", "warn")
	else
		entity.setAnimationState("hazard", "safe")
	end

	if storage.active == false then
		storage.radiation = storage.radiation - 5
		storage.radiation = isn_numericRange(storage.radiation,0,100)
		entity.setAnimationState("screen", "off")
		return
	end
	
	if isn_slotDecayCheck(0,5) == true then isn_doSlotDecay(1) end
	if isn_slotDecayCheck(1,5) == true then isn_doSlotDecay(2) end
	if isn_slotDecayCheck(2,5) == true then isn_doSlotDecay(3) end
	if isn_slotDecayCheck(3,5) == true then isn_doSlotDecay(4) end
	
	local power = isn_getCurrentPowerOutput(false)
	if power > 0 then entity.setAnimationState("screen", "on") end
	
	local rads = -4
	rads = rads + power
	if rads > 0 then rads = rads * 2 end
	local waste =  world.containerAvailable(entity.id(),"toxicwaste")
	if waste >= 75 then
		rads = rads + 5
	end
	storage.radiation = storage.radiation + rads
	storage.radiation = isn_numericRange(storage.radiation,0,100)
	
	if storage.radiation >= 100 then
		isn_projectileAllInRange("isn_fissionrads",10)
	end
end

function isn_powerSlotCheck(slotnum)
	local contents = world.containerItems(entity.id())
	local slotContent = world.containerItemAt(entity.id(),slotnum)
	
	if slotContent == nil then return 0 end
	if slotContent.name == "biofuelcannister" then return 1
	elseif slotContent.name == "biofuelcannisteradv" then return 2
	elseif slotContent.name == "biofuelcannistermax" then return 3
	elseif slotContent.name == "uraniumrod" then return 2
	elseif slotContent.name == "enricheduranium" then return 3
	elseif slotContent.name == "plutoniumrod" then return 3
	elseif slotContent.name == "enrichedplutonium" then return 4
	elseif slotContent.name == "solariumstar" then return 4
	elseif slotContent.name == "ultronium" then return 5
	else return 0 end
end

function isn_slotDecayCheck(slot, chance)
	local contents = world.containerItems(entity.id())
	local slotContent = world.containerItemAt(entity.id(),slot)
	
	if slotContent == nil then return false end
	
	if slotContent.name == "biofuelcannister" or slotContent.name == "biofuelcannisteradv" or slotContent.name == "biofuelcannistermax" then
		if math.random(1,60) <= chance then return true end
	end
	
	if slotContent.name == "uraniumrod" or slotContent.name == "plutoniumrod" then
		if math.random(1,80) <= chance then return true end
	end	
	
	if slotContent.name == "solariumstar" or slotContent.name == "enricheduranium" or slotContent.name == "enrichedplutonium" or slotContent.name == "ultronium" then
		if math.random(1,100) <= chance then return true end
	end	
	
	return false
end

function isn_doSlotDecay(slot)
	world.containerConsumeAt(entity.id(),slot,1)
	local waste = world.containerItemAt(entity.id(),5)
	if waste ~= nil then
		if waste.name ~= "toxicwaste" then
			storage.radiation = storage.radiation + 5
		end
	end
	
	local wastestack
	if waste == nil then
		wastestack = world.containerAddItems(entity.id(),{name = "toxicwaste", count = 1, data={}})
	elseif waste.name == "toxicwaste" then
		wastestack = world.containerStackItems(entity.id(),{name = "toxicwaste", count = 1, data={}})
	end
	
	if wastestack ~= nil then
		storage.radiation = storage.radiation + 5
	end
end

function isn_getCurrentPowerOutput(divide)
	if storage.active == false then return 0 end
	
	local divisor = isn_countPowerDevicesConnectedOnOutboundNode(0)
	if divisor < 1 then divisor = 1 end
	
	local powercount = 0
	powercount = powercount + isn_powerSlotCheck(0)
	powercount = powercount + isn_powerSlotCheck(1)
	powercount = powercount + isn_powerSlotCheck(2)
	powercount = powercount + isn_powerSlotCheck(3)
	
	if divide == true then return powercount / divisor
	else return powercount end
end

function onNodeConnectionChange()
	if isn_checkValidOutput() == true then entity.setOutboundNodeLevel(0, true)
	else entity.setOutboundNodeLevel(0, false) end
end