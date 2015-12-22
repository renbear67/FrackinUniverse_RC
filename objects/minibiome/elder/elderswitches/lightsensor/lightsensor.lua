function init()
  self.detectThresholdHigh = config.getParameter("detectThresholdHigh")
  self.detectThresholdLow = config.getParameter("detectThresholdLow")
end

function getSample()
  local sample = world.lightLevel(object.position())
  return math.floor(sample * 1000) * 0.1
end

function update(dt)
  local sample = getSample()

  if sample >= self.detectThresholdLow then
    object.setOutboundNodeLevel(0, true)
    animator.setAnimationState("sensorState", "med")
  else
    object.setOutboundNodeLevel(0, false)
    animator.setAnimationState("sensorState", "min")
  end

  if sample >= self.detectThresholdHigh then
    object.setOutboundNodeLevel(1, true)
    animator.setAnimationState("sensorState", "max")
  else
    object.setOutboundNodeLevel(1, false)
  end
end
