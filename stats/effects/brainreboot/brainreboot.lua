function update(dt)
end

function heal(damage)
end

function selfDamage(notification) --take damage
    if (status.resourcePercentage("health") <= 0.15) then --checks health level, change 0.1 to whatever below 1
    effect.expire()
    animator.setParticleEmitterOffsetRegion("healing", mcontroller.boundBox())
    animator.setParticleEmitterActive("healing", true)
    status.modifyResource("health", notification.damage / 2)
    status.clearPersistentEffects("brainreboot")
    --cleanup - removes itself after use
    end
end

function clear()
end