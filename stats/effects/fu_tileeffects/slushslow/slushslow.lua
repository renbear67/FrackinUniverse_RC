function init()
  local slows = status.statusProperty("slows", {})
  slows["slushslow"] = 0.3
  status.setStatusProperty("slows", slows)
end

function update(dt)
      mcontroller.controlParameters({
        normalGroundFriction = 1,
        groundForce = 20,
        slopeSlidingFactor = 0.2
        })
  mcontroller.controlModifiers({
        groundMovementModifier = -0.3,
        runModifier = -0.3,
        jumpModifier = -0.3
    })
end

function uninit()
  local slows = status.statusProperty("slows", {})
  slows["slushslow"] = nil
  status.setStatusProperty("slows", slows)
end





