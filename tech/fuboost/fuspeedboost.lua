function init()
  self.doubleTapTimer = 0
  self.inputUp = false
  self.regenerate = false

  local boundBox = mcontroller.boundBox()
  tech.setParticleEmitterOffsetRegion("healing", boundBox)
end

function input(args)

  self.doubleTapTimer = self.doubleTapTimer - args.dt

  if args.moves["up"] then
    if not self.inputUp then
      if self.doubleTapTimer > 0 then
        self.inputUp = true
        return "regenerate"
      else
        self.doubleTapTimer = tech.parameter("maxDoubleTapTime")
      end
    end
    self.inputUp = true
  else
    self.inputUp = false
  end

  for moveName,move in pairs(args.moves) do
    if moveName ~= "up" and moveName ~= "run" and moveName ~= "special" and move then
      self.regenerate = false
    end
  end
end

function update(args)
  local energyUsageRate = tech.parameter("energyUsageRate")
  local regenerationTime = tech.parameter("regenerationTime")

  if (self.regenerate or args.actions["regenerate"]) and status.resourcePercentage("health") ~= 1 and self.inputUp and tech.consumeTechEnergy(energyUsageRate * args.dt) then
    self.regenerate = true
    status.modifyResource("health", status.stat("maxHealth") / regenerationTime * args.dt)
    tech.setParentDirectives("border=3;FF000033;00000000")
    tech.setParticleEmitterActive("healing", true)
    tech.setAnimationState("regen", "on")
  else
    self.regenerate = false
    tech.setParentDirectives("")
    tech.setParticleEmitterActive("healing", false)
    tech.setAnimationState("regen", "off")
  end
end
