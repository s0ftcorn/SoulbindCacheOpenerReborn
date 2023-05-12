-- Author: Nerino1
-- Create Date : 1/8/2021
-- Version 6.4.9


local debug = false;

local _, L = ...;
SoulbindCacheOpener = {};

SoulbindCacheOpener.items = {

-- Weekly Draconic-Treatise (Disabled). If you would like to add these to the addon even though you can only use it once per week, remove the "--" from in front of the lines (11-21), save the file and /reload the game.
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Mining",["id"] = 194708,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Herbalism",["id"] = 194704,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Skinning",["id"] = 201023,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Alchemy",["id"] = 194697,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Blacksmithing",["id"] = 198454,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Enchanting",["id"] = 194702,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Engineering",["id"] = 198510,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Inscription",["id"] = 194699,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Jewelcrafting",["id"] = 194703,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Leatherworking",["id"] = 194700,["button"] = nil},
--{["name"] = "SoulbindCacheOpener_Draconic-Treatise-on-Tailoring",["id"] = 194698,["button"] = nil},

-- Test Equipment on PTR
{["name"] = "SoulbindCacheOpener_PTR-PlayTest-Equipment",["id"] = 186520,["button"] = nil},
--

--Darkmoon Faire
{["name"] = "SoulbindCacheOpener_RideTicketBook",["id"] = 92788,["button"] = nil},
--Kyrian
	-- SoulBind
{["name"] = "SoulbindCacheOpener_CleansingRiteMaterials",["id"] = 183701,["button"] = nil},

	-- Calling
{["name"] = "SoulbindCacheOpener_tributeoftheascended",["id"] = 181372,["button"] = nil},
{["name"] = "SoulbindCacheOpener_tributeoftheparagon",["id"] = 181741,["button"] = nil},

	-- Paragon
{["name"] = "SoulbindCacheOpener_AscendedSupplies",["id"] = 180647,["button"] = nil},
	
-- Night Fae
	-- SoulBind
{["name"] = "SoulbindCacheOpener_NaturesSplendor",["id"] = 183702,["button"] = nil},

	-- Calling
{["name"] = "SoulbindCacheOpener_bountyofthegrovewardens",["id"] = 181475,["button"] = nil},
{["name"] = "SoulbindCacheOpener_tributeofthewildhunt",["id"] = 181476,["button"] = nil},

	-- Paragon
{["name"] = "SoulbindCacheOpener_WildHuntSupplies",["id"] = 180649,["button"] = nil},

-- Necrolord
	-- SoulBind
{["name"] = "SoulbindCacheOpener_BonesmithsSatchel",["id"] = 183703,["button"] = nil},

	-- Calling
{["name"] = "SoulbindCacheOpener_tributeoftheambitious",["id"] = 181732,["button"] = nil},
{["name"] = "SoulbindCacheOpener_tributeofthedutybound",["id"] = 181733,["button"] = nil},

	-- Paragon
{["name"] = "SoulbindCacheOpener_SuppliesoftheUndyingArmy",["id"] = 180646,["button"] = nil},

	-- Abomination
{["name"] = "SoulbindCacheOpener_SalvagedSupplies",["id"] = 184843,["button"] = nil},

-- Venthyr
	-- SoulBind
{["name"] = "SoulbindCacheOpener_ExquisiteIngredients",["id"] = 183699,["button"] = nil},

	-- Calling
{["name"] = "SoulbindCacheOpener_tributeofthecourt",["id"] = 181556,["button"] = nil},
{["name"] = "SoulbindCacheOpener_favorofthecourt",["id"] = 181557,["button"] = nil},

	-- Paragon
{["name"] = "SoulbindCacheOpener_CourtofHarvestersSupplies",["id"] = 180648,["button"] = nil},

