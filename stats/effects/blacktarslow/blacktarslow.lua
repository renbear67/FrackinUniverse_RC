function init()
  animator.setParticleEmitterOffsetRegion("drips", mcontroller.boundBox())
  animator.setParticleEmitterActive("drips", true)
  effect.setParentDirectives("fade=300030=0.8")

  local slows = status.statusProperty("slows", {})
  slows["tarslow"] = 0.65
  status.setStatusProperty("slows", slows)
end

function update(dt)
  mcontroller.controlModifiers({
      groundMovementModifier = -0.7,
      runModifier = -0.75,
      jumpModifier = -0.75
    })
end

function uninit()
  local slows = status.statusProperty("slows", {})
  slows["tarslow"] = nil
  status.setStatusProperty("slows", slows)
end