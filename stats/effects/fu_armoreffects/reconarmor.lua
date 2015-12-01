function init()
  script.setUpdateDelta(5)
end

function update(dt)
  mcontroller.controlModifiers({
    groundMovementModifier = 1.26,
	runModifier = 1.26,
	jumpModifier = 1.17
  })
end

function uninit()

end
