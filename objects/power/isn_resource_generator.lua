function init(args)
  entity.setInteractive(true)
end

function update(dt)
  if isn_hasRequiredPower() == false then
    entity.setAnimationState("machineState", "idle")
	return
  end
  
  if world.liquidAt(entity.position()) == true and entity.configParameter("isn_liquidCollector") == false then return end
  
  entity.setAnimationState("machineState", "active")
  
  local output = nil
  local rarityroll = math.random(1,100)
  if rarityroll == 100 then
    output = entity.randomizeParameter("rareOutputs")
  elseif rarityroll >= 79 then
    output = entity.randomizeParameter("uncommonOutputs")
  else
    output = entity.randomizeParameter("commonOutputs")
  end
  
  if output == nil or clearSlotCheck(output) == false then return end
  
  world.containerAddItems(entity.id(), {name = output, count = 1, data={}})
end

function clearSlotCheck(checkname)
	if world.containerItemsCanFit(entity.id(), {name= checkname, count=1, data={}}) > 0 then
		return true
	end
	return false
end