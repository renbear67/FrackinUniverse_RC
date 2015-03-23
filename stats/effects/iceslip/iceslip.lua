function init()
  animator.setParticleEmitterOffsetRegion("iceslip", mcontroller.boundBox())
  animator.setParticleEmitterActive("iceslip", true)
end

function update(dt)
  mcontroller.controlParameters({
      normalGroundFriction = 0.7
    })
end

function uninit()

end