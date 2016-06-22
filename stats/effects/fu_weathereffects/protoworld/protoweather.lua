-- proto worlds cause a status effect that increases your overall energy but
-- lowers your Max HP by a percentage based on the weather. This is largely
-- randomized values

function init()
  script.setUpdateDelta(5)

  animator.setParticleEmitterOffsetRegion("coldbreath", mcontroller.boundBox())
  animator.setParticleEmitterActive("coldbreath", true)
  
  --config --
  biomeDay = effect.configParameter("biomeDay",0)
  biomeNight = effect.configParameter("biomeNight",0)
  biomeRate = effect.configParameter("biomeDmgPerTick",0)
  biomeDmg = math.random(biomeDay, biomeNight)
  biomeCheck = biomeDmg
  
  world.setProperty ("biomeEffect", biomeTemp)
  world.setProperty ("biomemainRate", biomeRate)
  biomeTimer = 10
  biomeDate = world.day()
  biomeTimerRV = 30
  
  effect.setParentDirectives("fade=ffea00=0.357")
end
  
  
function update(dt)
	--Checks if Day has changed to set new temperature values--
	
	
	-- we apply the effect here
	biomeTimer = biomeTimer - dt
      if biomeTimer <= 0 then
        biomeTimer = 10
        status.applySelfDamageRequest({
        damageType = "IgnoresDef",
        damage = math.floor(status.resourceMax("health") * biomeDmg) + 2,
        damageSourceKind = "nitrogenweapon",
        sourceEntityId = entity.id()
      })
      
	end	
	
	
end

function uninit()

end