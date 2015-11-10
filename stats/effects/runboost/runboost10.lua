function init()
  local bounds = mcontroller.boundBox()
end

function update(dt)
  mcontroller.controlModifiers({
      runModifier = 0.10
    })
end

function uninit()
  
end