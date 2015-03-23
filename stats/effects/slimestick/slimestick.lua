function init()
  animator.setParticleEmitterOffsetRegion("poisondrips", mcontroller.boundBox())
  animator.setParticleEmitterActive("poisondrips", true)
  effect.setParentDirectives("fade=005500=0.5")
end

function update(dt)
  mcontroller.controlParameters({
      normalGroundFriction = 7.0,
      bounceFactor = 0.25
    })
end

function uninit()

end