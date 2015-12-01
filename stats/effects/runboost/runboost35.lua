function init()
  local bounds = mcontroller.boundBox()
end

function update(dt)
  mcontroller.controlModifiers({
      runModifier = 0.55
    })
end

function uninit()
  
end