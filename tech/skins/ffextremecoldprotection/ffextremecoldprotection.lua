function init()
  status.setPersistentEffects("ffextremecoldprotectionTech", {{stat = "ffextremecoldImmunity", amount = 1},{stat = "nitrogenfreezeImmunity", amount = 1}, {stat = "breathProtection", amount = 1}})
end

function input(args)
  return nil
end

function uninit()
  status.clearPersistentEffects("ffextremecoldprotectionTech")
end