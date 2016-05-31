function init()
  local bounds = mcontroller.boundBox()
  effect.setParentDirectives("fade=000000=0.15")
  self.healingRate = 1.05 / effect.configParameter("healTime", 60)
  script.setUpdateDelta(5)
end


function activateVisualEffects()
  local lightLevel = getLight()
  if lightLevel <= 25 then
    animator.setParticleEmitterOffsetRegion("blood", mcontroller.boundBox())
    animator.setParticleEmitterActive("blood", true)  
  end

end
  
function getLight()
  local position = mcontroller.position()
  position[1] = math.floor(position[1])
  position[2] = math.floor(position[2])
  local lightLevel = world.lightLevel(position)
  lightLevel = math.floor(lightLevel * 100)
  return lightLevel
end

function update(dt)
  local lightLevel = getLight()
  if lightLevel <= 25 then
    self.healingRate = 1.005 / effect.configParameter("healTime", 60)
    status.modifyResourcePercentage("health", self.healingRate * dt)
    --activateVisualEffects()
  end
end

function uninit()

end