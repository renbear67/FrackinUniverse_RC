function init()
  animator.setParticleEmitterOffsetRegion("healing", mcontroller.boundBox())
  animator.setParticleEmitterEmissionRate("healing", effect.configParameter("emissionRate", 3))
  animator.setParticleEmitterActive("healing", true)
  status.removeEphemeralEffect("bleeding05")
end

function update(dt)
end

function uninit()
  
end