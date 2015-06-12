local recipes =
{
-- basic materials
{inputs = {"glassmaterial", "rawminerals", "nutrientpaste" }, outputs = { "mineralsample" }, time = 6},
{inputs = {"glassmaterial", "geneticmaterial", "tissueculture" }, outputs = { "dnasample" }, time = 6},
{inputs = {"mineralsample", "dnasample", "biochipbase" }, outputs = { "biochip" }, time = 6},
{inputs = {"glassmaterial", "protocitebar", "dnasample" }, outputs = { "vialproto", "vialproto" }, time = 5},
{inputs = {"moonstonebar", "blisterbushplantfood", "dnasample" }, outputs = { "blisterextract", "blisterextract" }, time = 15},
{inputs = {"mineralsample", "mutavisksilk", "dnasample" }, outputs = { "mutaviskthread", "mutaviskthread" }, time = 5},
{inputs = {"prisilitestar", "protorockmaterial", "mineralsample" }, outputs = { "aliencompound" }, time = 5},
{inputs = {"methanol", "iodine", "phosphorus" }, outputs = { "methyliodide" }, time = 5},
{inputs = {"coalore", "liquidwater", "ff_silicon" }, outputs = { "graphene" }, time = 5},
{inputs = {"crystal", "rawminerals", "liquidoil" }, outputs = { "ff_silicon" }, time = 5},
{inputs = {"ff_scouthelm", "ff_penumbraplating", "diamond" }, outputs = { "skullreaperhelm-recipe" }, time = 60}

}

function init(args)
    self.timer = 0
    self.recipe = nil
    self.crafting = false
end

function hasValidRecipe()
    local id = entity.id()
    local contents = world.containerItems(entity.id())

    for _, recipe in pairs(recipes) do
        local hasRecipe = true
        for id, item in pairs(recipe.inputs) do
            local found = false
            for i, inv in pairs(contents) do
                if item == inv.name then
                    found = true
                    break -- Break the item search loop
                end
            end
           
            if not found then
                hasRecipe = false
                break -- Break loop for current recipe
            end
        end
       
        -- Do we have the match?
        if hasRecipe then
            return true, recipe
        end
    end
   
    return false, nil
end

-- Adds in/Removes the items. If you added the amount param to tables, be sure to update it here.
function generateRecipe()
    local recipe = self.recipe
    local entID = entity.id()
   
    -- Remove the input items
    for k, v in pairs(recipe.inputs) do
        if not world.containerConsume(entID, {item = v , count = 1}) then
            return 
        end
    end
   
    -- Add the output items
    for k, item in pairs(recipe.outputs) do
        local itemsRemaining = world.containerAddItems(entID, { name= item, count = 1, data={}})

        if itemsRemaining then
            world.spawnItem(itemsRemaining.item, entity.position(), itemsRemaining.amount)
        end
    end
end

function update(dt)
    -- Are we already crafting?
    if not self.crafting then
        -- No? Check recipes.
        local hasRecipe, recipe = hasValidRecipe()
        if hasRecipe then
            self.recipe = recipe
            entity.setAnimationState("samplingarrayanim", "working") 
            self.crafting = true
        end
    else
        -- Yes? Run timer.
        self.timer = self.timer + dt -- Make it work with actual SECONDS
        if self.timer >= self.recipe.time then
            generateRecipe() -- Take the recipe requirements and Generate the results
            self.crafting = false
            self.timer = 1
            entity.setAnimationState("samplingarrayanim", "idle")
        end
    end
end
