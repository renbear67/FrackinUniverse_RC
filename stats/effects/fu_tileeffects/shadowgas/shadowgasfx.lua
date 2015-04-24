function init()
  local bounds = mcontroller.boundBox()
  animator.setParticleEmitterOffsetRegion("shadowgaseffect", mcontroller.boundBox())
  animator.setParticleEmitterActive("shadowgaseffect", true)
  effect.setParentDirectives("fade=000000=0.15")

  script.setUpdateDelta(5)
  self.tickDamagePercentage = 0.01
  self.tickTime = 1.2
  self.tickTimer = self.tickTime
  
  
  self.liquidMovementParameter = {
    groundForce = 100,
    airForce = 20,
    liquidForce = 30,
    liquidFriction = 0.0,
    liquidImpedance = 0.5,
    minimumLiquidPercentage = 0.5,
    liquidJumpProfile = {
      jumpSpeed = 30.0,
      jumpControlForce = 900.0,
      jumpInitialPercentage = 0.75,
      jumpHoldTime = 0.2,
      multiJump = false,
      reJumpDelay = 0.05,
      autoJump = false,
      collisionCancelled = true 
    }
  }  
end



  

function update(dt)
mcontroller.controlParameters(self.liquidMovementParameter)

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