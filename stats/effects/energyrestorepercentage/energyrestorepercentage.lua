function init()

	self.restorepercentage = effect.configParameter("energyrestore") or 0.5
	status.modifyResourcePercentage("energy", self.restorepercentage)
	
end