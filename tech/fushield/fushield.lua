function init()
   effect.addStatModifierGroup({{stat = "protection", amount = effect.configParameter("defenseAmount", 0)}})
  self.inputDown = false

  if status.resource("shieldHealth") > 0 then
    tech.setAnimationState("shield", "on")
    self.active = true
  else
    tech.setAnimationState("shield", "fulloff")
    self.active = false
  end
end

function input(args)
  if args.moves["special"] == 1 then
    return "shield"
  end
end

function update(args)
  local shieldDuration = tech.parameter("shieldDuration")

  if not self.active and args.actions["shield"] and tech.consumeTechEnergy(tech.parameter("energyUsage")) then
    status.addEphemeralEffects{{effect = "techshield", duration = shieldDuration}}
    tech.playSound("activate")
    self.active = true
  end

  if status.resource("shieldHealth") <= 0 then
    self.active = false
  end
end
