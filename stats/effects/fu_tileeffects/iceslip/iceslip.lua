function init()
  animator.setParticleEmitterOffsetRegion("snow", mcontroller.boundBox())
  animator.setParticleEmitterActive("snow", true)
end

function update(dt)
  mcontroller.controlParameters({
        normalGroundFriction = 0.5,
        groundForce = 21.3,
        slopeSlidingFactor = 0.42
    })
end

function uninit()

end