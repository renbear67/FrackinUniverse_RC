local recipes =
{
---- resources
{inputs = { energywood=12 }, outputs = { penumbriteore=4 }, time = 1},
{inputs = { alienweirdwood=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { alienwoodsap=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { ancientbones=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { artificialbrain=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { basicpelt=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { biosample=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { bolt=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { bone=1 }, outputs = { liquidoil=4 }, time = 1},
{inputs = { bottle=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { brain=1 }, outputs = { tissueculture=9 }, time = 1},
{inputs = { bugshell=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { cellmateria=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { cellmatter=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { coralfragment=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { dragonbone=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { endomorphicjelly=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { fabric=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { fossilore=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { fleshstrand=10 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { giantflowerpetal=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { glowfibreblue=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { glowfibregreen=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { glowfibreorange=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { glowfibreyellow=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { gnome=1 }, outputs = { bone=4 }, time = 1},
{inputs = { greenslime=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { gunpowder=1 }, outputs = { saltpeter=4 }, time = 1},
{inputs = { inferiorbrain=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { leather=1 }, outputs = { geneticmaterial=16 }, time = 1},
{inputs = { metallic=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { moltencore=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { monsterplating=1 }, outputs = { geneticmaterial=2 }, time = 1},
{inputs = { paper=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { petalred=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { petalblue=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { petalyellow=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { reed=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { seaweed=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { spareparts=1 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { toxicwaste=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { flesh=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { florangiantpod=1 }, outputs = { agaranichor=8,geneticmaterial=36 }, time = 1},
{inputs = { floranopenpod1=1 }, outputs = { agaranichor=2,geneticmaterial=9 }, time = 1},
{inputs = { floranopenpod2=1 }, outputs = { agaranichor=2,geneticmaterial=9 }, time = 1},
{inputs = { floranpod1=1 }, outputs = { agaranichor=2,geneticmaterial=6 }, time = 1},
{inputs = { floranpod1=1 }, outputs = { agaranichor=2,geneticmaterial=6 }, time = 1},
{inputs = { floranpod1=1 }, outputs = { agaranichor=2,geneticmaterial=6 }, time = 1},
{inputs = { floranpodapex=1 }, outputs = { agaranichor=6,geneticmaterial=24 }, time = 1},
{inputs = { metalchunk=1 }, outputs = { rawminerals=8 }, time = 1},
{inputs = { silkspider=1 }, outputs = { silk=2 }, time = 1},
{inputs = { silkworm=1 }, outputs = { silk=2 }, time = 1},
{inputs = { biospore=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { ebonshard=1 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { ff_mercury=1 }, outputs = { liquidmercury=4 }, time = 1},
{inputs = { ff_resin=1 }, outputs = { nutrientpaste=4 }, time = 1},
{inputs = { greenslime=1 }, outputs = { glassmaterial=4 }, time = 1},
{inputs = { fu_nodule=1 }, outputs = { tissueculture=8 }, time = 1},
{inputs = { greenslime=1 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { mutavisksilk=5 }, outputs = { dnasample=2 }, time = 1},
{inputs = { obsidianshard=1 }, outputs = { ammoniumsulfate=2 }, time = 1},
{inputs = { ff_bambooshoot=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { blooddiamond=1 }, outputs = { bloodore=4 }, time = 1},
-- tiles
{inputs = { petalblock=50 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { alienrock=50 }, outputs = { ff_silicon=4 }, time = 1},
{inputs = { alienstripedwood=50 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { blackslimematerial=50 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { bamboo=50 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { bonematerial=25 }, outputs = { bone=6 }, time = 1},
{inputs = { bonemealmaterial=50 }, outputs = { nutrientpaste=2 }, time = 1},
{inputs = { calichewall=6 }, outputs = { iodine=3 }, time = 1},
{inputs = { corruptslimematerial=50 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { eyepiles=50 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { andesitematerial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { arkosematerial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { ash=50 }, outputs = { nutrientpaste=4 }, time = 1},
{inputs = { bioblockmaterial=50 }, outputs = { geneticmaterial=2 }, time = 1},
{inputs = { bioblock2material=50 }, outputs = { geneticmaterial=2 }, time = 1},
{inputs = { biodirtmaterial=50 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { biogravelmaterial=50 }, outputs = { tissueculture=2 }, time = 1},
{inputs = { biostonematerial=50 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { blaststone=50 }, outputs = { rawminerals=6 }, time = 1},
{inputs = { bloodsandmaterial=50 }, outputs = { liquidoil=4 }, time = 1},
{inputs = { bloodstonewall=50 }, outputs = { phosphorus=2 }, time = 1},
{inputs = { bloodstonewall2=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { bloodstonewall3=50 }, outputs = { crystal=2 }, time = 1},
{inputs = { bloodstonematerial=50 }, outputs = { phosphorus=3 }, time = 1},
{inputs = { brains=50 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { brick=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { castlewalls1=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { castlewalls2=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { chertmaterial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { clay=50 }, outputs = { nutrientpaste=5 }, time = 1},
{inputs = { cloudblock=50 }, outputs = { liquidwater=4 }, time = 1},
{inputs = { cobblestone=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { cobblestonematerial=50 }, outputs = { rawminerals=3 }, time = 1},
{inputs = { conglomeratematerial=50 }, outputs = { rawminerals=3 }, time = 1},
{inputs = { corruptmaterial=50 }, outputs = { nutrientpaste=3 }, time = 1},
{inputs = { crystal=50 }, outputs = { icecrystal=2 }, time = 1},
{inputs = { crystalblock=50 }, outputs = { crystal=4 }, time = 1},
{inputs = { dacitematerial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { darknessmaterial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { darkstonematerial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { direstone=50 }, outputs = { rawminerals=8 }, time = 1},
{inputs = { dirtmaterial=50 }, outputs = { nutrientpaste=5 }, time = 1},
{inputs = { drydirt=50 }, outputs = { nutrientpaste=4 }, time = 1},
{inputs = { drysand=50 }, outputs = { liquidoil=4 }, time = 1},
{inputs = { fleshblock=50 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { gabbromaterial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { gneissmaterial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { gravelmaterial=50 }, outputs = { rawminerals=3 }, time = 1},
{inputs = { gritstonematerial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { hellstonematerial=50 }, outputs = { rawminerals=6 }, time = 1},
{inputs = { hive=50 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { ice=50 }, outputs = { nutrientpaste=2 }, time = 1},
{inputs = { iceblock1material=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { iceblock2material=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { iceblock3material=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { iceblock4material=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { icecrystal=5 }, outputs = { crystal=55 }, time = 1},
{inputs = { irradiatedwall=50 }, outputs = { uraniumore=2 }, time = 1},
{inputs = { irradiatedwall2=50 }, outputs = { rawminerals=3 }, time = 1},
{inputs = { irradiatedwall3=50 }, outputs = { uraniumore=2 }, time = 1},
{inputs = { jungledirt1material=50 }, outputs = { nutrientpaste=3 }, time = 1},
{inputs = { jungledirt2material=50 }, outputs = { nutrientpaste=4 }, time = 1},
{inputs = { limestonematerial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { magmarock=50 }, outputs = { ammoniumsulfate=2 }, time = 1},
{inputs = { magmawall1=50 }, outputs = { ammoniumsulfate=4 }, time = 1},
{inputs = { magmawall2=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { magmawall3=50 }, outputs = { rawminerals=6 }, time = 1},
{inputs = { magmawall4=50 }, outputs = { ammoniumsulfate=2 }, time = 1},
{inputs = { marestonematerial=50 }, outputs = { rawminerals=2 }, time = 1},
{inputs = { meteoriterock=50 }, outputs = { ff_silicon=2 }, time = 1},
{inputs = { moondust=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { moonrock=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { moonstone=50 }, outputs = { rawminerals=3 }, time = 1},
{inputs = { mossypackeddirt=50 }, outputs = { algaegreen=4 }, time = 1},
{inputs = { mud=50 }, outputs = { nutrientpaste=2 }, time = 1},
{inputs = { mudstonematerial=50 }, outputs = { rawminerals=3 }, time = 1},
{inputs = { obsidianmaterial=10 }, outputs = { obsidianshard=2 }, time = 1},
{inputs = { packeddirt=50 }, outputs = { nutrientpaste=2 }, time = 1},
{inputs = { penumbradirtmaterial=30 }, outputs = { nutrientpaste=2 }, time = 1},
{inputs = { penumbrastonematerial=30 }, outputs = { rawminerals=2 }, time = 1},
{inputs = { plantblock=50 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { plantmatter=50 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { purplecrystalmaterial=50 }, outputs = { ff_silicon=3 }, time = 1},
{inputs = { raincloudmat=50 }, outputs = { liquidwater=5 }, time = 1},
{inputs = { redsand=50 }, outputs = { liquidoil=3 }, time = 1},
{inputs = { sand=50 }, outputs = { liquidoil=2 }, time = 1},
{inputs = { sand2=50 }, outputs = { liquidoil=2 }, time = 1},
{inputs = { sandstonematerial=50 }, outputs = { phosphorus=2 }, time = 1},
{inputs = { sandstoneblock=50 }, outputs = { phosphorus=2 }, time = 1},
{inputs = { sewage=50 }, outputs = { nutrientpaste=4 }, time = 1},
{inputs = { shroom=5 }, outputs = { nutrientpaste=4 }, time = 1},
{inputs = { shroomblock=50 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { slime=50 }, outputs = { nutrientpaste=4 }, time = 1},
{inputs = { slime2material=50 }, outputs = { greenslime=2 }, time = 1},
{inputs = { slush=50 }, outputs = { nutrientpaste=2 }, time = 1},
{inputs = { snow=50 }, outputs = { nutrientpaste=4 }, time = 1},
{inputs = { sulphurdirtmaterial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { sulphurstonematerial=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { swampdirtffmaterial=50 }, outputs = { nutrientpaste=3 }, time = 1},
{inputs = { tar=50 }, outputs = { liquidoil=4 }, time = 1},
{inputs = { wastestone=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { wetdirt=50 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { fullwood1=10 }, outputs = { methanol=4 }, time = 1},
{inputs = { shroomblockglow=50 }, outputs = { agaranichor=4 }, time = 1},
{inputs = { slimedirtmaterial=50 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { spidersilkblock=50 }, outputs = { silk=3 }, time = 1},
{inputs = { supermatter=4 }, outputs = { liquidfuel=5 }, time = 1},
{inputs = { coralmaterial=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { coral2material=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { diamondblockmaterial=1 }, outputs = { diamond=4 }, time = 1},
{inputs = { sulphurdirtmaterial=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { brittlejunk=50 }, outputs = { rawminerals=3 }, time = 1},
{inputs = { brittlemetal=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { marestonematerial=50 }, outputs = { rawminerals=3 }, time = 1},
{inputs = { oystershellmaterial=50 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { rostone=50 }, outputs = { rawminerals=4 }, time = 1},
{inputs = { ebonblockmaterial=4 }, outputs = { ebonshard=5 }, time = 1},
{inputs = { elderblockmaterial=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { elderblock2material=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { elderstonematerial=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { elderstone2material=50 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { energywood=50 }, outputs = { penumbriteore=2 }, time = 1},
-- seeds
{inputs = { algaeseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { automatoseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { avesmingoseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { bananaseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { beetlesproutseed=1 }, outputs = { algaeseed=3 }, time = 1},
{inputs = { beakseedseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { biospore=1}, outputs = { shroom=3 }, time = 1},
{inputs = { biscornseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { blizzberryseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { bloodrootseed=1 }, outputs = { bloodliquid=5 }, time = 1},
{inputs = { bluemelonseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { blexplantseed=1 }, outputs = { ff_resin=3 }, time = 1},
{inputs = { boltbulbseed=1 }, outputs = { coil=2 }, time = 1},
{inputs = { bonebooseed=1 }, outputs = { bone=3 }, time = 1},
{inputs = { brackentreeseed=1 }, outputs = { silk=5 }, time = 1},
{inputs = { aquapodseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { bambooseed=1 }, outputs = { geneticmaterial=4 }, time = 1 },
{inputs = { blisterbushplantseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { caprioleplantseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { carrotseed=1 }, outputs = { cellmateria=3 }, time = 1},
{inputs = { chiliseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { coffeeseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { coralcreepseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { cornseed=1 }, outputs = { geneticmaterial=2 }, time = 1},
{inputs = { corvexsproutseed=1 }, outputs = { corvex=2 }, time = 1},
{inputs = { crystalplantseed=1 }, outputs = { crystal=2 }, time = 1},
{inputs = { currentcornseed=1 }, outputs = { ff_silicon=2 }, time = 1},
{inputs = { deathblossomseed=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { diodiaseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { diodiahybridseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { dirturchinseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { dragonsbeardseed=1 }, outputs = { ammoniumsulfate=2 }, time = 1},
{inputs = { energiflowerseed=1 }, outputs = { plantfibre=12 }, time = 1},
{inputs = { erithianalgaeseed=1 }, outputs = { algaeseed=3 }, time = 1},
{inputs = { eggshootseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { feathercrownseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { flowerblueseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { flowerredseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { floweryellowseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { floralytplantseed=1 }, outputs = { geneticmaterial=18 }, time = 1},
{inputs = { fubioshroomblue=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { fubioshroomgreen=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { fubioshroompurple=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { fubioshroomred=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { fubioshroomyellow=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { fayshroomseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { ghostmushroomseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { ginsengseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { goldenrootseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { goldshroomseed=1 }, outputs = { goldore=6 }, time = 1},
{inputs = { greenleafseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { guamseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { gazelemonseed=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { glarestalkseed=1 }, outputs = { eyepile=13 }, time = 1},
{inputs = { genesiberryseed=1 }, outputs = { tissueculture=18 }, time = 1},
{inputs = { goldenglowseed=1 }, outputs = { geneticmaterial=8 }, time = 1},
{inputs = { grapesseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { haleflowerseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { hopsseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { hellfireplantseed=1 }, outputs = { ammoniumsulfate=15 }, time = 1},
{inputs = { ighantseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { ignuschiliseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { ignuschili2seed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { itaseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { jillyrootseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { kiwiseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { lasherplantseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { leafshellseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { lactariusindigoseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { livingrootseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { littlerascalseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { littlegoodberryseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { melodistarseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { minkocoapodseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { mintseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { miraclegrassseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { mireurchinseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { mutaviskseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { neonmelonseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { nissseed=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { naileryseed=1 }, outputs = { rawminerals=6 }, time = 1},
{inputs = { neuropodseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { oculemonseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { mutaviskseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { oonfortaseed=1 }, outputs = { biospore=3 }, time = 1},
{inputs = { pasakavineseed=1 }, outputs = { tissueculture=3 }, time = 1},
{inputs = { pekkitseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { petrifiedrootseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { pinkloomseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { pearlpeaseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { pineappleseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { potatoseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { porphisplantseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { pussplumseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { reefpodseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { rockrootseed=1 }, outputs = { rawminerals=7 }, time = 1},
{inputs = { riceseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { sapling=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { shinyacornseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { shockshroomseed=1 }, outputs = { tissueculture=11 }, time = 1},
{inputs = { silverleafseed=1 }, outputs = { silverore=4 }, time = 1},
{inputs = { slimeplantseed=1 }, outputs = { greenslime=5 }, time = 1},
{inputs = { springvaultseed=1 }, outputs = { tissueculture=3 }, time = 1},
{inputs = { stranglevineseed=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { sugarcaneseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { teratomatoseed=1 }, outputs = { geneticmaterial=13 }, time = 1},
{inputs = { talonseedseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { tetherhookseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { thornitoxseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { tomatoseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { toxictopseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { tyvokkseed=1 }, outputs = { geneticmaterial=8 }, time = 1},
{inputs = { varanberryseed=1 }, outputs = { geneticmaterial=2 }, time = 1},
{inputs = { vextongueseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { voritseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wartweedseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { wheatseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { vashtaplantseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { wretchelseed=1 }, outputs = { tissueculture=11 }, time = 1},
{inputs = { wubstemseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { xaxseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { yellowfootseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { zathiseed=1 }, outputs = { geneticmaterial=9 }, time = 1},
{inputs = { kamaranpodsplant=1 }, outputs = { geneticmaterial=8 }, time = 5},
{inputs = { cellpodsplant=1 }, outputs = { geneticmaterial=7 }, time = 5},
{inputs = { goldenseaspongeplant=1 }, outputs = { tissueculture=7 }, time = 5},
{inputs = { snowberryseed=1 }, outputs = { tissueculture=8 }, time = 5},
{inputs = { spongeweedseed=1 }, outputs = { geneticmaterial=7 }, time = 5},
{inputs = { wildalgaeseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildautomatoseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildavesmingoseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildbananaseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildbeetlesproutseed=1 }, outputs = { algaeseed=3 }, time = 1},
{inputs = { wildbeakseedseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildbiospore=1}, outputs = { shroom=3 }, time = 1},
{inputs = { wildbiscornseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { wildblizzberryseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { wildbloodrootseed=1 }, outputs = { bloodliquid=5 }, time = 1},
{inputs = { wildbluemelonseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { wildblexplantseed=1 }, outputs = { ff_resin=3 }, time = 1},
{inputs = { wildboltbulbseed=1 }, outputs = { coil=2 }, time = 1},
{inputs = { wildbonebooseed=1 }, outputs = { bone=3 }, time = 1},
{inputs = { wildbrackentreeseed=1 }, outputs = { silk=5 }, time = 1},
{inputs = { wildaquapodseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildbambooseed=1 }, outputs = { geneticmaterial=4 }, time = 1 },
{inputs = { wildblisterbushplantseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildcaprioleplantseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildcarrotseed=1 }, outputs = { cellmateria=3 }, time = 1},
{inputs = { wildchiliseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { wildcoffeeseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildcoralcreepseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildcornseed=1 }, outputs = { geneticmaterial=2 }, time = 1},
{inputs = { wildcorvexsproutseed=1 }, outputs = { corvex=2 }, time = 1},
{inputs = { wildcrystalplantseed=1 }, outputs = { crystal=2 }, time = 1},
{inputs = { wildcurrentcornseed=1 }, outputs = { ff_silicon=2 }, time = 1},
{inputs = { wilddeathblossomseed=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { wilddiodiaseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { wilddiodiahybridseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wilddirturchinseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wilddragonsbeardseed=1 }, outputs = { ammoniumsulfate=2 }, time = 1},
{inputs = { wildenergiflowerseed=1 }, outputs = { plantfibre=12 }, time = 1},
{inputs = { wilderithianalgaeseed=1 }, outputs = { algaeseed=3 }, time = 1},
{inputs = { wildeggshootseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildfeathercrownseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildflowerblueseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { wildflowerredseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { wildfloweryellowseed=1 }, outputs = { geneticmaterial=3 }, time = 1},
{inputs = { wildfloralytplantseed=1 }, outputs = { geneticmaterial=18 }, time = 1},
{inputs = { wildfubioshroomblue=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { wildfubioshroomgreen=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { wildfubioshroompurple=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { wildfubioshroomred=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { wildfubioshroomyellow=1 }, outputs = { biospore=5 }, time = 1},
{inputs = { wildfayshroomseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildghostmushroomseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildginsengseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildgoldenrootseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildgoldshroomseed=1 }, outputs = { goldore=6 }, time = 1},
{inputs = { wildgreenleafseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildguamseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildgazelemonseed=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { wildglarestalkseed=1 }, outputs = { eyepile=13 }, time = 1},
{inputs = { wildgenesiberryseed=1 }, outputs = { tissueculture=18 }, time = 1},
{inputs = { wildgoldenglowseed=1 }, outputs = { geneticmaterial=8 }, time = 1},
{inputs = { wildgrapesseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildhaleflowerseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { wildhopsseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildhellfireplantseed=1 }, outputs = { ammoniumsulfate=15 }, time = 1},
{inputs = { wildighantseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { wildignuschiliseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildignuschili2seed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wilditaseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildjillyrootseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildkiwiseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildlasherplantseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { wildleafshellseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { wildlactariusindigoseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildlivingrootseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildlittlerascalseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildlittlegoodberryseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildmelodistarseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { wildminkocoapodseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildmintseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildmiraclegrassseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildmireurchinseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildmutaviskseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildneonmelonseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildnissseed=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { wildnaileryseed=1 }, outputs = { rawminerals=6 }, time = 1},
{inputs = { wildneuropodseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { wildoculemonseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { wildmutaviskseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildoonfortaseed=1 }, outputs = { biospore=3 }, time = 1},
{inputs = { wildpasakavineseed=1 }, outputs = { tissueculture=3 }, time = 1},
{inputs = { wildpekkitseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { wildpetrifiedrootseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildpinkloomseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { wildpearlpeaseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { wildpineappleseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { wildpotatoseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildporphisplantseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { wildpussplumseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { wildreefpodseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildrockrootseed=1 }, outputs = { rawminerals=7 }, time = 1},
{inputs = { wildriceseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { wildshinyacornseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { wildshockshroomseed=1 }, outputs = { tissueculture=11 }, time = 1},
{inputs = { wildsilverleafseed=1 }, outputs = { silverore=4 }, time = 1},
{inputs = { wildslimeplantseed=1 }, outputs = { greenslime=5 }, time = 1},
{inputs = { wildspringvaultseed=1 }, outputs = { tissueculture=3 }, time = 1},
{inputs = { wildstranglevineseed=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { wildsugarcaneseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildteratomatoseed=1 }, outputs = { geneticmaterial=13 }, time = 1},
{inputs = { wildtalonseedseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { wildtetherhookseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildthornitoxseed=1 }, outputs = { geneticmaterial=7 }, time = 1},
{inputs = { wildtomatoseed=1 }, outputs = { geneticmaterial=4 }, time = 1},
{inputs = { wildtoxictopseed=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { wildtyvokkseed=1 }, outputs = { geneticmaterial=8 }, time = 1},
{inputs = { wildvaranberryseed=1 }, outputs = { geneticmaterial=2 }, time = 1},
{inputs = { wildvextongueseed=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { wildvoritseed=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { wildwartweedseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { wildwheatseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { wildvashtaplantseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { wildwretchelseed=1 }, outputs = { tissueculture=11 }, time = 1},
{inputs = { wildwubstemseed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { wildxaxseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { wildyellowfootseed=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { wildzathiseed=1 }, outputs = { geneticmaterial=9 }, time = 1},
{inputs = { wildkamaranpodsplant=1 }, outputs = { geneticmaterial=8 }, time = 5},
{inputs = { wildcellpodsplant=1 }, outputs = { geneticmaterial=7 }, time = 5},
{inputs = { wildgoldenseaspongeplant=1 }, outputs = { tissueculture=7 }, time = 5},
{inputs = { wildsnowberryseed=1 }, outputs = { tissueculture=8 }, time = 5},
{inputs = { wildspongeweedseed=1 }, outputs = { geneticmaterial=7 }, time = 5},
{inputs = { cellpods=1 }, outputs = { geneticmaterial=5 }, time = 1},
-- food / produce / plant biproduct
--from FU
{inputs = { aquapod=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { beetlesproutflower=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { biscorn=1 }, outputs = { tissueculture=9 }, time = 1},
{inputs = { blexsap=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { blisterbushplantfood=1 }, outputs = { tissueculture=3 }, time = 1},
{inputs = { blizzberry=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { bloodroot=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { bluemelon=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { capriole=1 }, outputs = { tissueculture=8 }, time = 1},
{inputs = { crystalplant=1 }, outputs = { tissueculture=12 }, time = 1},
{inputs = { diodiahybrid=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { dragonsbeard=1 }, outputs = { tissueculture=9 }, time = 1},
{inputs = { energiflower=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { fayshroom=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { floralytcandy=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { gazelemon=1 }, outputs = { tissueculture=6 }, time = 1},
{inputs = { genesiberry=1 }, outputs = { tissueculture=16 }, time = 1},
{inputs = { ghostmushroom=1 }, outputs = { tissueculture=12 }, time = 1},
{inputs = { ginseng=1 }, outputs = { tissueculture=9 }, time = 1},
{inputs = { glarestalkeye=1 }, outputs = { geneticmaterial=22 }, time = 1},
{inputs = { goldenglowleaf=1 }, outputs = { tissueculture=12 }, time = 1},
{inputs = { goldenroot=1 }, outputs = { tissueculture=12 }, time = 1},
{inputs = { goldshroom=1 }, outputs = { tissueculture=12 }, time = 1},
{inputs = { greenleaf=1 }, outputs = { tissueculture=12 }, time = 1},
{inputs = { guam=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { haleflower=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { ighantbulb=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { itahead=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { jillyroot=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { lactariusindigo=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { lasherstem=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { leafshell=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { littlegoodberry=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { littlerascal=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { livingroot=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { melodistar=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { minkocoapod=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { mint=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { miraclegrass=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { mireurchin=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { nailery=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { neuropod=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { nisscap=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { nyanifruit=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { onion=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { pasaka=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { pearlfruit=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { pekkit=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { petrifiedroot=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { pinkloom=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { porphisblossom=1 }, outputs = { tissueculture=4 }, time = 1},
{inputs = { rockroot=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { shinyacorn=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { silverleaf=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { slimeleaf=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { springvaultcoil=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { stranglevineroot=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { talonseed=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { tearnut=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { teratomato=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { tetherhookwheel=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { thornitox=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { toxicflower=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { tyvokkhook=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { varanberry=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { vashtaclaw=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { vextonguestamen=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { voritcap=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { wretchel=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { wubstem=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { xaxwing=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { yellowfoot=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { zathitails=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { erithianalgae=1 }, outputs = { tissueculture=10 }, time = 1},
{inputs = { peach=1 }, outputs = { tissueculture=10 }, time = 5},
{inputs = { pear=1 }, outputs = { tissueculture=10 }, time = 5},
{inputs = { kamaranpods=1 }, outputs = { tissueculture=10 }, time = 5},
{inputs = { cellpods=1 }, outputs = { tissueculture=10 }, time = 5},
{inputs = { goldenseasponge=1 }, outputs = { tissueculture=10 }, time = 5},
{inputs = { snowberry=1 }, outputs = { tissueculture=10 }, time = 5},
{inputs = { spongeweed=1 }, outputs = { tissueculture=10 }, time = 5},
--from vanilla
{inputs = { plantfibre=50 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { alienfruit=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { cacti=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { chili=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { carrot=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { coffeebeans=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { coralcreep=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { corn=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { crystalplant=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { currentcorn=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { diodia=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { dirturchin=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { eggshoot=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { feathercrown=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { grapes=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { greenapple=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { kelp=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { kiwi=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { neonmelon=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { oculemon=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { orange=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { pearlpea=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { pineapple=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { potato=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { pussplum=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { redapple=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { reefpod=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { rice=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { shroom=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { sugar=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { thornfruit=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { tomato=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { toxictop=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { wartweed=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { wheat=1 }, outputs = { tissueculture=5 }, time = 1},
{inputs = { alienmeat=1 }, outputs = { geneticmaterial=8 }, time = 1},
{inputs = { cookedalienmeat=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { cookedbacon=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { cookedfish=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { cookedfleshlump=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { cookedham=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { cookedpoultry=1 }, outputs = { geneticmaterial=6 }, time = 1},
{inputs = { cookedribmeat=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { cookedtentacle=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { meatchunks=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { offal=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { rawbacon=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { rawfish=1 }, outputs = { geneticmaterial=5 }, time = 1},
{inputs = { rawfleshlump=1 }, outputs = { geneticmaterial=8 }, time = 1},
{inputs = { soylentgreen=1 }, outputs = { geneticmaterial=8 }, time = 1},
{inputs = { rawribmeat=1 }, outputs = { geneticmaterial=8 }, time = 1},
{inputs = { rawtentacle=1 }, outputs = { geneticmaterial=8 }, time = 1},
{inputs = { wildvines=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { coconut=1 }, outputs = { tissueculture=7 }, time = 1},
{inputs = { hivebomb=1 }, outputs = { tissueculture=8 }, time = 1},
-- vanilla ores
{inputs = { coalore=1 }, outputs = { ammoniumsulfate=2 }, time = 1},
{inputs = { copperore=1 }, outputs = { rawminerals=6 }, time = 1},
{inputs = { ironore=1 }, outputs = { lead=7 }, time = 1},
{inputs = { silverore=1 }, outputs = { rawminerals=8 }, time = 1},
{inputs = { goldore=1 }, outputs = { rawminerals=8 }, time = 1},
{inputs = { corefragmentore=1 }, outputs = { ammoniumsulfate=8 }, time = 1},
{inputs = { aegisaltore=1 }, outputs = { rawminerals=9 }, time = 1},
{inputs = { platinumore=1 }, outputs = { rawminerals=9 }, time = 1},
{inputs = { prisiliteore=1 }, outputs = { rawminerals=10 }, time = 1},
{inputs = { plutoniumore=1 }, outputs = { matteritem=6 }, time = 1},
{inputs = { rubiumore=1 }, outputs = { rawminerals=8 }, time = 1},
{inputs = { moonstoneore=1 }, outputs = { rawminerals=8 }, time = 1},
{inputs = { solariumore=1 }, outputs = { rawminerals=8 }, time = 1},
{inputs = { sulphur=1 }, outputs = { rawminerals=8 }, time = 1},
{inputs = { titaniumore=1 }, outputs = { rawminerals=9 }, time = 1},
{inputs = { triangliumore=1 }, outputs = { rawminerals=8 }, time = 1},
{inputs = { uraniumore=1 }, outputs = { matteritem=7 }, time = 1},
{inputs = { lead=1 }, outputs = { rawminerals=7 }, time = 1},
{inputs = { diamond=1 }, outputs = { rawminerals=11 }, time = 1},
{inputs = { violiumore=1 }, outputs = { rawminerals=9 }, time = 1},
-- fu ores
{inputs = { mascagniteore=4 }, outputs = { ammoniumsulfate=2 }, time = 1},
{inputs = { lazuliteore=4 }, outputs = { phosphorus=2 }, time = 1},
{inputs = { magnesiumore=4 }, outputs = { magnesiumpowder=2 }, time = 1},
{inputs = { irradiumore=4 }, outputs = { rawminerals=5 }, time = 1},
{inputs = { protociteore=4 }, outputs = { rawminerals=10 }, time = 1},
{inputs = { penumbriteore=4 }, outputs = { rawminerals=10 }, time = 1},
{inputs = { cinnabarore=4 }, outputs = { rawminerals=10 }, time = 1},
{inputs = { densiniumore=4 }, outputs = { rawminerals=24 }, time = 1},
{inputs = { berliniteore=4 }, outputs = { phosphorus=3 }, time = 1},
{inputs = { corruptionore=4 }, outputs = { rawminerals=7 }, time = 1},
{inputs = { solarishard=20 }, outputs = { crystal=2 }, time = 1},
{inputs = { solaricrystal=1 }, outputs = { solarishard=6 }, time = 1},
{inputs = { matteritem=50 }, outputs = { unstableparticles=2 }, time = 1}
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
                  return false 
                end
            end
        return true
    end

return filter(recipes, function(l) return subset(l.inputs, query) end)

end
  
function update(dt)

    self.timer = self.timer - dt

--    if self.timer <= 0 then
--        if self.crafting then
--            for k,v in pairs(self.output) do
--                local leftover = world.containerAddItems(entity.id(), {item = k , count = v})
--                if leftover ~= nil then 
--                  world.spawnItem(leftover.item, entity.position(), leftover.count) 
--                end
--            end
--            self.crafting = false
--            self.output = {}
--            self.timer = self.mintick --reset timer to a safe minimum
--            entity.setAnimationState("samplingarrayanim", "idle")
--        end
--        if not self.crafting and self.timer <= 0 then --make sure we didn't just finish crafting
--            if not startCrafting(getValidRecipes(getInputContents()))
--            then self.timer = self.mintick end --set timeout if there were no recipes
--        end
--
--    end
  if self.timer <= 0 then
    if self.crafting then
        for k,v in pairs(self.output) do
            local minOutSlot = 3
            local maxOutSlot = 11
            local leftover = {item = k, count = v}
            if leftover ~= nil then
                for i = minOutSlot, maxOutSlot, 1 do
                    leftover = world.containerPutItemsAt(entity.id(), leftover, i)
                    if leftover == nil then
                        break
                    end
                end
            end
            if leftover ~= nil then
                world.spawnItem(leftover.item, entity.position(), leftover.count)
            end
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
