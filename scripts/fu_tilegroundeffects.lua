local oldtileMaterials = tileMaterials

function tileMaterials()
  oldtileMaterials()
  -- world.logInfo("fu_tilematerials")
  -- ["materialName"] = {{EphemeralEffects to apply},
  --  groundMovementModifier, runModifier, jumpModifier,      <-- mcontroller.controlModifiers
  --  normalGroundFriction, groundForce, slopeSlidingFactor,  <-- mcontroller.controlParameters 
  --  groundSoftness}
  -- ["anormaltile"] = {{},0,0,0,14,100,0,1}
  self.matCheck["mud"] = {{"fumudslow"},0,0,0,14,100,0,0.75}
  self.matCheck["clay"] = {{"fumudslow"},0,0,0,14,100,0,0.75}
  self.matCheck["sand"] = {{"jungleslow"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["redsand"] = {{"jungleslow"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["jungledirt2"] = {{"jungleslow"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["swampdirtff"] = {{"jungleslow"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["frozenwater"] = {{"iceslip"},0,0,0,14,100,0,1}
  self.matCheck["ice"] = {{"iceslip"},0,0,0,14,100,0,1}
  self.matCheck["iceblock"] = {{"iceslip"},0,0,0,14,100,0,1}
  self.matCheck["iceblock1"] = {{"iceslip"},0,0,0,14,100,0,1}
  self.matCheck["iceblock2"] = {{"iceslip"},0,0,0,14,100,0,1}
  self.matCheck["snow"] = {{"snowslow"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["slush"] = {{"slushslow"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["slime"] = {{"slimestick"},-0.5,-0.5,-0.25,12.0,20,0.2,0.75}
  self.matCheck["slime2"] = {{"slimestick"},-0.5,-0.5,-0.25,12.0,20,0.2,0.75}
  self.matCheck["magmatile"] = {{"burning"},0,0,0,14,100,0.0,1}
  self.matCheck["magmatile2"] = {{"burning"},0,0,0,14,100,0.0,1}
  self.matCheck["blackslime"] = {{"slimestick","weakpoison"},0,0,0,14,100,0.0,1}
  self.matCheck["spidersilkblock"] = {{"webstick"},0,0,0,14,100,0.0,0.5}
  self.matCheck["irradiatedtile"] = {{"radiationburn"},0,0,0,14,100,0.0,1}
  self.matCheck["irradiatedtile2"] = {{"radiationburn"},0,0,0,14,100,0.0,1}
  self.matCheck["irradiatedtile3"] = {{"radiationburn"},0,0,0,14,100,0.0,1}
  self.matCheck["protorock"] = {{"ffextremeradiation"},0,0,0,14,100,0.0,1}
  self.matCheck["bioblock"] = {{"regenerationminor"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["bioblock2"] = {{"regenerationminor"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["biodirt"] = {{"regenerationminor"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["metallic"] = {{"regenerationminor"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["asphalt"] = {{"regenerationminor"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["cloudblock"] = {{"lowgrav"},-0.15,-0.15,-0.15,14,100,0.0,1}
  self.matCheck["raincloud"] = {{"lowgrav"},-0.15,-0.15,-0.15,14,100,0.0,1}
end