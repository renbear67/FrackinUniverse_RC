function init(virtual)
	if virtual == true then return end
	
	if storage.currentstoredpower == nil then storage.currentstoredpower = 0 end
	if storage.powercapacity == nil then storage.powercapacity = entity.configParameter("isn_batteryCapacity") end
	if storage.voltage == nil then storage.voltage = entity.configParameter("isn_batteryVoltage") end
	if storage.active == nil then storage.active = true end
end

function update(dt)
	local powerlevel = isn_getXPercentageOfY(storage.currentstoredpower,storage.powercapacity)
	if powerlevel ~= 0 then powerlevel = powerlevel / 10 end			-- why a separate statement?
	powerlevel = isn_numericRange(powerlevel,0,10)
	entity.setAnimationState("meter", tostring(math.floor(powerlevel)))
	
	local powerinput = isn_getCurrentPowerInput(true)
	if powerinput >= 1 then
		storage.currentstoredpower = storage.currentstoredpower + powerinput
	end
		
	local poweroutput = isn_getCurrentPowerOutputUsage()
	if poweroutput > 0 then
		storage.currentstoredpower = storage.currentstoredpower - poweroutput 
	end
end

function isn_getCurrentPowerOutputUsage()
	if storage.active == false then return 0 end
	if storage.currentstoredpower <= 0 then return 0 end
	local actives = isn_countPowerActiveDevicesConnectedOnOutboundNode(0)
	local potentials = isn_countPowerDevicesConnectedOnOutboundNode(0)
	if actives == 0 then return 0 end
	local totalusage = storage.voltage / potentials * actives
	return totalusage
end

function isn_getCurrentPowerOutput(divide)
	if storage.active == false then return 0 end
	if storage.currentstoredpower <= 0 then return 0 end
	local divisor = isn_countPowerDevicesConnectedOnOutboundNode(0)
	
	if divisor < 1 then return 0 end
	if divide == true then return storage.voltage / divisor
	else return storage.voltage end
end

function onNodeConnectionChange()
	if isn_checkValidOutput() == true then entity.setOutboundNodeLevel(0, true)
	else entity.setOutboundNodeLevel(0, false) end
end

function onInboundNodeChange(args)
	if entity.isInboundNodeConnected(1) then
		if entity.getInboundNodeLevel(1) == true then storage.active = true
		else storage.active = false
		end
	else storage.active = true
	end
end