local recipes=
{
{inputs = {glassmaterial=1, rawminerals=2, nutrientpaste=2 }, outputs = { mineralsample=1 }, time = 6},
{inputs = {glassmaterial=1, geneticmaterial=2, tissueculture=2 }, outputs = { dnasample=1 }, time = 6},
{inputs = {mineralsample=1, dnasample=1, biochipbase=1 }, outputs = { biochip=1 }, time = 15},
{inputs = {glassmaterial=1, protocitebar=1, dnasample=1 }, outputs = { vialproto=1 }, time = 15},
{inputs = {moonstoneore=1, blisterbushplantfood=1, dnasample=1 }, outputs = { blisterextract=1 }, time = 7},
{inputs = {mineralsample=1, mutavisksilk=1, dnasample=1 }, outputs = { mutaviskthread=1 }, time = 10},
{inputs = {prisilitestar=1, protorockmaterial=1, mineralsample=1 }, outputs = { aliencompound=1 }, time = 5},
{inputs = {methanol=1, iodine=1, phosphorus=1 }, outputs = { methyliodide=1 }, time = 5},
{inputs = {coalore=3, liquidwater=2, ff_silicon=1 }, outputs = { graphene=1 }, time = 15},
{inputs = {crystal=1, rawminerals=2, liquidoil=1 }, outputs = { ff_silicon=1 }, time = 5},
{inputs = {blisterchest=1, goldenglowseed=1, penumbriteshard=5 }, outputs = { blisterchestalt=1 }, time = 60},
{inputs = {blisterpants=1, goldenglowseed=1, penumbriteshard=5 }, outputs = { blisterpantsalt=1 }, time = 60},
{inputs = {blisterhelm=1, goldenglowseed=1, penumbriteshard=5 }, outputs = { blisterhelmalt=1 }, time = 60},
{inputs = {blisterhelm2=1, goldenglowseed=1, penumbriteshard=5 }, outputs = { blisterhelmalt=1 }, time = 60},
{inputs = {ff_scouthelm=1, penumbraplating=1, diamond=1 }, outputs = { skullreaperhelm=1 }, time = 60},
{inputs = {spikesword=1, protocitebar=1, cellmatter=1 }, outputs = { spikesword2=1 }, time = 60},
{inputs = {spikesword2=1, ff_penumbraplating=1, cellmatter=1 }, outputs = { spikesword3=1 }, time = 60},
{inputs = {spikesword3=1, uraniumrod=1, cellmatter=1 }, outputs = { spikesword4=1 }, time = 60},
{inputs = {spikesword4=1, prisilitestar=1, cellmatter=1 }, outputs = { spikesword5=1 }, time = 60},
{inputs = {ff_scoutchest=1, ff_mercury=1, ff_penumbraplating=4 }, outputs = { ff_scoutchest_melee=1 }, time = 60},
{inputs = {ff_scouthelm=1, ff_mercury=1, ff_penumbraplating=4 }, outputs = { ff_scouthelm_melee=1 }, time = 60},
{inputs = {ff_scoutpants=1, ff_mercury=1, ff_penumbraplating=4 }, outputs = { ff_scoutpants_melee=1 }, time = 60}
}



--  *************
--  add random chance to drop higher or lower quality versions of samples? rares? etc?
--  *************
-- local.samplingbenefit = 0 --this value will be set based on items used.
-- The higher the sampling benefit, the better chance at a super-item. These take the
-- form of things like unlockable recipes via item as in vanilla starbound, or super-seeds
-- and that sort of thing.

function init(args)
    if args then return end
    self.timer = 5
    self.mintick = 5
    self.crafting = false
    self.output = {}
end

function getInputContents()
        local id = entity.id()
      
        local contents = {}
        for i=0,2 do
            local stack = world.containerItemAt(entity.id(),i)
            if stack ~=nil then
                if contents[stack.name] ~= nil then
                contents[stack.name] = contents[stack.name] + stack.count
                else
                contents[stack.name] = stack.count
                end
            end
        end
      
        return contents
    end

function map(l,f)
    local res = {}
    for k,v in pairs(l) do
        res[k] = f(v)
    end
    return res
end

function filter(l,f)
  return map(l, function(e) return f(e) and e or nil end)
end


function getValidRecipes(query)

    local function subset(t1,t2)
        if next(t2) == nil then return false end
        if t1 == t2 then return true end
            for k,_ in pairs(t1) do
                if not t2[k] or t1[k] >= t2[k] then return false end
            end
        return true
    end

return filter(recipes, function(l) return subset(l.inputs, query) end)

end
  
function update(dt)

    self.timer = self.timer - dt

    if self.timer <= 0 then

        if self.crafting then
            for k,v in pairs(self.output) do
                local leftover = world.containerAddItems(entity.id(), {item = k , count = v})
                if leftover ~= nil then world.spawnItem(leftover.item, entity.position(), leftover.count) end
            end
            self.crafting = false
            self.output = {}
            self.timer = self.mintick --reset timer to a safe minimum
            entity.setAnimationState("samplingarrayanim", "idle")
        end

        local function startCrafting(result)
            if next(result) == nil then return false
            else _,result = next(result)

                for k,v in pairs(result.inputs) do
                    if not world.containerConsume(entity.id(), {item = k , count = v}) then return false end
                end

                self.crafting = true
                self.timer = result.time
                self.output = result.outputs
                entity.setAnimationState("samplingarrayanim", "working")

                return true
            end              
        end

        if not self.crafting and self.timer <= 0 then --make sure we didn't just finish crafting
            if not startCrafting(getValidRecipes(getInputContents()))
            then self.timer = self.mintick end --set timeout if there were no recipes
        end

    end
end