function init(virtual)
	if virtual == true then return end
end

function update(dt)
	isn_projectileAllInRectangle("isn_gravlift",entity.position(),4,12)
end