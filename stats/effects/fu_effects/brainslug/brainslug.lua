function init()
  animator.setParticleEmitterOffsetRegion("slug", mcontroller.boundBox())
  animator.setParticleEmitterActive("slug", true)
end

function update(dt)
  mcontroller.controlParameters({
        gravityMultiplier = 1.0,
        airForce = 40.0,
        groundForce = 23.5,
        slopeSlidingFactor = 0.375,
        runSpeed = 20.0,
      airJumpProfile = {
        jumpSpeed = 36.0,
        jumpControlForce = 1000.0,
        jumpInitialPercentage = 1.0
      },
    })
end

function uninit()

end