-- Command Table	
{["name"] = "SoulbindCacheOpener_AdventurersMiningCache",["id"] = 184635,["button"] = nil},
{["name"] = "SoulbindCacheOpener_champions-mining-cache",["id"] = 184641,["button"] = nil},
{["name"] = "SoulbindCacheOpener_heros-mining-cache",["id"] = 184646,["button"] = nil},
{["name"] = "SoulbindCacheOpener_AdventurersTailoringCache",["id"] = 184630,["button"] = nil},
{["name"] = "SoulbindCacheOpener_champions-tailoring-cache",["id"] = 184639,["button"] = nil},
{["name"] = "SoulbindCacheOpener_heros-tailoring-cache",["id"] = 184644,["button"] = nil},
{["name"] = "SoulbindCacheOpener_AdventurersEnchantingCache",["id"] = 184631,["button"] = nil},
{["name"] = "SoulbindCacheOpener_champions-enchanting-cache",["id"] = 184643,["button"] = nil},
{["name"] = "SoulbindCacheOpener_heros-enchanting-cache",["id"] = 184648,["button"] = nil},
{["name"] = "SoulbindCacheOpener_AdventurersHerbalismCache",["id"] = 184634,["button"] = nil},
{["name"] = "SoulbindCacheOpener_heros-herbalism-cache",["id"] = 184647,["button"] = nil},
{["name"] = "SoulbindCacheOpener_champions-herbalism-cache",["id"] = 184642,["button"] = nil},
{["name"] = "SoulbindCacheOpener_AdventurersSkinningCache",["id"] = 184636,["button"] = nil},
{["name"] = "SoulbindCacheOpener_champions-skinning-cache",["id"] = 184640,["button"] = nil},
{["name"] = "SoulbindCacheOpener_heros-skinning-cache",["id"] = 184645,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ChampionsFishCache",["id"] = 184632,["button"] = nil},
{["name"] = "SoulbindCacheOpener_heros-fish-cache",["id"] = 184638,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ChampionsMeatCache",["id"] = 184633,["button"] = nil},
{["name"] = "SoulbindCacheOpener_heros-meat-cache",["id"] = 184637,["button"] = nil},

-- Queen's Conservatory
{["name"] = "SoulbindCacheOpener_novicessatchel",["id"] = 180974,["button"] = nil},
{["name"] = "SoulbindCacheOpener_noviceslargesatchel",["id"] = 180981,["button"] = nil},
{["name"] = "SoulbindCacheOpener_novicesstuffedsatchel",["id"] = 180985,["button"] = nil},
{["name"] = "SoulbindCacheOpener_novicesoverflowingsatchel",["id"] = 180989,["button"] = nil},
{["name"] = "SoulbindCacheOpener_journeymanssatchel",["id"] = 180975,["button"] = nil},
{["name"] = "SoulbindCacheOpener_journeymanslargesatchel",["id"] = 180980,["button"] = nil},
{["name"] = "SoulbindCacheOpener_journeymansstuffedsatchel",["id"] = 180984,["button"] = nil},
{["name"] = "SoulbindCacheOpener_journeymansoverflowingsatchel",["id"] = 180988,["button"] = nil},
{["name"] = "SoulbindCacheOpener_artisanssatchel",["id"] = 180976,["button"] = nil},
{["name"] = "SoulbindCacheOpener_artisanslargesatchel",["id"] = 180979,["button"] = nil},
{["name"] = "SoulbindCacheOpener_artisansstuffedsatchel",["id"] = 180983,["button"] = nil},
{["name"] = "SoulbindCacheOpener_spirittenderssatchel",["id"] = 180977,["button"] = nil},

-- The Maw
{["name"] = "SoulbindCacheOpener_FallenAdventurersCache",["id"] = 184395,["button"] = nil},

-- Torghast
{["name"] = "SoulbindCacheOpener_BloodedSatchel",["id"] = 171209,["button"] = nil},
{["name"] = "SoulbindCacheOpener_SatchelofNaturesBounty",["id"] = 171210,["button"] = nil},
{["name"] = "SoulbindCacheOpener_VenthyrsCoinPurse",["id"] = 171211,["button"] = nil},

-- Revendreth
{["name"] = "SoulbindCacheOpener_PouchofShinies",["id"] = 178128,["button"] = nil},

-- Blingtron
{["name"] = "SoulbindCacheOpener_blingtron-4000-gift-package",["id"] = 86623,["button"] = nil},
{["name"] = "SoulbindCacheOpener_blingtron-5000-gift-package",["id"] = 113258,["button"] = nil},
{["name"] = "SoulbindCacheOpener_blingtron-6000-gift-package",["id"] = 132892,["button"] = nil},
{["name"] = "SoulbindCacheOpener_blingtron-7000-gift-package",["id"] = 168740,["button"] = nil},

-- Timewalking Cata
{["name"] = "SoulbindCacheOpener_cacheofnathriantreasures",["id"] = 184869,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cacheofnathriantreasures",["id"] = 184868,["button"] = nil},

-- LFG Call to Arms
{["name"] = "SoulbindCacheOpener_veiledsatchelofcooperation",["id"] = 184522,["button"] = nil},
	
-- Noblegarden
{["name"] = "SoulbindCacheOpener_brightlycoloredegg",["id"] = 45072,["button"] = nil},
	
-- Added by Z	
{["name"] = "SoulbindCacheOpener_GreaterDarkmoonPetSupplies",["id"] = 116062,["button"] = nil},
{["name"] = "SoulbindCacheOpener_TravelersPetSupplies",["id"] = 122535,["button"] = nil},
{["name"] = "SoulbindCacheOpener_BigBagofPetSupplies",["id"] = 118697,["button"] = nil},
{["name"] = "SoulbindCacheOpener_DarkmoonPetSupplies",["id"] = 91086,["button"] = nil},	

-- 9.1 Korthia
{["name"] = "SoulbindCacheOpener_tormentorscache",["id"] = 185972,["button"] = nil},	
{["name"] = "SoulbindCacheOpener_AbandonedBrokerSatchel",["id"] = 187354,["button"] = nil},

-- Assault Rewards	
{["name"] = "SoulbindCacheOpener_WarChestoftheUndyingArmy",["id"] = 185992,["button"] = nil},
{["name"] = "SoulbindCacheOpener_WarChestoftheWildHunt",["id"] = 185991,["button"] = nil},
{["name"] = "SoulbindCacheOpener_AscendedWarChest",["id"] = 185993,["button"] = nil},
{["name"] = "SoulbindCacheOpener_HarvestersWarChest",["id"] = 185990,["button"] = nil},
{["name"] = "SoulbindCacheOpener_DeathsAdvanceWarChest",["id"] = 186196,["button"] = nil},
{["name"] = "SoulbindCacheOpener_DeathsAdvanceWarChest2",["id"] = 187543,["button"] = nil},

-- Added by modrogon
{["name"] = "SoulbindCacheOpener_FeatherStuffedHelm",["id"] = 187440,["button"] = nil},
{["name"] = "SoulbindCacheOpener_DivinersRuneChit",["id"] = 185963,["button"] = nil},
{["name"] = "SoulbindCacheOpener_TalonPiercedMawswornLockbox",["id"] = 187278,["button"] = nil},
	
--Korthia Cache
{["name"] = "SoulbindCacheOpener_KorthianMeatCache",["id"] = 187577,["button"] = nil},
{["name"] = "SoulbindCacheOpener_KorthianSkinningCache",["id"] = 187576,["button"] = nil},
{["name"] = "SoulbindCacheOpener_KorthianFishingCache",["id"] = 187575,["button"] = nil},
{["name"] = "SoulbindCacheOpener_MysteriousGiftfromVenari",["id"] = 187029,["button"] = nil},
{["name"] = "SoulbindCacheOpener_FeedersHandandKey",["id"] = 186970,["button"] = nil},
{["name"] = "SoulbindCacheOpener_CacheofSanctumTreasures226",["id"] = 186531,["button"] = nil},
{["name"] = "SoulbindCacheOpener_CacheofSanctumTreasures239",["id"] = 186533,["button"] = nil},
{["name"] = "SoulbindCacheOpener_CacheofSanctumTreasures239",["id"] = 187574,["button"] = nil},
{["name"] = "SoulbindCacheOpener_BrokersEnchantingMoteofPotentiation",["id"] = 187573,["button"] = nil},
{["name"] = "SoulbindCacheOpener_BrokersHerbalismMoteofPotentiation",["id"] = 187572,["button"] = nil},
{["name"] = "SoulbindCacheOpener_BrokersTailoringMoteofPotentiation",["id"] = 187569,["button"] = nil},
{["name"] = "SoulbindCacheOpener_BrokersSkinningMoteofPotentiation",["id"] = 187570,["button"] = nil},
{["name"] = "SoulbindCacheOpener_BrokersMiningMoteofPotentiation",["id"] = 187571,["button"] = nil},
{["name"] = "SoulbindCacheOpener_LostMemento",["id"] = 187346,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledBoot",["id"] = 186680,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledCrate",["id"] = 186707,["button"] = nil},
{["name"] = "SoulbindCacheOpener_SmallKorthianSupplyChest",["id"] = 187551,["button"] = nil},
{["name"] = "SoulbindCacheOpener_DeathsAdvanceSupplies",["id"] = 186650,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledHat",["id"] = 186706,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledWashBucket",["id"] = 186688,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledPaintBrushCup",["id"] = 186708,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledChalice",["id"] = 186705,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledSatchel",["id"] = 186691,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledBarrel",["id"] = 186690,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledHelmet",["id"] = 186692,["button"] = nil},
{["name"] = "SoulbindCacheOpener_GoldFilledWheelbarrow",["id"] = 186693,["button"] = nil},
{["name"] = "SoulbindCacheOpener_SuppliesoftheArchivistsCodex",["id"] = 187028,["button"] = nil},
{["name"] = "SoulbindCacheOpener_StygicCluster",["id"] = 187351,["button"] = nil},	

-- Brewfest
{["name"] = "SoulbindCacheOpener_KegShapedTreasureChest",["id"] = 117393,["button"] = nil},

--Hallows end
{["name"] = "SoulbindCacheOpener_LootStuffedPumpkin",["id"] = 149574,["button"] = nil},
{["name"] = "SoulbindCacheOpener_LootFilledPumpkinRare",["id"] = 54516,["button"] = nil},
{["name"] = "SoulbindCacheOpener_LootFilledPumpkinEpic",["id"] = 117392,["button"] = nil},
{["name"] = "SoulbindCacheOpener_HandfulofTreats",["id"] = 37586,["button"] = nil},
	
-- Patch 9.2
{["name"] = "SoulbindCacheOpener_olea-cache",["id"] = 187781,["button"] = nil},
{["name"] = "SoulbindCacheOpener_overflowing-chest-of-riches",["id"] = 191303,["button"] = nil},
{["name"] = "SoulbindCacheOpener_enlightened-broker-supplies",["id"] = 187780,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ephemera-orb",["id"] = 187787,["button"] = nil},
{["name"] = "SoulbindCacheOpener_bottled-night-sky",["id"] = 191302,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cosmic-flux-parcel",["id"] = 191030,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cache-of-sepulcher-treasures252",["id"] = 191040,["button"] = nil},
{["name"] = "SoulbindCacheOpener_pouch-of-protogenic-provisions",["id"] = 190178,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cache-of-sepulcher-treasures2521",["id"] = 190655,["button"] = nil},
{["name"] = "SoulbindCacheOpener_treatise-on-patterns-in-the-purpose",["id"] = 191301,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cache-of-sepulcher-treasures265",["id"] = 190656,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cache-of-sepulcher-treasures2651",["id"] = 191041,["button"] = nil},
{["name"] = "SoulbindCacheOpener_firims-mysterious-cache",["id"] = 190823,["button"] = nil},
{["name"] = "SoulbindCacheOpener_tribute-of-the-enlightened-elders1",["id"] = 191139,["button"] = nil},
{["name"] = "SoulbindCacheOpener_tribute-of-the-enlightened-elders2",["id"] = 190610,["button"] = nil},
{["name"] = "SoulbindCacheOpener_bag-of-explored-souls",["id"] = 191701,["button"] = nil},

--Patch 9.25
{["name"] = "SoulbindCacheOpener_cache-of-fated-treasures278",["id"] = 192437,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cache-of-fated-treasures291",["id"] = 192438,["button"] = nil},
	
-- 2022 Anniversary	
{["name"] = "SoulbindCacheOpener_anniversary-gift2022",["id"] = 187710,["button"] = nil},
	
-- Pet Bags
{["name"] = "SoulbindCacheOpener_sack-of-pet-supplies",["id"] = 89125,["button"] = nil},
{["name"] = "SoulbindCacheOpener_fabled-pandaren-pet-supplies",["id"] = 94207,["button"] = nil},
	
-- Legion Rep Chests
{["name"] = "SoulbindCacheOpener_dreamweaver-provisions",["id"] = 157822,["button"] = nil},
{["name"] = "SoulbindCacheOpener_kirin-tor-chest",["id"] = 157828,["button"] = nil},
{["name"] = "SoulbindCacheOpener_brittle-krokul-chest",["id"] = 152922,["button"] = nil},
{["name"] = "SoulbindCacheOpener_wardens-field-kit",["id"] = 157827,["button"] = nil},
{["name"] = "SoulbindCacheOpener_wardens-supply-kit",["id"] = 152107,["button"] = nil},
	
-- 9.0 command table
{["name"] = "SoulbindCacheOpener_bulging-collection-of-random-bits",["id"] = 183883,["button"] = nil},
	
-- MoP
{["name"] = "SoulbindCacheOpener_Cache-of-Vault-Treasures",["id"] = 104272,["button"] = nil},
{["name"] = "SoulbindCacheOpener_stormtouched-cache",["id"] = 95602,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cache-of-sha-touched-gold",["id"] = 90839,["button"] = nil},
{["name"] = "SoulbindCacheOpener_fel-touched-pet-supplies",["id"] = 94159,["button"] = nil},
{["name"] = "SoulbindCacheOpener_marauders-gleaming-sack-of-gold",["id"] = 90840,["button"] = nil},
{["name"] = "SoulbindCacheOpener_spoils-of-the-thunder-king",["id"] = 97153,["button"] = nil},
{["name"] = "SoulbindCacheOpener_small-bag-of-goods",["id"] = 87217,["button"] = nil},
	
--Mechagon
{["name"] = "SoulbindCacheOpener_azeroth-mini-pack-mechagon",["id"] = 169850,["button"] = nil},
{["name"] = "SoulbindCacheOpener_strange-recycling-requisition",["id"] = 168266,["button"] = nil},
{["name"] = "SoulbindCacheOpener_recycling-requisition",["id"] = 168264,["button"] = nil},
	
--pet bags
{["name"] = "SoulbindCacheOpener_torn-sack-of-pet-supplies",["id"] = 142447,["button"] = nil},
{["name"] = "SoulbindCacheOpener_grummlepouch",["id"] = 184866,["button"] = nil},
{["name"] = "SoulbindCacheOpener_fel-touched-pet-supplies",["id"] = 127751,["button"] = nil},
	
-- BfA Paragon chests
{["name"] = "SoulbindCacheOpener_honorbound-supplies",["id"] = 166299,["button"] = nil},
	
-- vanilla
{["name"] = "SoulbindCacheOpener_small-barnacled-clam",["id"] = 5523,["button"] = nil},

-- Legion Rep Chests
{["name"] = "SoulbindCacheOpener_valarjar-cache",["id"] = 157824,["button"] = nil},
	
-- Pilgrim's Bounty
{["name"] = "SoulbindCacheOpener_pilgrims-bounty",["id"] = 116404,["button"] = nil},

-- Patch 10.0.2 Pre-Patch
{["name"] = "SoulbindCacheOpener_Immaculate-Sac-of-Swog-Treasures",["id"] = 202102,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Weighted-Sac-of-Swog-Treasures",["id"] = 199342,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Primal-Chaos-Cluster",["id"] = 202122,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Curiously-Shaped-Stomach",["id"] = 201462,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Dragonbane-Keep-Strongbox",["id"] = 202142,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Obsidian-Forgemaster's-Strongbox",["id"] = 201755,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Jeweled-Dragon's-Heart",["id"] = 202059,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Docile-Frosty-Soul",["id"] = 201299,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Twilight-Strongbox",["id"] = 201818,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Queen's-Gift",["id"] = 202048,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Jeweled-Dragon's-Heart",["id"] = 202053,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Victorious-Contender's-Strongbox",["id"] = 201250,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Docile-Fiery-Soul",["id"] = 201298,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Earthwarden's-Prize",["id"] = 202051,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Keeper's-Glory",["id"] = 202056,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Docile-Airy-Soul",["id"] = 201296,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Bag-of-Leather-Reagents",["id"] = 201352,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Dreamer's-Vision",["id"] = 202049,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Queen's-Gift",["id"] = 202054,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Earthwarden's-Prize",["id"] = 202057,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Topped-Trunk-of-Disenchanted-Detritus",["id"] = 202101,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Bag-of-Cloth-Armor-Reagents",["id"] = 201343,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Cache-of-Vault-Treasures",["id"] = 202080,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Crowded-Crate-of-Mined-Materials",["id"] = 202098,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Docile-Earthen-Soul",["id"] = 201297,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Bag-of-Mail-Armor-Reagents",["id"] = 201353,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Bag-of-Plate-Armor-Reagents",["id"] = 201354,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Bulging-Coin-Purse",["id"] = 201756,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Twilight-Cache",["id"] = 201817,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Timewatcher's-Patience",["id"] = 202052,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Dragon-Purse",["id"] = 202171,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Pillaged-Contender's-Strongbox",["id"] = 201251,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Draconic-Satchel-of-Cooperation",["id"] = 201326,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Renewed-Dream",["id"] = 201439,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Vakril's-Strongbox",["id"] = 201728,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Plundered-Supplies",["id"] = 201757,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Keeper's-Glory",["id"] = 202050,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Dreamer's-Vision",["id"] = 202055,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Timewatcher's-Patience",["id"] = 202058,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Bulging-Box-of-Skins-and-Scales",["id"] = 202097,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Populous-Pack-of-Castoff-Cloth",["id"] = 202100,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Immaculate-Sac-of-Swog-Treasures",["id"] = 202103,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Weighted-Sac-of-Swog-Treasures",["id"] = 202104,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Overflowing-Satchel-of-Coins",["id"] = 202172,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Obsidian-Forgemaster's-Cache",["id"] = 201754,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Cache-of-Vault-Treasures",["id"] = 202079,["button"] = nil},
{["name"] = "SoulbindCacheOpener_earthbound-tome",["id"] = 194741,["button"] = nil},
	
-- Dragonflight Crafting
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge1",["id"] = 201700,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge2",["id"] = 201705,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge3",["id"] = 201706,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge4",["id"] = 201708,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge5",["id"] = 201709,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge6",["id"] = 201710,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge7",["id"] = 201711,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge8",["id"] = 201713,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge9",["id"] = 201714,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge10",["id"] = 201715,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge11",["id"] = 201716,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge12",["id"] = 201717,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Notebook-of-Crafting-Knowledge14",["id"] = 201718,["button"] = nil},
	
-- Fishing
{["name"] = "SoulbindCacheOpener_Draconic-Recipe-in-a-Bottle",["id"] = 198438,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Aged-Recipe-in-a-Bottle",["id"] = 198439,["button"] = nil},

-- Mining Knowledge
{["name"] = "SoulbindCacheOpener_Elementally-Charged-Stone",["id"] = 202011,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Heated-Ore-Sample",["id"] = 194039,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Unyielding-Stone-Chunk",["id"] = 194062,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Iridescent-Ore-Fragments",["id"] = 201300,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Iridescent-Ore",["id"] = 201301,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Mining-Field-Notes",["id"] = 199122,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Dusty-Miner's-Notes",["id"] = 200981,["button"] = nil},

-- Herbalism Knowledge
{["name"] = "SoulbindCacheOpener_Infused-Pollen",["id"] = 202014,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Dreambloom-Petal",["id"] = 200677,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Dreambloom",["id"] = 200678,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Herbalism-Field-Notes",["id"] = 199115,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Dusty-Herbalist's-Notes",["id"] = 200980,["button"] = nil},

-- Skinning Knowledge
{["name"] = "SoulbindCacheOpener_Curious-Hide-Scraps",["id"] = 198837,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Saturated-Bone",["id"] = 202016,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Large-Sample-of-Curious-Hide",["id"] = 198841,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Skinning-Field-Notes",["id"] = 199128,["button"] = nil},
{["name"] = "SoulbindCacheOpener_Dusty-Skinner's-Notes",["id"] = 200982,["button"] = nil},

-- Alchemy Knowledge
{["name"] = "SoulbindCacheOpener_Dusty-Alchemist's-Research",["id"] = 200974,["button"] = nil},

-- Blacksmithing Knowledge
{["name"] = "SoulbindCacheOpener_Dusty-Blacksmith's-Diagrams",["id"] = 200972,["button"] = nil},

-- Enchanting Knowledge
{["name"] = "SoulbindCacheOpener_Dusty-Enchanter's-Research",["id"] = 200976,["button"] = nil},

-- Engineering Knowledge
{["name"] = "SoulbindCacheOpener_Dusty-Engineer's-Scribblings",["id"] = 200977,["button"] = nil},

-- Inscription Knowledge
{["name"] = "SoulbindCacheOpener_Dusty-Scribe's-Runic-Drawings",["id"] = 200973,["button"] = nil},

-- Jewelcrafting Knowledge
{["name"] = "SoulbindCacheOpener_Dusty-Jeweler's-Illustrations",["id"] = 200978,["button"] = nil},

-- Leatherworking Knowledge
{["name"] = "SoulbindCacheOpener_Dusty-Leatherworker's-Diagrams",["id"] = 200979,["button"] = nil},

-- Tailoring Knowledge
{["name"] = "SoulbindCacheOpener_Dusty-Tailor's-Diagrams",["id"] = 200975,["button"] = nil},

-- Knowledge Treasures
{["name"] = "SoulbindCacheOpener_experimental-decay-sample",["id"] = 198599,["button"] = nil},
{["name"] = "SoulbindCacheOpener_painters-pretty-jewel",["id"] = 198656,["button"] = nil},
{["name"] = "SoulbindCacheOpener_decay-infused-tanning-oil",["id"] = 198658,["button"] = nil},
{["name"] = "SoulbindCacheOpener_forgetful-apprentices-tome",["id"] = 198659,["button"] = nil},
{["name"] = "SoulbindCacheOpener_fragmented-key",["id"] = 198660,["button"] = nil},
{["name"] = "SoulbindCacheOpener_intriguing-bolt-of-blue-cloth",["id"] = 198662,["button"] = nil},
{["name"] = "SoulbindCacheOpener_frostforged-potion",["id"] = 198663,["button"] = nil},
{["name"] = "SoulbindCacheOpener_crystalline-overgrowth",["id"] = 198664,["button"] = nil},
{["name"] = "SoulbindCacheOpener_spare-djaradin-tools",["id"] = 198667,["button"] = nil},
{["name"] = "SoulbindCacheOpener_how-to-train-your-whelpling",["id"] = 198669,["button"] = nil},
{["name"] = "SoulbindCacheOpener_lofty-malygite",["id"] = 198670,["button"] = nil},
{["name"] = "SoulbindCacheOpener_lava-infused-seed",["id"] = 198675,["button"] = nil},
{["name"] = "SoulbindCacheOpener_decaying-brackenhide-blanket",["id"] = 198680,["button"] = nil},
{["name"] = "SoulbindCacheOpener_alexstraszite-cluster",["id"] = 198682,["button"] = nil},
{["name"] = "SoulbindCacheOpener_treated-hides",["id"] = 198683,["button"] = nil},
{["name"] = "SoulbindCacheOpener_miniature-bronze-dragonflight-banner",["id"] = 198684,["button"] = nil},
{["name"] = "SoulbindCacheOpener_well-insulated-mug",["id"] = 198685,["button"] = nil},
{["name"] = "SoulbindCacheOpener_frosted-parchment",["id"] = 198686,["button"] = nil},
{["name"] = "SoulbindCacheOpener_closely-guarded-shiny",["id"] = 198687,["button"] = nil},
{["name"] = "SoulbindCacheOpener_stormbound-horn",["id"] = 198689,["button"] = nil},
{["name"] = "SoulbindCacheOpener_decayed-scales",["id"] = 198690,["button"] = nil},
{["name"] = "SoulbindCacheOpener_noteworthy-scrap-of-carpet",["id"] = 198692,["button"] = nil},
{["name"] = "SoulbindCacheOpener_dusty-darkmoon-card",["id"] = 198693,["button"] = nil},
{["name"] = "SoulbindCacheOpener_enriched-earthen-shard",["id"] = 198694,["button"] = nil},
{["name"] = "SoulbindCacheOpener_wind-blessed-hide",["id"] = 198696,["button"] = nil},
{["name"] = "SoulbindCacheOpener_contraband-concoction",["id"] = 198697,["button"] = nil},
{["name"] = "SoulbindCacheOpener_mysterious-banner",["id"] = 198699,["button"] = nil},
{["name"] = "SoulbindCacheOpener_itinerant-singed-fabric",["id"] = 198702,["button"] = nil},
{["name"] = "SoulbindCacheOpener_sign-language-reference-sheet",["id"] = 198703,["button"] = nil},
{["name"] = "SoulbindCacheOpener_pulsing-earth-rune",["id"] = 198704,["button"] = nil},
{["name"] = "SoulbindCacheOpener_canteen-of-suspicious-water",["id"] = 198710,["button"] = nil},
{["name"] = "SoulbindCacheOpener_poachers-pack",["id"] = 198711,["button"] = nil},
{["name"] = "SoulbindCacheOpener_firewater-powder-sample",["id"] = 198712,["button"] = nil},
{["name"] = "SoulbindCacheOpener_intact-coil-capacitor",["id"] = 198789,["button"] = nil},
{["name"] = "SoulbindCacheOpener_flashfrozen-scroll",["id"] = 198798,["button"] = nil},
{["name"] = "SoulbindCacheOpener_forgotten-arcane-tome",["id"] = 198799,["button"] = nil},
{["name"] = "SoulbindCacheOpener_fractured-titanic-sphere",["id"] = 198800,["button"] = nil},
{["name"] = "SoulbindCacheOpener_furry-gloop",["id"] = 201003,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-spear-shards",["id"] = 201004,["button"] = nil},
{["name"] = "SoulbindCacheOpener_curious-ingots",["id"] = 201005,["button"] = nil},
{["name"] = "SoulbindCacheOpener_draconic-flux",["id"] = 201006,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-monument",["id"] = 201007,["button"] = nil},
{["name"] = "SoulbindCacheOpener_molten-ingot",["id"] = 201008,["button"] = nil},
{["name"] = "SoulbindCacheOpener_falconer-gauntlet-drawings",["id"] = 201009,["button"] = nil},
{["name"] = "SoulbindCacheOpener_qalashi-weapon-diagram",["id"] = 201010,["button"] = nil},
{["name"] = "SoulbindCacheOpener_spelltouched-tongs",["id"] = 201011,["button"] = nil},
{["name"] = "SoulbindCacheOpener_enchanted-debris",["id"] = 201012,["button"] = nil},
{["name"] = "SoulbindCacheOpener_faintly-enchanted-remains",["id"] = 201013,["button"] = nil},
{["name"] = "SoulbindCacheOpener_boomthyr-rocket",["id"] = 201014,["button"] = nil},
{["name"] = "SoulbindCacheOpener_counterfeit-darkmoon-deck",["id"] = 201015,["button"] = nil},
{["name"] = "SoulbindCacheOpener_harmonic-crystal-harmonizer",["id"] = 201016,["button"] = nil},
{["name"] = "SoulbindCacheOpener_igneous-gem",["id"] = 201017,["button"] = nil},
{["name"] = "SoulbindCacheOpener_well-danced-drum",["id"] = 201018,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-dragonweave-bolt",["id"] = 201019,["button"] = nil},
{["name"] = "SoulbindCacheOpener_silky-surprise",["id"] = 201020,["button"] = nil},
{["name"] = "SoulbindCacheOpener_eroded-titan-gizmo",["id"] = 193902,["button"] = nil},	

-- Consortium Quartermaster
{["name"] = "SoulbindCacheOpener_rare-blacksmiths-diagrams",["id"] = 201268,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-scribes-runic-drawings",["id"] = 201269,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-alchemists-research",["id"] = 201270,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-tailors-diagrams",["id"] = 201271,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-enchanters-research",["id"] = 201272,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-engineers-scribblings",["id"] = 201273,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-jewelers-illustrations",["id"] = 201274,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-leatherworkers-diagrams",["id"] = 201275,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-herbalists-notes",["id"] = 201276,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-miners-notes",["id"] = 201277,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rare-skinners-notes",["id"] = 201278,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-blacksmiths-diagrams",["id"] = 201279,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-scribes-runic-drawings",["id"] = 201280,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-alchemists-research",["id"] = 201281,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-tailors-diagrams",["id"] = 201282,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-enchanters-research",["id"] = 201283,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-engineers-scribblings",["id"] = 201284,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-jewelers-illustrations",["id"] = 201285,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-leatherworkers-diagrams",["id"] = 201286,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-herbalists-notes",["id"] = 201287,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-miners-notes",["id"] = 201288,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ancient-skinners-notes",["id"] = 201289,["button"] = nil},
{["name"] = "SoulbindCacheOpener_life-pools-watering-can",["id"] = 194418,["button"] = nil},
{["name"] = "SoulbindCacheOpener_i-o-u",["id"] = 198790,["button"] = nil},
{["name"] = "SoulbindCacheOpener_dull-spined-clam",["id"] = 198395,["button"] = nil},
{["name"] = "SoulbindCacheOpener_crowded-crate-of-mined-materials",["id"] = 202098,["button"] = nil},
{["name"] = "SoulbindCacheOpener_bulging-box-of-skins-and-scales",["id"] = 202097,["button"] = nil},
{["name"] = "SoulbindCacheOpener_stocked-sack-of-hale-herbs",["id"] = 202099,["button"] = nil},
{["name"] = "SoulbindCacheOpener_populous-pack-of-castoff-cloth",["id"] = 202100,["button"] = nil},
{["name"] = "SoulbindCacheOpener_topped-trunk-of-disenchanted-detritus",["id"] = 202101,["button"] = nil},
{["name"] = "SoulbindCacheOpener_obsidian-cache",["id"] = 200069,["button"] = nil},
{["name"] = "SoulbindCacheOpener_obsidian-strongbox",["id"] = 200070,["button"] = nil},
{["name"] = "SoulbindCacheOpener_obsidian-forgemasters-cache",["id"] = 201754,["button"] = nil},
{["name"] = "SoulbindCacheOpener_obsidian-forgemasters-strongbox",["id"] = 201755,["button"] = nil},
{["name"] = "SoulbindCacheOpener_twilight-cache",["id"] = 201817,["button"] = nil},
{["name"] = "SoulbindCacheOpener_twilight-strongbox",["id"] = 201818,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-gold-and-black-armor",["id"] = 197346,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-silver-and-blue-armor",["id"] = 197347,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-silver-and-purple-armor",["id"] = 197350,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-gold-and-red-armor",["id"] = 197351,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-steel-and-yellow-armor",["id"] = 197352,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-horned-back",["id"] = 197354,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-thick-spined-jaw",["id"] = 197355,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-armor",["id"] = 197357,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-curved-spiked-brow",["id"] = 197358,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-spined-brow",["id"] = 197360,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-spiked-crest",["id"] = 197361,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-spined-crest",["id"] = 197362,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-maned-crest",["id"] = 197363,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-dual-horned-crest",["id"] = 197366,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-gray-hair",["id"] = 197367,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-blue-hair",["id"] = 197368,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-red-hair",["id"] = 197370,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-purple-hair",["id"] = 197372,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-bovine-horns",["id"] = 197377,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-impaler-horns",["id"] = 197379,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-gradient-horns",["id"] = 197381,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-white-horns",["id"] = 197382,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-heavy-horns",["id"] = 197383,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-horned-jaw",["id"] = 197385,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-spiked-jaw",["id"] = 197386,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-green-scales",["id"] = 197389,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-blue-scales",["id"] = 197390,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-bronze-scales",["id"] = 197391,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-black-scales",["id"] = 197392,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-white-scales",["id"] = 197393,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-predator-pattern",["id"] = 197394,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-harrier-pattern",["id"] = 197395,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-skyterror-pattern",["id"] = 197396,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-heavy-scales",["id"] = 197397,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-snub-snout",["id"] = 197398,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-razor-snout",["id"] = 197399,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-shark-snout",["id"] = 197400,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-beaked-snout",["id"] = 197401,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-spiked-club-tail",["id"] = 197402,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-club-tail",["id"] = 197403,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-spined-tail",["id"] = 197406,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-spiked-throat",["id"] = 197407,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-finned-throat",["id"] = 197408,["button"] = nil},
{["name"] = "SoulbindCacheOpener_draconic-recipe-in-a-bottle",["id"] = 198438,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-renewed-proto-drake-predator-pattern",["id"] = 198899,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-renewed-proto-drake-steel-and-yellow-armor",["id"] = 201738,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-renewed-proto-drake-bovine-horns",["id"] = 201741,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-renewed-proto-drake-silver-and-blue-armor",["id"] = 201742,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-embodiment-of-the-storm-eater",["id"] = 201790,["button"] = nil},
{["name"] = "SoulbindCacheOpener_weighted-sac-of-swog-treasures",["id"] = 199342,["button"] = nil},
{["name"] = "SoulbindCacheOpener_immaculate-sac-of-swog-treasures",["id"] = 202102,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-red-scales",["id"] = 192111,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake",["id"] = 194034,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-black-and-red-armor",["id"] = 197348,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-gold-and-white-armor",["id"] = 197349,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-bronze-and-pink-armor",["id"] = 197353,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-hairy-back",["id"] = 197356,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-hairy-brow",["id"] = 197359,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-short-spiked-crest",["id"] = 197364,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-finned-crest",["id"] = 197365,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-brown-hair",["id"] = 197369,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-green-hair",["id"] = 197371,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-helm",["id"] = 197373,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-swept-horns",["id"] = 197374,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-curled-horns",["id"] = 197375,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-ears",["id"] = 197376,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-subtle-horns",["id"] = 197378,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-curved-horns",["id"] = 197380,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-thick-spined-jaw",["id"] = 197384,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-thin-spined-jaw",["id"] = 197387,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-finned-jaw",["id"] = 197388,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-finned-tail",["id"] = 197404,["button"] = nil},
{["name"] = "SoulbindCacheOpener_renewed-proto-drake-maned-tail",["id"] = 197405,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-renewed-proto-drake-spined-crest",["id"] = 198901,["button"] = nil},
{["name"] = "SoulbindCacheOpener_dragon-racers-purse",["id"] = 199192,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-armor",["id"] = 196961,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-silver-and-purple-armor",["id"] = 196962,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-silver-and-blue-armor",["id"] = 196963,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-gold-and-black-armor",["id"] = 196964,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-gold-and-orange-armor",["id"] = 196966,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-steel-and-yellow-armor",["id"] = 196968,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-finned-back",["id"] = 196969,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-spiked-back",["id"] = 196970,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-plated-brow",["id"] = 196972,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-dual-horned-chin",["id"] = 196973,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-head-mane",["id"] = 196976,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-split-head-horns",["id"] = 196977,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-triple-head-horns",["id"] = 196980,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-conical-head",["id"] = 196981,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-ears",["id"] = 196982,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-horned-jaw",["id"] = 196985,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-black-hair",["id"] = 196986,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-blonde-hair",["id"] = 196987,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-red-hair",["id"] = 196988,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-white-hair",["id"] = 196989,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-black-horns",["id"] = 196991,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-heavy-horns",["id"] = 196992,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-short-horns",["id"] = 196994,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-branched-horns",["id"] = 196996,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-split-horns",["id"] = 196997,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-hook-horns",["id"] = 196998,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-swept-horns",["id"] = 196999,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-finned-cheek",["id"] = 197001,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-spiked-cheek",["id"] = 197003,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-spiked-legs",["id"] = 197004,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-horned-nose",["id"] = 197005,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-wide-stripes-pattern",["id"] = 197007,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-scaled-pattern",["id"] = 197009,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-red-scales",["id"] = 197010,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-green-scales",["id"] = 197011,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-blue-scales",["id"] = 197012,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-black-scales",["id"] = 197013,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-white-scales",["id"] = 197014,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-dark-skin-variation",["id"] = 197015,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-maned-tail",["id"] = 197016,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-large-tail-spikes",["id"] = 197017,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-blunt-spiked-tail",["id"] = 197019,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-finned-neck",["id"] = 197022,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-maned-neck",["id"] = 197023,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-cliffside-wylderdrake-conical-head",["id"] = 198891,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-cliffside-wylderdrake-red-hair",["id"] = 198892,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-cliffside-wylderdrake-triple-head-horns",["id"] = 198893,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-cliffside-wylderdrake-silver-and-blue-armor",["id"] = 201734,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-cliffside-wylderdrake-steel-and-yellow-armor",["id"] = 201736,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-bronze-and-teal-armor",["id"] = 196965,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-gold-and-white-armor",["id"] = 196967,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-spiked-brow",["id"] = 196971,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-four-horned-chin",["id"] = 196974,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-head-fin",["id"] = 196975,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-small-head-spikes",["id"] = 196978,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-curled-head-horns",["id"] = 196979,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-maned-jaw",["id"] = 196983,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-finned-jaw",["id"] = 196984,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-helm",["id"] = 196990,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-sleek-horns",["id"] = 196993,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-spiked-horns",["id"] = 196995,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-coiled-horns",["id"] = 197000,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-flared-cheek",["id"] = 197002,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-plated-nose",["id"] = 197006,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-narrow-stripes-pattern",["id"] = 197008,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-finned-tail",["id"] = 197018,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-spear-tail",["id"] = 197020,["button"] = nil},
{["name"] = "SoulbindCacheOpener_cliffside-wylderdrake-spiked-club-tail",["id"] = 197021,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-manuscript-spined-head",["id"] = 194838,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-gold-and-black-armor",["id"] = 197090,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-silver-and-blue-armor",["id"] = 197091,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-gold-and-red-armor",["id"] = 197094,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-steel-and-yellow-armor",["id"] = 197096,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spined-back",["id"] = 197097,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-finned-back",["id"] = 197098,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-armor",["id"] = 197099,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-crested-brow",["id"] = 197100,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-bushy-brow",["id"] = 197101,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-maned-chin",["id"] = 197103,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spined-chin",["id"] = 197105,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-triple-finned-head",["id"] = 197107,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spined-head",["id"] = 197108,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-maned-head",["id"] = 197111,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-swept-spiked-head",["id"] = 197113,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-multi-horned-head",["id"] = 197114,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-thorned-jaw",["id"] = 197115,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-ears",["id"] = 197116,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-black-hair",["id"] = 197117,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-brown-hair",["id"] = 197118,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-helm",["id"] = 197119,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-tan-horns",["id"] = 197121,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-heavy-horns",["id"] = 197122,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-thorn-horns",["id"] = 197123,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-coiled-horns",["id"] = 197125,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-grand-thorn-horns",["id"] = 197127,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-curled-back-horns",["id"] = 197128,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-stag-horns",["id"] = 197130,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-hairy-cheek",["id"] = 197131,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spiked-cheek",["id"] = 197132,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spined-cheek",["id"] = 197133,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-toothy-mouth",["id"] = 197135,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-striped-pattern",["id"] = 197138,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-black-scales",["id"] = 197142,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-green-scales",["id"] = 197143,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-red-scales",["id"] = 197144,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-bronze-scales",["id"] = 197145,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-white-scales",["id"] = 197146,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-heavy-scales",["id"] = 197147,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-club-tail",["id"] = 197149,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spiked-club-tail",["id"] = 197150,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-hooked-tail",["id"] = 197152,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spined-neck",["id"] = 197154,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-finned-neck",["id"] = 197155,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-highland-drake-black-hair",["id"] = 198894,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-highland-drake-silver-and-blue-armor",["id"] = 201735,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-embodiment-of-the-crimson-gladiator",["id"] = 201792,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-manuscript-spined-throat",["id"] = 194836,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-manuscript-black-hair",["id"] = 194837,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-silver-and-purple-armor",["id"] = 197093,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-gold-and-white-armor",["id"] = 197095,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-horned-chin",["id"] = 197102,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-tapered-chin",["id"] = 197104,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-finned-head",["id"] = 197106,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spiked-head",["id"] = 197109,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-plated-head",["id"] = 197110,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-single-horned-head",["id"] = 197112,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-ornate-helm",["id"] = 197120,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-swept-horns",["id"] = 197124,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-hooked-horns",["id"] = 197126,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-sleek-horns",["id"] = 197129,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spiked-legs",["id"] = 197134,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-taperered-nose",["id"] = 197136,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spined-nose",["id"] = 197137,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-large-spotted-pattern",["id"] = 197139,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-small-spotted-pattern",["id"] = 197140,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-scaled-pattern",["id"] = 197141,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-vertical-finned-tail",["id"] = 197148,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-spiked-tail",["id"] = 197151,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-bladed-tail",["id"] = 197153,["button"] = nil},
{["name"] = "SoulbindCacheOpener_highland-drake-bronze-and-green-armor",["id"] = 197156,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-highland-drake-spined-head",["id"] = 198895,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-highland-drake-spined-neck",["id"] = 198896,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-highland-drake-steel-and-yellow-armor",["id"] = 201737,["button"] = nil},
{["name"] = "SoulbindCacheOpener_vakrils-strongbox",["id"] = 201728,["button"] = nil},
{["name"] = "SoulbindCacheOpener_caravan-strongbox",["id"] = 200094,["button"] = nil},
{["name"] = "SoulbindCacheOpener_dragonbane-keep-strongbox",["id"] = 202142,["button"] = nil},
{["name"] = "SoulbindCacheOpener_dragonbane-keep-strongbox",["id"] = 200072,["button"] = nil},
{["name"] = "SoulbindCacheOpener_small-valdrakken-accord-supply-pack",["id"] = 198868,["button"] = nil},
{["name"] = "SoulbindCacheOpener_small-dragon-expedition-supply-pack",["id"] = 198863,["button"] = nil},
{["name"] = "SoulbindCacheOpener_grand-hunt-spoils",["id"] = 200515,["button"] = nil},
{["name"] = "SoulbindCacheOpener_grand-hunt-spoils",["id"] = 200513,["button"] = nil},
{["name"] = "SoulbindCacheOpener_grand-hunt-spoils",["id"] = 200468,["button"] = nil},
{["name"] = "SoulbindCacheOpener_small-iskaaran-supply-pack",["id"] = 198866,["button"] = nil},
{["name"] = "SoulbindCacheOpener_experimental-substance",["id"] = 193891,["button"] = nil},
{["name"] = "SoulbindCacheOpener_reawakened-catalyst",["id"] = 193897,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-yellow-horns",["id"] = 197610,["button"] = nil},
{["name"] = "SoulbindCacheOpener_prismatic-focusing-shard",["id"] = 193900,["button"] = nil},
{["name"] = "SoulbindCacheOpener_primal-dust",["id"] = 193901,["button"] = nil},
{["name"] = "SoulbindCacheOpener_tailoring-examples",["id"] = 198609,["button"] = nil},
{["name"] = "SoulbindCacheOpener_enchanters-script",["id"] = 198610,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ohnarhan-weave",["id"] = 198977,["button"] = nil},
{["name"] = "SoulbindCacheOpener_stupidly-effective-stitchery",["id"] = 198978,["button"] = nil},
{["name"] = "SoulbindCacheOpener_valdrakken-treasures",["id"] = 200073,["button"] = nil},

-- Rousing (Stack of 10) - Listed also in the updateButton function as items that need to be in a stack of 10
{["name"] = "SoulbindCacheOpener_rousing-earth",["id"] = 190315,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rousing-fire",["id"] = 190320,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rousing-order",["id"] = 190322,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rousing-air",["id"] = 190326,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rousing-frost",["id"] = 190328,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rousing-decay",["id"] = 190330,["button"] = nil},
{["name"] = "SoulbindCacheOpener_rousing-ire",["id"] = 190451,["button"] = nil},
-- 

-- Winter Veil
{["name"] = "SoulbindCacheOpener_stolen-gift",["id"] = 149503,["button"] = nil},
{["name"] = "SoulbindCacheOpener_smokywood-pastures-special-present",["id"] = 149504,["button"] = nil},
{["name"] = "SoulbindCacheOpener_smokywood-pastures-special-gift",["id"] = 17726,["button"] = nil},
{["name"] = "SoulbindCacheOpener_stolen-present",["id"] = 116762,["button"] = nil},
{["name"] = "SoulbindCacheOpener_smokywood-pastures-extra-special-gift",["id"] = 21216,["button"] = nil},
{["name"] = "SoulbindCacheOpener_smokywood-pastures-sampler",["id"] = 17685,["button"] = nil},
{["name"] = "SoulbindCacheOpener_stolen-present",["id"] = 73792,["button"] = nil},
-- Presents
{["name"] = "SoulbindCacheOpener_carefully-wrapped-present",["id"] = 21191,["button"] = nil},
{["name"] = "SoulbindCacheOpener_ticking-present",["id"] = 21327,["button"] = nil},
{["name"] = "SoulbindCacheOpener_winter-veil-gift",["id"] = 192094,["button"] = nil},
{["name"] = "SoulbindCacheOpener_festive-gift",["id"] = 21363,["button"] = nil},
{["name"] = "SoulbindCacheOpener_gaily-wrapped-present",["id"] = 21310,["button"] = nil},
{["name"] = "SoulbindCacheOpener_gently-shaken-gift",["id"] = 192093,["button"] = nil},
--

{["name"] = "SoulbindCacheOpener_blacksmiths-writ",["id"] = 198606,["button"] = nil},
{["name"] = "SoulbindCacheOpener_scribes-glyphs",["id"] = 198607,["button"] = nil},
{["name"] = "SoulbindCacheOpener_alchemy-notes",["id"] = 198608,["button"] = nil},
{["name"] = "SoulbindCacheOpener_engineering-details",["id"] = 198611,["button"] = nil},
{["name"] = "SoulbindCacheOpener_jewelers-cuts",["id"] = 198612,["button"] = nil},
{["name"] = "SoulbindCacheOpener_leatherworking-designs",["id"] = 198613,["button"] = nil},
{["name"] = "SoulbindCacheOpener_soggy-clump-of-darkmoon-cards",["id"] = 198614,["button"] = nil},
{["name"] = "SoulbindCacheOpener_maruuk-centaur-supply-satchel",["id"] = 189765,["button"] = nil},
{["name"] = "SoulbindCacheOpener_large-maruuk-centaur-supply-satchel",["id"] = 198864,["button"] = nil},
{["name"] = "SoulbindCacheOpener_overflowing-maruuk-centaur-supply-satchel",["id"] = 199474,["button"] = nil},
{["name"] = "SoulbindCacheOpener_primordial-aether",["id"] = 198967,["button"] = nil},
{["name"] = "SoulbindCacheOpener_grand-hunt-spoils",["id"] = 200516,["button"] = nil},
{["name"] = "SoulbindCacheOpener_primalist-charm",["id"] = 198968,["button"] = nil},
{["name"] = "SoulbindCacheOpener_waterlogged-toolbox",["id"] = 170502,["button"] = nil},
{["name"] = "SoulbindCacheOpener_blueprint-rustbolt-resistance-insignia",["id"] = 168494,["button"] = nil},
{["name"] = "SoulbindCacheOpener_frigid-timewarped-prism",["id"] = 129928,["button"] = nil},
{["name"] = "SoulbindCacheOpener_magically-bound-message",["id"] = 198538,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-bronze-and-green-armor",["id"] = 197577,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-white-and-pink-armor",["id"] = 197582,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-exposed-finned-back",["id"] = 197583,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-maned-back",["id"] = 197585,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-small-ears",["id"] = 197594,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-horned-jaw",["id"] = 197596,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-helm",["id"] = 197600,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-curved-horns",["id"] = 197603,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-black-scales",["id"] = 197611,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-heavy-scales",["id"] = 197617,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-hooked-snout",["id"] = 197619,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-exposed-finned-tail",["id"] = 197621,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-finned-tail",["id"] = 197622,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-spiked-tail",["id"] = 197623,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-exposed-finned-neck",["id"] = 197626,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-finned-neck",["id"] = 197627,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-spiked-neck",["id"] = 197629,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-shrieker-pattern",["id"] = 197636,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-silver-and-blue-armor",["id"] = 197578,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-steel-and-orange-armor",["id"] = 197579,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-gold-and-red-armor",["id"] = 197580,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-silver-and-purple-armor",["id"] = 197581,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-finned-back",["id"] = 197584,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-spiked-back",["id"] = 197586,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-feathered-back",["id"] = 197587,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-armor",["id"] = 197588,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-large-head-fin",["id"] = 197589,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-small-head-fin",["id"] = 197590,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-hairy-head",["id"] = 197591,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-spined-head",["id"] = 197592,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-feathery-head",["id"] = 197593,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-finned-ears",["id"] = 197595,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-black-fur",["id"] = 197597,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-gray-hair",["id"] = 197598,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-red-hair",["id"] = 197599,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-wavy-horns",["id"] = 197601,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-cluster-horns",["id"] = 197602,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-ox-horns",["id"] = 197604,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-curled-horns",["id"] = 197605,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-swept-horns",["id"] = 197606,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-split-horns",["id"] = 197607,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-gray-horns",["id"] = 197608,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-white-horns",["id"] = 197609,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-blue-scales",["id"] = 197612,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-bronze-scales",["id"] = 197613,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-red-scales",["id"] = 197614,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-teal-scales",["id"] = 197615,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-white-scales",["id"] = 197616,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-long-snout",["id"] = 197618,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-beaked-snout",["id"] = 197620,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-club-tail",["id"] = 197624,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-feathery-tail",["id"] = 197625,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-plated-neck",["id"] = 197628,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-feathered-neck",["id"] = 197630,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-windswept-pattern",["id"] = 197634,["button"] = nil},
{["name"] = "SoulbindCacheOpener_windborne-velocidrake-reaver-pattern",["id"] = 197635,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-windborne-velocidrake-black-fur",["id"] = 198902,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-windborne-velocidrake-spined-head",["id"] = 198903,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-windborne-velocidrake-windswept-pattern",["id"] = 198904,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-windborne-velocidrake-steel-and-yellow-armor",["id"] = 201739,["button"] = nil},
{["name"] = "SoulbindCacheOpener_technique-windborne-velocidrake-silver-and-blue-armor",["id"] = 201743,["button"] = nil}



};

function SoulbindCacheOpener:updateButtons()
	if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "4 - updateButtons Called") end end
	self.previous = 0;
	local freeSpace = 0;
	for containerIndex = 0, NUM_BAG_SLOTS do
		freeSlots = C_Container.GetContainerNumFreeSlots(containerIndex)
		freeSpace = freeSpace + freeSlots;
	end
	for i = 1, #self.items do
		if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "5 - self.items loop") end end
		self:updateButton(self.items[i].button,self.items[i].id,i,freeSpace);
	end
end

function SoulbindCacheOpener:updateButton(btn,id,num,freeSpace)
	local count = GetItemCount(id);
	-- List of items that should only be shown if there are 10 or more
	local ids = { [12345] = true, [190315] = true, [190320] = true, [190322] = true, [190326] = true, [190328] = true, [190330] = true, [190451] = true };
	if (not ids[id] and count > 0) or (SoulbindCacheOpenerDB.rousing and ids[id] and count >= 10) then
		btn:ClearAllPoints();
		if SoulbindCacheOpenerDB.alignment == "LEFT" then
			if self.previous == 0 then
				btn:SetPoint("LEFT", self.frame, "LEFT", 0, 0);
			else
				btn:SetPoint("LEFT", self.items[self.previous].button, "RIGHT", 2, 0);
			end
		else
			if self.previous == 0 then
				btn:SetPoint("RIGHT", self.frame, "RIGHT", 0, 0);
			else
				btn:SetPoint("RIGHT", self.items[self.previous].button, "LEFT", -2, 0);
			end
		end
		if self.previous == 0 and SoulbindCacheOpenerDB.freeSpace then
			btn.freeSpaceFont:SetText("Free:"..freeSpace);
			btn.freeSpace:Show();
		else
			btn.freeSpaceFont:SetText("");
			btn.freeSpace:Hide();
		end
		self.previous = num;
		btn.countString:SetText(format("%d",count));
		btn.texture:SetDesaturated(false);
		if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "ButtonShow") end end
		btn:Show();
	else 
		btn.countString:SetText("");
		btn.freeSpaceFont:SetText("");
		btn.freeSpace:Hide();
		btn.texture:SetDesaturated(true);
		if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "ButtonHide") end end
		btn:Hide();
	end
end

function SoulbindCacheOpener:createButton(btn,id)
	if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "7 - createButton Called") end end
	btn:Hide();
	btn:SetWidth(38);
	btn:SetHeight(38);
	btn:SetClampedToScreen(true);
	--Right click to drag
	btn:EnableMouse(true);
	btn:RegisterForDrag("RightButton");
	btn:SetMovable(true);
	btn:SetScript("OnDragStart", function(self) self:GetParent():StartMoving(); end);
	btn:SetScript("OnDragStop", function(self) 
			self:GetParent():StopMovingOrSizing();
			self:GetParent():SetUserPlaced(false);
			local point, relativeTo, relativePoint, xOfs, yOfs = self:GetParent():GetPoint();
			SoulbindCacheOpenerDB.position = {point, nil, relativePoint, xOfs, yOfs};
			end);
	--Setup macro
	btn:SetAttribute("type", "macro");
	btn:SetAttribute("macrotext", format("/use item:%d",id));
	btn.countString = btn:CreateFontString(btn:GetName().."Count", "OVERLAY", "NumberFontNormal");
	btn.countString:SetPoint("BOTTOMRIGHT", btn, -0, 2);
	btn.countString:SetJustifyH("RIGHT");
	btn.freeSpace = CreateFrame("Frame", btn:GetName().."FreeSpace", btn);
	btn.freeSpace:SetFrameStrata("BACKGROUND");
	btn.freeSpace:SetWidth(35);
	btn.freeSpace:SetHeight(10);
	btn.freeSpace.t = btn.freeSpace:CreateTexture(nil, "BACKGROUND");
	btn.freeSpace.t:SetTexture(0,0,0,.8);
	btn.freeSpace.t:SetAllPoints(true);
	btn.freeSpace.texture = btn.freeSpace.t;
	btn.freeSpace:SetPoint("TOPLEFT", btn, 1.5, -1);
	btn.freeSpaceFont = btn.freeSpace:CreateFontString(btn.freeSpace:GetName().."Font", "OVERLAY", "SystemFont_Tiny");
	btn.freeSpaceFont:SetPoint("CENTER", btn.freeSpace, 0, 0);
	btn.freeSpaceFont:SetJustifyH("LEFT");
	btn.icon = btn:CreateTexture(nil,"BACKGROUND");
	btn.icon:SetTexture(GetItemIcon(id));
	btn.texture = btn.icon;
	btn.texture:SetAllPoints(btn);
	btn:RegisterForClicks("LeftButtonUp", "LeftButtonDown");
	
	--Tooltip
	btn:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self,"ANCHOR_TOP");
		GameTooltip:SetItemByID(format("%d",id));
		GameTooltip:SetClampedToScreen(true);
		GameTooltip:Show();
	  end);
	btn:SetScript("OnLeave",GameTooltip_Hide);
 end

function SoulbindCacheOpener:reset()
	if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "8 - Reset Called") end end
	SoulbindCacheOpenerDB = {["enable"] = true,["alignment"] = "LEFT",["freeSpace"] = false,["rousing"] = true};
	self.frame:SetPoint('CENTER', UIParent, 'CENTER', 0, 0);
	self:OnEvent("UPDATE");
end

function SoulbindCacheOpener:AddButton()
	if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "2 - Add Button Called") end end
	self.frame:Show();
	if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "3 - Frame Shown") end end
	SoulbindCacheOpener:updateButtons();
end

function SoulbindCacheOpener:OnEvent(event, ...)
	if event == "ADDON_LOADED" then
		if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "0 - Addon Loaded") end end
		self.frame:UnregisterEvent("ADDON_LOADED");
		SoulbindCacheOpenerDB = SoulbindCacheOpenerDB or {};
		--If DB is empty
		if next (SoulbindCacheOpenerDB) == nil then
			SoulbindCacheOpener:reset();
		end
	end

	if event == "PLAYER_LOGIN" then
		if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "9 - Player Login Event") end end
		self.frame:UnregisterEvent("PLAYER_LOGIN");
	end 
	--Check for combat
	if UnitAffectingCombat("player") then
		if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "10 - Player is in Combat") end end
		return
	end
	if debug == true then if DLAPI then DLAPI.DebugLog("Testing", "1 - Event Called") end end
	SoulbindCacheOpener:AddButton();
end

------------------------------------------------
-- Slash Commands
------------------------------------------------
local function slashHandler(msg)
	msg = msg:lower() or "";
--	if (msg == "free") then
--		SoulbindCacheOpenerDB.freeSpace = not SoulbindCacheOpenerDB.freeSpace;
--		SoulbindCacheOpener:updateButtons();
	--	if SoulbindCacheOpenerDB.freeSpace then
	--		print("|cffffa500Soulbind Cache Opener|r: Displaying inventory space text on button.");
	--	else
	--		print("|cffffa500Soulbind Cache Opener|r: Hiding inventory space text on button.");
	--	end
	if (msg == "rousing") then
		SoulbindCacheOpenerDB.rousing = not SoulbindCacheOpenerDB.rousing;
		SoulbindCacheOpener:updateButtons();
		if SoulbindCacheOpenerDB.rousing then
			print ("|cffffa500Soulbind Cache Opener|r: Stacks of 10 rousing elements will be shown");
		else
			print ("|cffffa500Soulbind Cache Opener|r: Stacks of 10 rousing elements will not be shown");
		end
	
	elseif (msg == "reset") then
		print("|cffffa500Soulbind Cache Opener|r: Resetting settings and position.");
		SoulbindCacheOpener:reset();
	else
		print("|cffffa500Soulbind Cache Opener|r: Commands for |cffffa500/SoulbindCacheOpener|r :");
	--	print("  |cffffa500 free|r - Toggle text on button for remaining inventory space.");
		print("  |cffffa500 rousing|r - Toggle including stacks of Rousing Elements");
		print("  |cffffa500 reset|r - Reset all settings!");
	end
end

SlashCmdList.SoulbindCacheOpener = function(msg) slashHandler(msg) end;
SLASH_SoulbindCacheOpener1 = "/SoulbindCacheOpener";
SLASH_SoulbindCacheOpener2 = "/SCO";

--Helper functions
local function cout(msg, premsg)
	premsg = premsg or "[".."Soulbind Cache Opener".."]"
	print("|cFFE8A317"..premsg.."|r "..msg);
end

local function coutBool(msg,bool)
	if bool then
		print(msg..": true");
	else
		print(msg..": false");
	end
end

--Main Frame
SoulbindCacheOpener.frame = CreateFrame("Frame", "SoulbindCacheOpener_Frame", UIParent);
SoulbindCacheOpener.frame:Hide();
SoulbindCacheOpener.frame:SetWidth(120);
SoulbindCacheOpener.frame:SetHeight(38);
SoulbindCacheOpener.frame:SetClampedToScreen(true);
SoulbindCacheOpener.frame:SetFrameStrata("BACKGROUND");
SoulbindCacheOpener.frame:SetMovable(true);
SoulbindCacheOpener.frame:RegisterEvent("PLAYER_ENTERING_WORLD");
SoulbindCacheOpener.frame:RegisterEvent("PLAYER_REGEN_ENABLED");
SoulbindCacheOpener.frame:RegisterEvent("PLAYER_LOGIN");
SoulbindCacheOpener.frame:RegisterEvent("ADDON_LOADED")
SoulbindCacheOpener.frame:RegisterEvent("BAG_UPDATE");

SoulbindCacheOpener.frame:SetScript("OnEvent", function(self,event,...) SoulbindCacheOpener:OnEvent(event,...) end);
SoulbindCacheOpener.frame:SetScript("OnShow", function(self,event,...) 
	--Restore position
	self:ClearAllPoints();
	if SoulbindCacheOpenerDB and SoulbindCacheOpenerDB.position then
		self:SetPoint(SoulbindCacheOpenerDB.position[1],UIParent,SoulbindCacheOpenerDB.position[3],SoulbindCacheOpenerDB.position[4],SoulbindCacheOpenerDB.position[5]);
	else
		self:SetPoint('CENTER', UIParent, 'CENTER', 0, 0);
	end		
	
 end);
---Create button for each item
for i = 1, #SoulbindCacheOpener.items do
	SoulbindCacheOpener.items[i].button = CreateFrame("Button", SoulbindCacheOpener.items[i].name, SoulbindCacheOpener.frame, "SecureActionButtonTemplate");
	SoulbindCacheOpener:createButton(SoulbindCacheOpener.items[i].button,SoulbindCacheOpener.items[i].id);
end
