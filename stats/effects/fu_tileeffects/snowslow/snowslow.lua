function init()
  local slows = status.statusProperty("slows", {})
  slows["snowslow"] = 0.53
  status.setStatusProperty("slows", slows)
end

function update(dt)
  mcontroller.controlModifiers({
        groundMovementModifier = -0.53,
        runModifier = -0.53,
        jumpModifier = -0.53
    })
end

function uninit()
  local slows = status.statusProperty("slows", {})
  slows["snowslow"] = nil
  status.setStatusProperty("slows", slows)
end





