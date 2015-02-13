function init()
  status.setPersistentEffects("ffextremeheatprotectionTech", {{stat = "ffextremeheatImmunity", amount = 1}, {stat = "breathProtection", amount = 1}})
end

function input(args)
  return nil
end

function uninit()
  status.clearPersistentEffects("ffextremeheatprotectionTech")
end