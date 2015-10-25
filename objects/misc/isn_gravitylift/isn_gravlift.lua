function init()
  script.setUpdateDelta(1)
  self.tickTimer = 1
  self.pulseTimer = 0
  self.halfPi = math.pi / 2
  mcontroller.setYVelocity(0.0)
end

function update(dt)
  -- functionality
  local yvel = mcontroller.yVelocity()
  
  if yvel < 20 then mcontroller.setYVelocity(yvel + 10) end
  
  -- special fx
  self.tickTimer = self.tickTimer - dt
  if self.tickTimer <= 0 then self.tickTimer = 1 end
  self.pulseTimer = self.pulseTimer + dt * 2
  if self.pulseTimer >= math.pi then self.pulseTimer = self.pulseTimer - math.pi  end
  
  local pulseMagnitude = math.floor(math.cos(self.pulseTimer - self.halfPi) * 16) / 16
  effect.setParentDirectives(string.format("fade=CC00CC=%.3f?border=2;AA00FF%2x;00000000", (pulseMagnitude * 0.3 + 0.1), math.floor(pulseMagnitude * 70) + 10))
end

function uninit()
end
