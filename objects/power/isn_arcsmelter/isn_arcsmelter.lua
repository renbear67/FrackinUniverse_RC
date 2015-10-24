function init(virtual)
	if virtual == true then return end
	
	entity.setInteractive(true)
	
	storage.currentinput = nil
	storage.currentoutput = nil
	storage.bonusoutputtable = nil
end

function update(dt)
	if isn_hasRequiredPower() == false then
		entity.setAnimationState("furnaceState", "idle")
		return
	end
	
	if oreCheck() == false then 
		entity.setAnimationState("furnaceState", "idle")
		return
	end
	
	if storage.currentoutput == nil or clearSlotCheck(storage.currentoutput) == false then
		entity.setAnimationState("furnaceState", "idle")
		return
	end
	
	entity.setAnimationState("furnaceState", "active")
	
	if world.containerAvailable(entity.id(), {name = storage.currentinput, count = 1, data={}}) ~= nil then
		if math.random(1,3) ~= 1 then
			world.containerConsume(entity.id(), {name = storage.currentinput, count = 1, data={}})
		end
		if hasBonusOutputs(storage.currentinput) == true then
			if storage.bonusoutputtable == nil then return end 
				for key, value in pairs(storage.bonusoutputtable) do
					if clearSlotCheck(key) == false then break end
					if math.random(1,100) <= value then
						world.containerAddItems(entity.id(), {name = key, count = 1, data={}})
					end
			end
		end
		world.containerAddItems(entity.id(), {name = storage.currentoutput, count = 1, data={}})
	end
end

function oreCheck()
	local contents = world.containerItems(entity.id())
	storage.currentoutput = nil
	
	if contents[1] == nil then return false end
	if contents[1].name == currentinput then return true end
	
	for key, value in pairs(entity.configParameter("inputsToOutputs")) do
		if key == contents[1].name then
			storage.currentinput = key
			storage.currentoutput = value
			return true
		end
	end
	return false
end

function clearSlotCheck(checkname)
	if world.containerItemsCanFit(entity.id(), {name= checkname, count=1, data={}}) > 0 then
		return true
	end
	return false
end

function hasBonusOutputs(checkname)
	local contents = world.containerItems(entity.id())
	if contents[1] == nil then return false end
	
	for key, value in pairs(entity.configParameter("bonusOutputs")) do
		if key == contents[1].name then
			storage.bonusoutputtable = value
			return true
		end
	end
	return false
end