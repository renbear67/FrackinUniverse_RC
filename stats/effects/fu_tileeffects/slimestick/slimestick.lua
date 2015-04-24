function init()

end

function update(dt)
  mcontroller.controlParameters({
        normalGroundFriction = 7,
        groundForce = 70,
        slopeSlidingFactor = 0.1,
        bounceFactor = 0.35
    })
end

function uninit()

end