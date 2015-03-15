function init()
  animator.setParticleEmitterOffsetRegion("shieldspark", mcontroller.boundBox())
  animator.setParticleEmitterActive("shieldspark", true)
  effect.setParentDirectives("fade=000000=0.15")

  script.setUpdateDelta(5)

  self.tickDamagePercentage = 0.01
  self.tickTime = 1.2
  self.tickTimer = self.tickTime
end

function update(dt)
  mcontroller.controlParameters({
      normalLiquidFriction = 0
    })
  mcontroller.controlModifiers({
      groundMovementModifier = -0.1,
      runModifier = -0.05,
      jumpModifier = -0.05
    })

  self.tickTimer = self.tickTimer - dt
  if self.tickTimer <= 0 then
    self.tickTimer = self.tickTime
    status.applySelfDamageRequest({
        damageType = "IgnoresDef",
        damage = math.floor(status.resourceMax("health") * self.tickDamagePercentage) + 1,
        damageSourceKind = "nitrogenweapon",
        sourceEntityId = entity.id()
      })
  end
  
end

function uninit()

end