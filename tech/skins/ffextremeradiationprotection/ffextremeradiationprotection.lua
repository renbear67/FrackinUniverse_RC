function init()
  status.setPersistentEffects("ffextremeradiationprotectionTech", {{stat = "ffextremeradiationImmunity", amount = 1}})
end

function input(args)
  return nil
end

function uninit()
  status.clearPersistentEffects("ffextremeradiationprotectionTech")
end