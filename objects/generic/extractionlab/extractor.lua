local recipes =
{
-- basic materials
--
---- resources
{inputs = { energywood=12 }, outputs = { penumbriteore=1 }, time = 2},
{inputs = { alienweirdwood=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { alienwoodsap=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { ancientbones=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { artificialbrain=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { basicpelt=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { biosample=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { bolt=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { bone=1 }, outputs = { liquidoil=1 }, time = 2},
{inputs = { bottle=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { brain=1 }, outputs = { tissueculture=5 }, time = 2},
{inputs = { bugshell=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cellmateria=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { cellmatter=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { coralfragment=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { dragonbone=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { endomorphicjelly=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { fabric=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { fossilore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { fleshstrand=10 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { giantflowerpetal=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { glowfibreblue=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { glowfibregreen=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { glowfibreorange=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { glowfibreyellow=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { gnome=1 }, outputs = { bone=1 }, time = 2},
{inputs = { greenslime=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { gunpowder=1 }, outputs = { saltpeter=1 }, time = 2},
{inputs = { inferiorbrain=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { leather=1 }, outputs = { geneticmaterial=8 }, time = 2},
{inputs = { metallic=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { moltencore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { monsterplating=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { paper=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { petalred=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { peralblue=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { petalyellow=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { reed=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { seaweed=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { spareparts=1 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { toxicwaste=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { flesh=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { florangiantpod=1 }, outputs = { agaranichor=4,geneticmaterial=24 }, time = 2},
{inputs = { floranopenpod1=1 }, outputs = { agaranichor=1,geneticmaterial=6 }, time = 2},
{inputs = { floranopenpod2=1 }, outputs = { agaranichor=1,geneticmaterial=6 }, time = 2},
{inputs = { floranpod1=1 }, outputs = { agaranichor=2,geneticmaterial=6 }, time = 2},
{inputs = { floranpod1=1 }, outputs = { agaranichor=2,geneticmaterial=6 }, time = 2},
{inputs = { floranpod1=1 }, outputs = { agaranichor=2,geneticmaterial=6 }, time = 2},
{inputs = { floranpodapex=1 }, outputs = { agaranichor=3,geneticmaterial=12 }, time = 2},
{inputs = { metalchunk=1 }, outputs = { rawminerals=5 }, time = 2},
{inputs = { silkspider=1 }, outputs = { silk=1 }, time = 2},
{inputs = { silkworm=1 }, outputs = { silk=1 }, time = 2},
{inputs = { biospore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { ebonshard=1 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { ff_mercury=1 }, outputs = { liquidmercury=2 }, time = 2},
{inputs = { ff_resin=1 }, outputs = { nutrientpaste=1 }, time = 2},
{inputs = { ff_silicon=1 }, outputs = { glassmaterial=2 }, time = 2},
{inputs = { greenslime=1 }, outputs = { glassmaterial=2 }, time = 2},
{inputs = { fu_nodule=1 }, outputs = { tissueculture=4 }, time = 2},
{inputs = { greenslime=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { mutavisksilk=5 }, outputs = { dnasample=1 }, time = 2},
{inputs = { obsidianshard=1 }, outputs = { ammoniumsulfate=1 }, time = 2},
{inputs = { cellpods=1 }, outputs = { geneticmaterial=10 }, time = 2},
{inputs = { cellpodsplant=1 }, outputs = { geneticmaterial=10 }, time = 2},

-- tiles
{inputs = { alienrock=50 }, outputs = { ff_silicon=2 }, time = 2},
{inputs = { alienstripedwood=50 }, outputs = { tissueculture=2 }, time = 2},
{inputs = { blackslimematerial=50 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { bamboo=50 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { bonematerial=25 }, outputs = { bone=3 }, time = 2},
{inputs = { bonemealmaterial=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { calichewall=6 }, outputs = { iodine=1 }, time = 2},
{inputs = { corruptslimematerial=50 }, outputs = { tissueculture=2 }, time = 2},
{inputs = { eyepiles=50 }, outputs = { tissueculture=2 }, time = 2},
{inputs = { andesitematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { arkosematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { ash=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { bioblockmaterial=50 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { bioblock2material=50 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { biodirtmaterial=50 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { biogravelmaterial=50 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { biostonematerial=50 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { blaststone=50 }, outputs = { rawminerals=4 }, time = 2},
{inputs = { bloodsandmaterial=50 }, outputs = { liquidoil=2 }, time = 2},
{inputs = { bloodstonewall=50 }, outputs = { phosphorus=1 }, time = 2},
{inputs = { bloodstonewall2=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { bloodstonewall3=50 }, outputs = { crystal=1 }, time = 2},
{inputs = { bloodstonematerial=50 }, outputs = { phosphorus=1 }, time = 2},
{inputs = { brains=50 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { brick=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { castlewalls1=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { castlewalls2=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { chertmaterial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { clay=50 }, outputs = { nutrientpaste=3 }, time = 2},
{inputs = { cloudblock=50 }, outputs = { liquidwater=2 }, time = 2},
{inputs = { cobblestone=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { cobblestonematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { conglomeratematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { corruptmaterial=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { crystal=50 }, outputs = { icecrystal=1 }, time = 2},
{inputs = { crystalblock=50 }, outputs = { crystal=2 }, time = 2},
{inputs = { dacitematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { darknessmaterial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { darkstonematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { direstone=50 }, outputs = { rawminerals=4 }, time = 2},
{inputs = { dirtmaterial=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { drydirt=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { drysand=50 }, outputs = { liquidoil=2 }, time = 2},
{inputs = { fleshblock=50 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { gabbromaterial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { "glassmaterial" }, outputs = { "mineralsample" }, time = 2},
{inputs = { gneissmaterial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { gravelmaterial=50 }, outputs = { rawminerals=1 }, time = 2},
{inputs = { gritstonematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { hellstonematerial=50 }, outputs = { rawminerals=4 }, time = 2},
{inputs = { hive=50 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { ice=50 }, outputs = { nutrientpaste=1 }, time = 2},
{inputs = { iceblockmaterial=50 }, outputs = { rawminerals=1 }, time = 2},
{inputs = { iceblock2material=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { iceblock3material=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { iceblock4material=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { icecrystal=5 }, outputs = { crystal=50 }, time = 2},
{inputs = { irradiatedwall=50 }, outputs = { uraniumore=1 }, time = 2},
{inputs = { irradiatedwall2=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { irradiatedwall3=50 }, outputs = { uraniumore=1 }, time = 2},
{inputs = { jungledirt1material=50 }, outputs = { nutrientpaste=1 }, time = 2},
{inputs = { jungledirt2material=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { limestonematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { magmarock=50 }, outputs = { ammoniumsulfate=1 }, time = 2},
{inputs = { magmawall1=50 }, outputs = { ammoniumsulfate=2 }, time = 2},
{inputs = { magmawall2=50 }, outputs = { rawminerals=3 }, time = 2},
{inputs = { magmawall3=50 }, outputs = { rawminerals=4 }, time = 2},
{inputs = { magmawall4=50 }, outputs = { ammoniumsulfate=1 }, time = 2},
{inputs = { marestonematerial=50 }, outputs = { rawminerals=1 }, time = 2},
{inputs = { meteoriterock=50 }, outputs = { ff_silicon=1 }, time = 2},
{inputs = { moondust=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { moonrock=50 }, outputs = { rawminerals=3 }, time = 2},
{inputs = { moonstone=50 }, outputs = { rawminerals=1 }, time = 2},
{inputs = { mossypackeddirt=50 }, outputs = { algaegreen=2 }, time = 2},
{inputs = { mud=50 }, outputs = { nutrientpaste=1 }, time = 2},
{inputs = { mudstonematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { obsidianmaterial=10 }, outputs = { obsidianshard=1 }, time = 2},
{inputs = { packeddirt=50 }, outputs = { nutrientpaste=1 }, time = 2},
{inputs = { penumbradirtmaterial=30 }, outputs = { nutrientpaste=1 }, time = 2},
{inputs = { penumbrastonematerial=30 }, outputs = { rawminerals=1 }, time = 2},
{inputs = { plantblock=50 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { plantmatter=50 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { purplecrystalmaterial=50 }, outputs = { ff_silicon=1 }, time = 2},
{inputs = { raincloudmat=50 }, outputs = { liquidwater=4 }, time = 2},
{inputs = { redsand=50 }, outputs = { liquidoil=2 }, time = 2},
{inputs = { sand=50 }, outputs = { liquidoil=1 }, time = 2},
{inputs = { sand2=50 }, outputs = { liquidoil=1 }, time = 2},
{inputs = { sandstonematerial=50 }, outputs = { phosphorus=1 }, time = 2},
{inputs = { sandstoneblock=50 }, outputs = { phosphorus=1 }, time = 2},
{inputs = { sewage=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { shroom=5 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { shroomblock=50 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { slime=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { slime2material=50 }, outputs = { greenslime=1 }, time = 2},
{inputs = { slush=50 }, outputs = { nutrientpaste=1 }, time = 2},
{inputs = { snow=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { sulphurdirtmaterial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { sulphurstonematerial=50 }, outputs = { rawminerals=3 }, time = 2},
{inputs = { swampdirtffmaterial=50 }, outputs = { nutrientpaste=2 }, time = 2},
{inputs = { tar=50 }, outputs = { liquidoil=3 }, time = 2},
{inputs = { wastestone=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { wetdirt=50 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { fullwood1=10 }, outputs = { methanol=1 }, time = 2},
{inputs = { shroomblockglow=50 }, outputs = { agaranichor=1 }, time = 2},
{inputs = { slimedirtmaterial=50 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { spidersilkblock=50 }, outputs = { silk=1 }, time = 2},
{inputs = { supermatter=4 }, outputs = { liquidfuel=3 }, time = 2},
{inputs = { coralmaterial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { coral2material=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { diamondblockmaterial=1 }, outputs = { diamond=2 }, time = 2},
{inputs = { sulphurdirtmaterial=50 }, outputs = { rawminerals=3 }, time = 2},
{inputs = { brittlejunk=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { brittlemetal=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { marestonematerial=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { oystershellmaterial=50 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { rostone=50 }, outputs = { rawminerals=2 }, time = 2},
{inputs = { ebonblockmaterial=4 }, outputs = { ebonshard=3 }, time = 2},
{inputs = { elderblockmaterial=50 }, outputs = { rawminerals=3 }, time = 2},
{inputs = { elderblock2material=50 }, outputs = { rawminerals=3 }, time = 2},
{inputs = { elderstonematerial=50 }, outputs = { rawminerals=3 }, time = 2},
{inputs = { elderstone2material=50 }, outputs = { rawminerals=3 }, time = 2},
{inputs = { energywood=50 }, outputs = { penumbriteore=1 }, time = 2},


-- seeds
{inputs = { algaeseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { automatoseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { avesmingoseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { bananaseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { beetlesproutseed=1 }, outputs = { algaeseed=1 }, time = 2},
{inputs = { beakseedseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { biospore=1}, outputs = { shroom=2 }, time = 2},
{inputs = { biscornseed=1 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { blizzberryseed=1 }, outputs = { tissueculture=2 }, time = 2},
{inputs = { bloodrootseed=1 }, outputs = { bloodliquid=4 }, time = 2},
{inputs = { bluemelonseed=1 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { blexplantseed=1 }, outputs = { ff_resin=2 }, time = 2},
{inputs = { boltbulbseed=1 }, outputs = { coil=1 }, time = 2},
{inputs = { bonebooseed=1 }, outputs = { bone=2 }, time = 2},
{inputs = { brackentreeseed=1 }, outputs = { silk=4 }, time = 2},
{inputs = { aquapodseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { bambooseed=1 }, outputs = { geneticmaterial=2 }, time = 2 },
{inputs = { blisterbushplantseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { caprioleplantseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { carrotseed=1 }, outputs = { cellmateria=2 }, time = 2},
{inputs = { chiliseed=1 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { coffeeseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { coralcreepseed=1 }, outputs = { geneticmaterial=5 }, time = 2},
{inputs = { cornseed=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { corvexsproutseed=1 }, outputs = { corvex=1 }, time = 2},
{inputs = { crystalplantseed=1 }, outputs = { crystal=1 }, time = 2},
{inputs = { currentcornseed=1 }, outputs = { ff_silicon=1 }, time = 2},
{inputs = { deathblossomseed=1 }, outputs = { biospore=4 }, time = 2},
{inputs = { diodiaseed=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { diodiahybridseed=1 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { dirturchinseed=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { dragonsbeardseed=1 }, outputs = { ammoniumsulfate=1 }, time = 2},
{inputs = { energiflowerseed=1 }, outputs = { plantfibre=8 }, time = 2},
{inputs = { erithianalgaeseed=1 }, outputs = { algaeseed=1 }, time = 2},
{inputs = { eggshootseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { feathercrownseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { flowerblueseed=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { flowerredseed=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { floweryellowseed=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { floralytplantseed=1 }, outputs = { geneticmaterial=13 }, time = 2},
{inputs = { fubioshroomblue=1 }, outputs = { biospore=3 }, time = 2},
{inputs = { fubioshroomgreen=1 }, outputs = { biospore=3 }, time = 2},
{inputs = { fubioshroompurple=1 }, outputs = { biospore=3 }, time = 2},
{inputs = { fubioshroomred=1 }, outputs = { biospore=3 }, time = 2},
{inputs = { fubioshroomyellow=1 }, outputs = { biospore=3 }, time = 2},
{inputs = { fayshroomseed=1 }, outputs = { geneticmaterial=41 }, time = 2},
{inputs = { ghostmushroomseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { ginsengseed=1 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { goldenrootseed=1 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { goldshroomseed=1 }, outputs = { goldore=4 }, time = 2},
{inputs = { greenleafseed=1 }, outputs = { geneticmaterial=5 }, time = 2},
{inputs = { guamseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { gazelemonseed=1 }, outputs = { tissueculture=4 }, time = 2},
{inputs = { glarestalkseed=1 }, outputs = { eyepile=10 }, time = 2},
{inputs = { genesiberryseed=1 }, outputs = { tissueculture=12 }, time = 2},
{inputs = { goldenglowseed=1 }, outputs = { geneticmaterial=5 }, time = 2},
{inputs = { grapesseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { haleflowerseed=1 }, outputs = { geneticmaterial=6 }, time = 2},
{inputs = { hopsseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { hellfireplantseed=1 }, outputs = { ammoniumsulfate=11 }, time = 2},
{inputs = { ighantseed=1 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { ignuschiliseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { ignuschili2seed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { itaseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { jillyrootseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { kiwiseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { lasherplantseed=1 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { leafshellseed=1 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { lactariusindigoseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { livingrootseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { littlerascalseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { littlegoodberryseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { melodistarseed=1 }, outputs = { geneticmaterial=5 }, time = 2},
{inputs = { minkocoapodseed=1 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { mintseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { miraclegrassseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { mireurchinseed=1 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { mutaviskseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { neonmelonseed=1 }, outputs = { geneticmaterial=2 }, time = 2},
{inputs = { nissseed=1 }, outputs = { tissueculture=4 }, time = 2},
{inputs = { naileryseed=1 }, outputs = { rawminerals=4 }, time = 2},
{inputs = { neuropodseed=1 }, outputs = { tissueculture=2 }, time = 2},
{inputs = { oculemonseed=1 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { mutaviskseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { oonfortaseed=1 }, outputs = { biospore=1 }, time = 2},
{inputs = { pasakavineseed=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { pekkitseed=1 }, outputs = { tissueculture=5 }, time = 2},
{inputs = { petrifiedrootseed=1 }, outputs = { geneticmaterial=6 }, time = 2},
{inputs = { pinkloomseed=1 }, outputs = { geneticmaterial=5 }, time = 2},
{inputs = { pearlpeaseed=1 }, outputs = { geneticmaterial=5 }, time = 2},
{inputs = { pineappleseed=1 }, outputs = { geneticmaterial=5 }, time = 2},
{inputs = { potatoseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { porphisplantseed=1 }, outputs = { tissueculture=5 }, time = 2},
{inputs = { pussplumseed=1 }, outputs = { tissueculture=4 }, time = 2},
{inputs = { reefpodseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { rockrootseed=1 }, outputs = { rawminerals=4 }, time = 2},
{inputs = { riceseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { sapling=1 }, outputs = { tissueculture=5 }, time = 2},
{inputs = { shinyacornseed=1 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { shockshroomseed=1 }, outputs = { tissueculture=8 }, time = 2},
{inputs = { silverleafseed=1 }, outputs = { silverore=2 }, time = 2},
{inputs = { slimeplantseed=1 }, outputs = { greenslime=4 }, time = 2},
{inputs = { springvaultseed=1 }, outputs = { tissueculture=2 }, time = 2},
{inputs = { stranglevineseed=1 }, outputs = { tissueculture=4 }, time = 2},
{inputs = { sugarcaneseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { teratomatoseed=1 }, outputs = { geneticmaterial=11 }, time = 2},
{inputs = { talonseedseed=1 }, outputs = { geneticmaterial=5 }, time = 2},
{inputs = { tetherhookseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { thornitoxseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { tomatoseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { toxictopseed=1 }, outputs = { geneticmaterial=4 }, time = 2},
{inputs = { tyvokkseed=1 }, outputs = { geneticmaterial=5 }, time = 2},
{inputs = { varanberryseed=1 }, outputs = { geneticmaterial=1 }, time = 2},
{inputs = { vextongueseed=1 }, outputs = { tissueculture=2 }, time = 2},
{inputs = { voritseed=1 }, outputs = { geneticmaterial=3 }, time = 2},
{inputs = { wartweedseed=1 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { wheatseed=1 }, outputs = { tissueculture=4 }, time = 2},
{inputs = { vashtaplantseed=1 }, outputs = { tissueculture=6 }, time = 2},
{inputs = { wretchelseed=1 }, outputs = { tissueculture=9 }, time = 2},
{inputs = { wubstemseed=1 }, outputs = { tissueculture=3 }, time = 2},
{inputs = { xaxseed=1 }, outputs = { tissueculture=5 }, time = 2},
{inputs = { yellowfootseed=1 }, outputs = { tissueculture=4 }, time = 2},
{inputs = { zathiseed=1 }, outputs = { geneticmaterial=8 }, time = 2},


-- food / produce / plant biproduct

--from FU
{inputs = { aquapod=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { beetlesproutflower=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { biscorn=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { blexsap=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { blisterbushplantfood=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { blizzberry=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { bloodroot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { bluemelon=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { capriole=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { crystalplant=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { diodiahybrid=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { dragonsbeard=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { energiflower=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { fayshroom=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { floralytcandy=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { gazelemon=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { genesiberry=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { ghostmushroom=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { ginseng=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { glarestalkeye=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { goldenglowleaf=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { goldenroot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { goldshroom=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { greenleaf=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { guam=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { haleflower=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { ighantbulb=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { itahead=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { jillyroot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { lactariusindigo=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { lasherstem=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { leafshell=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { littlegoodberry=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { littlerascal=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { livingroot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { melodistar=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { minkocoapod=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { mint=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { miraclegrass=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { mireurchin=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { nailery=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { neuropod=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { nisscap=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { nyanifruit=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { onion=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { pasaka=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { pearlfruit=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { pekkit=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { petrifiedroot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { pinkloom=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { porphisblossom=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { rockroot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { shinyacorn=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { silverleaf=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { slimeleaf=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { springvaultcoil=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { stranglevineroot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { talonseed=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { tearnut=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { teratomato=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { tetherhookwheel=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { thornitox=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { toxicflower=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { tyvokkhook=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { varanberry=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { vashtaclaw=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { vextonguestamen=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { voritcap=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { wretchel=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { wubstem=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { xaxwing=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { yellowfoot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { zathitails=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { erithianalgae=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { peach=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { pear=1 }, outputs = { tissueculture=1 }, time = 2},

--from vanilla
{inputs = { plantfibre=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { alienfruit=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cacti=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { chili=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { carrot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { coffeebeans=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { coralcreep=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { corn=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { crystalplant=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { currentcorn=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { diodia=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { dirturchin=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { eggshoot=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { feathercrown=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { grapes=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { greenapple=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { kelp=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { kiwi=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { neonmelon=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { oculemon=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { orange=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { pearlpea=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { pineapple=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { potato=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { pussplum=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { redapple=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { reefpod=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { rice=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { shroom=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { sugar=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { thornfruit=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { tomato=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { toxictop=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { wartweed=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { wheat=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { alienmeat=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cookedalienmeat=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cookedbacon=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cookedfish=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cookedfleshlump=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cookedham=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cookedpoultry=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cookedribmeat=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cookedtentacle=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { meatchunks=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { offal=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { rawbacon=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { rawfish=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { rawfleshlump=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { soylentgreen=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { rawribmeat=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { rawtentacle=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { wildvines=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { coconut=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { hivebomb=1 }, outputs = { tissueculture=1 }, time = 2},


-- ores
{inputs = { aegisaltore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { copperore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { coalore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { corefragmentore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { diamond=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { ironore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { lead=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { moonstoneore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { mascagniteore=5 }, outputs = { ammoniumsulfate=1 }, time = 2},
{inputs = { platinumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { prisiliteore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { plutoniumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { rubiumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { silverore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { solariumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { sulphur=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { titaniumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { triangliumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { uraniumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { violiumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { lazuliteore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { magnesiumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { irradiumore=1 }, outputs = { liquidirradium=1 }, time = 2},
{inputs = { protociteore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { penumbriteore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { cinnabarore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { densiniumore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { berliniteore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { corruptionore=1 }, outputs = { tissueculture=1 }, time = 2},
{inputs = { solarishard=1 }, outputs = { tissueculture=1 }, time = 2}

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
    self.timer = 1
    self.mintick = 1
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


function makePopup()
   -- any generic error handling
    return { "ShowPopup", { message = "You must use valid materials. Try something else." } }
end

function getValidRecipes(query)

    local function subset(t1,t2)
        if next(t2) == nil then 
          return false 
        end
        if t1 == t2 then 
          return true
        end
            for k,_ in pairs(t1) do
                if not t2[k] or t1[k] > t2[k] then 
                  makePopup()  --remove if broken
                  return false 
                end
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


        if not self.crafting and self.timer <= 0 then --make sure we didn't just finish crafting
            if not startCrafting(getValidRecipes(getInputContents()))
            then self.timer = self.mintick end --set timeout if there were no recipes
        end

    end
end



function startCrafting(result)
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
