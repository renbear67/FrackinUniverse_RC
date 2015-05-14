function init()
  effect.setParentDirectives("border=2;003a0011;00000000")
  effect.addStatModifierGroup({
    {stat = "fireImmunity", amount = 1},
    {stat = "breathProtection", amount = 1},
    {stat = "slushslowImmunity", amount = 1},
    {stat = "iceslipImmunity", amount = 1},
    {stat = "fumudslowImmunity", amount = 1},
    {stat = "snowslowImmunity", amount = 1}
  })
end

function update(dt)
end

function uninit()
  
end