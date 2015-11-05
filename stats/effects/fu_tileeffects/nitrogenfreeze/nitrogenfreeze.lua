function init()
  animator.setParticleEmitterOffsetRegion("snow", mcontroller.boundBox())
  animator.setParticleEmitterActive("snow", true)
  
  script.setUpdateDelta(5)

  self.tickDamagePercentage = 0.01
  self.tickTime = 0.7
  self.tickTimer = self.tickTime
end

function update(dt)
  mcontroller.controlModifiers({
        normalGroundFriction = 0.52,
        groundForce = 23.5,
        slopeSlidingFactor = 0.375,  
        groundMovementModifier = -0.4,
        runModifier = -0.32,
        jumpModifier = -0.15
    })

  mcontroller.controlParameters({
      normalGroundFriction = 0.675
    })
    
  self.tickTimer = self.tickTimer - dt
  if self.tickTimer <= 0 then
    self.tickTimer = self.tickTime
    status.applySelfDamageRequest({
        damageType = "IgnoresDef",
        damage = math.floor(status.resourceMax("health") * self.tickDamagePercentage) + 2,
        damageSourceKind = "nitrogenweapon",
        sourceEntityId = entity.id()
      })
  end

  effect.setParentDirectives("fade=66FFFF="..self.tickTimer * 0.4)
end

function uninit()

end