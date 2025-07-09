data:extend({
	{
		type = "item-group",
		name = "qrc-item-group",
		order = "x",
		icon = "__quality__/graphics/technology/legendary-quality.png",
		icon_size = 256,
	}
})


if settings.startup["qrc-enable-examples"].value then
	data:extend({	
		{
			type = "recipe",
			name = "qrc_epic_iron-gear-wheel",
			energy_required = 1,
			ingredients = {
				{type = "item", name = "steel-plate", amount = 8}
			},
			results = {
				{type = "item", name = "iron-gear-wheel", quality = "epic", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_fast-inserter",
			energy_required = 1,
			enabled = false,
			ingredients = {
				{type = "item", name = "automation-science-pack", amount = 2},
				{type = "item", name = "advanced-circuit", amount = 1},
				{type = "item", name = "inserter", amount = 1},
			},
			results = {
				{type = "item", name = "fast-inserter", quality = "uncommon", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_automation-science-pack",
			energy_required = 1,
			enabled = false,
			ingredients = {
				{type = "item", name = "copper-plate", amount = 1},
				{type = "item", name = "iron-gear-wheel", amount = 1},
				{type = "item", name = "iron-stick", amount = 1},
			},
			results = {
				{type = "item", name = "automation-science-pack", quality = "uncommon", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_automation-science-pack",
			energy_required = 1,
			enabled = false,
			ingredients = {
				{type = "item", name = "copper-plate", amount = 1},
				{type = "item", name = "iron-gear-wheel", amount = 1},
				{type = "item", name = "iron-stick", amount = 1},
				{type = "item", name = "copper-cable", amount = 1},
			},
			results = {
				{type = "item", name = "automation-science-pack", quality = "rare", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_automation-science-pack",
			energy_required = 1,
			enabled = false,
			ingredients = {
				{type = "item", name = "copper-plate", amount = 1},
				{type = "item", name = "iron-gear-wheel", amount = 1},
				{type = "item", name = "iron-stick", amount = 1},
				{type = "item", name = "copper-cable", amount = 1},
				{type = "item", name = "electronic-circuit", amount = 1},
			},
			results = {
				{type = "item", name = "automation-science-pack", quality = "epic", amount = 2}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_automation-science-pack",
			energy_required = 1,
			enabled = false,
			ingredients = {
				{type = "item", name = "copper-plate", amount = 1},
				{type = "item", name = "iron-gear-wheel", amount = 1},
				{type = "item", name = "iron-stick", amount = 1},
				{type = "item", name = "copper-cable", amount = 1},
				{type = "item", name = "steel-plate", amount = 1},
				{type = "item", name = "electronic-circuit", amount = 1},
			},
			results = {
				{type = "item", name = "automation-science-pack", quality = "legendary", amount = 3}
			}
		},
		{
			type = "technology",
			name = "legendary-automation-science-pack",
			icons = {
				{ icon = "__base__/graphics/technology/automation-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_automation-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_automation-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_automation-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_automation-science-pack" 
			  }
			},
			prerequisites = {"automation-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_logistic-science-pack",
			energy_required = 6,
			enabled = false,
			ingredients = {
				{type = "item", name = "transport-belt", amount = 1},
				{type = "item", name = "inserter", amount = 1},
				{type = "item", name = "pipe-to-ground", amount = 1},
			},
			results = {
				{type = "item", name = "logistic-science-pack", quality = "uncommon", amount = 2}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_logistic-science-pack",
			energy_required = 6,
			enabled = false,
			ingredients = {
				{type = "item", name = "transport-belt", amount = 1},
				{type = "item", name = "fast-inserter", amount = 1},
				{type = "item", name = "pipe-to-ground", amount = 1},
			},
			results = {
				{type = "item", name = "logistic-science-pack", quality = "rare", amount = 2}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_logistic-science-pack",
			energy_required = 6,
			enabled = false,
			ingredients = {
				{type = "item", name = "fast-transport-belt", amount = 1},
				{type = "item", name = "fast-inserter", amount = 1},
				{type = "item", name = "pipe-to-ground", amount = 1},
			},
			results = {
				{type = "item", name = "logistic-science-pack", quality = "epic", amount = 2}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_logistic-science-pack",
			energy_required = 6,
			enabled = false,
			ingredients = {
				{type = "item", name = "fast-transport-belt", amount = 1},
				{type = "item", name = "fast-inserter", amount = 1},
				{type = "item", name = "pipe-to-ground", amount = 1},
				{type = "item", name = "splitter", amount = 1},
			},
			results = {
				{type = "item", name = "logistic-science-pack", quality = "legendary", amount = 2}
			}
		},
		{
			type = "technology",
			name = "legendary-logistic-science-pack",
			icons = {
				{ icon = "__base__/graphics/technology/logistic-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_logistic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_logistic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_logistic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_logistic-science-pack" 
			  }
			},
			prerequisites = {"logistic-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_military-science-pack",
			energy_required = 10,
			enabled = false,
			ingredients = {
				{type = "item", name = "piercing-rounds-magazine", amount = 1},
				{type = "item", name = "grenade", amount = 1},
				{type = "item", name = "stone-wall", amount = 2},
				{type = "item", name = "rocket", amount = 1},
			},
			results = {
				{type = "item", name = "military-science-pack", quality = "uncommon", amount = 2}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_military-science-pack",
			energy_required = 10,
			enabled = false,
			ingredients = {
				{type = "item", name = "piercing-rounds-magazine", amount = 1},
				{type = "item", name = "grenade", amount = 1},
				{type = "item", name = "stone-wall", amount = 2},
				{type = "item", name = "rocket", amount = 1},
				{type = "item", name = "poison-capsule", amount = 1},
			},
			results = {
				{type = "item", name = "military-science-pack", quality = "rare", amount = 3}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_military-science-pack",
			energy_required = 10,
			enabled = false,
			ingredients = {
				{type = "item", name = "piercing-rounds-magazine", amount = 1},
				{type = "item", name = "grenade", amount = 1},
				{type = "item", name = "stone-wall", amount = 2},
				{type = "item", name = "rocket", amount = 1},
				{type = "item", name = "poison-capsule", amount = 1},
				{type = "item", name = "piercing-shotgun-shell", amount = 1},
			},
			results = {
				{type = "item", name = "military-science-pack", quality = "epic", amount = 3}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_military-science-pack",
			energy_required = 10,
			enabled = false,
			ingredients = {
				{type = "item", name = "uranium-rounds-magazine", amount = 1},
				{type = "item", name = "grenade", amount = 1},
				{type = "item", name = "stone-wall", amount = 2},
				{type = "item", name = "rocket", amount = 1},
				{type = "item", name = "poison-capsule", amount = 1},
				{type = "item", name = "piercing-shotgun-shell", amount = 1},
			},
			results = {
				{type = "item", name = "military-science-pack", quality = "legendary", amount = 3}
			}
		},
		{
			type = "technology",
			name = "legendary-military-science-pack",
			icons = {
				{ icon = "__base__/graphics/technology/military-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_military-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_military-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_military-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_military-science-pack" 
			  }
			},
			prerequisites = {"military-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_chemical-science-pack",
			energy_required = 24,
			enabled = false,
			ingredients = {
				{type = "item", name = "sulfur", amount = 1},
				{type = "item", name = "advanced-circuit", amount = 3},
				{type = "item", name = "electric-engine-unit", amount = 2},
			},
			results = {
				{type = "item", name = "chemical-science-pack", quality = "uncommon", amount = 2}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_chemical-science-pack",
			category = "chemistry",
			energy_required = 24,
			enabled = false,
			ingredients = {
				{type = "fluid", name = "sulfuric-acid", amount = 5},
				{type = "item", name = "advanced-circuit", amount = 3},
				{type = "item", name = "electric-engine-unit", amount = 2},
			},
			results = {
				{type = "item", name = "chemical-science-pack", quality = "rare", amount = 2}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_chemical-science-pack",
			category = "chemistry",
			energy_required = 24,
			enabled = false,
			ingredients = {
				{type = "fluid", name = "sulfuric-acid", amount = 5},
				{type = "item", name = "advanced-circuit", amount = 3},
				{type = "item", name = "electric-engine-unit", amount = 2},
				{type = "fluid", name = "thruster-fuel", amount = 5},
			},
			results = {
				{type = "item", name = "chemical-science-pack", quality = "epic", amount = 3}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_chemical-science-pack",
			category = "chemistry",
			energy_required = 24,
			enabled = false,
			ingredients = {
				{type = "fluid", name = "sulfuric-acid", amount = 5},
				{type = "item", name = "advanced-circuit", amount = 3},
				{type = "item", name = "electric-engine-unit", amount = 2},
				{type = "fluid", name = "thruster-fuel", amount = 5},
				{type = "item", name = "calcite", amount = 1},
			},
			results = {
				{type = "item", name = "chemical-science-pack", quality = "legendary", amount = 3}
			}
		},
		{
			type = "technology",
			name = "legendary-chemical-science-pack",
			icons = {
				{ icon = "__base__/graphics/technology/chemical-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_chemical-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_chemical-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_chemical-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_chemical-science-pack" 
			  }
			},
			prerequisites = {"chemical-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_production-science-pack",
			energy_required = 21,
			enabled = false,
			ingredients = {
				{type = "item", name = "electric-furnace", amount = 1},
				{type = "item", name = "productivity-module", amount = 1},				
				{type = "item", name = "efficiency-module", amount = 1},
				{type = "item", name = "speed-module", amount = 1},
				{type = "item", name = "rail", amount = 30},
			},
			results = {
				{type = "item", name = "production-science-pack", quality = "uncommon", amount = 3}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_production-science-pack",
			energy_required = 21,
			enabled = false,
			ingredients = {
				{type = "item", name = "foundry", amount = 1},
				{type = "item", name = "productivity-module", amount = 1},				
				{type = "item", name = "efficiency-module", amount = 1},
				{type = "item", name = "speed-module", amount = 1},
				{type = "item", name = "rail", amount = 30},
			},
			results = {
				{type = "item", name = "production-science-pack", quality = "rare", amount = 5}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_production-science-pack",
			energy_required = 21,
			enabled = false,
			ingredients = {
				{type = "item", name = "foundry", amount = 1},
				{type = "item", name = "productivity-module", amount = 1},				
				{type = "item", name = "efficiency-module", amount = 1},
				{type = "item", name = "speed-module", amount = 1},
				{type = "item", name = "rail", amount = 30},				
				{type = "item", name = "biochamber", amount = 1},
			},
			results = {
				{type = "item", name = "production-science-pack", quality = "epic", amount = 7}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_production-science-pack",
			energy_required = 21,
			enabled = false,
			ingredients = {
				{type = "item", name = "foundry", amount = 1},
				{type = "item", name = "productivity-module", amount = 1},				
				{type = "item", name = "efficiency-module", amount = 1},
				{type = "item", name = "speed-module", amount = 1},
				{type = "item", name = "rail", amount = 30},				
				{type = "item", name = "biochamber", amount = 1},		
				{type = "item", name = "electromagnetic-plant", amount = 1},
			},
			results = {
				{type = "item", name = "production-science-pack", quality = "legendary", amount = 10}
			}
		},
		{
			type = "technology",
			name = "legendary-production-science-pack",
			icons = {
				{ icon = "__base__/graphics/technology/production-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_production-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_production-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_production-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_production-science-pack" 
			  }
			},
			prerequisites = {"production-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_utility-science-pack",
			energy_required = 21,
			enabled = false,
			ingredients = {
				{type = "item", name = "flying-robot-frame", amount = 1},
				{type = "item", name = "low-density-structure", amount = 3},				
				{type = "item", name = "processing-unit", amount = 2},
				{type = "item", name = "beacon", amount = 1},
			},
			results = {
				{type = "item", name = "utility-science-pack", quality = "uncommon", amount = 4}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_utility-science-pack",
			energy_required = 21,
			enabled = false,
			ingredients = {
				{type = "item", name = "flying-robot-frame", amount = 1},
				{type = "item", name = "low-density-structure", amount = 3},				
				{type = "item", name = "processing-unit", amount = 2},
				{type = "item", name = "beacon", amount = 1},
				{type = "item", name = "agricultural-tower", amount = 1},
			},
			results = {
				{type = "item", name = "utility-science-pack", quality = "rare", amount = 5}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_utility-science-pack",
			energy_required = 21,
			enabled = false,
			ingredients = {
				{type = "item", name = "flying-robot-frame", amount = 1},
				{type = "item", name = "low-density-structure", amount = 3},				
				{type = "item", name = "processing-unit", amount = 2},
				{type = "item", name = "beacon", amount = 1},
				{type = "item", name = "agricultural-tower", amount = 1},				
				{type = "item", name = "big-mining-drill", amount = 1},
			},
			results = {
				{type = "item", name = "utility-science-pack", quality = "epic", amount = 6}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_utility-science-pack",
			energy_required = 21,
			enabled = false,
			ingredients = {
				{type = "item", name = "flying-robot-frame", amount = 1},
				{type = "item", name = "low-density-structure", amount = 3},				
				{type = "item", name = "processing-unit", amount = 2},
				{type = "item", name = "beacon", amount = 1},
				{type = "item", name = "agricultural-tower", amount = 1},				
				{type = "item", name = "big-mining-drill", amount = 1},
				{type = "item", name = "recycler", amount = 1},
			},
			results = {
				{type = "item", name = "utility-science-pack", quality = "legendary", amount = 7}
			}
		},
		{
			type = "technology",
			name = "legendary-utility-science-pack",
			icons = {
				{ icon = "__base__/graphics/technology/utility-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_utility-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_utility-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_utility-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_utility-science-pack" 
			  }
			},
			prerequisites = {"utility-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_space-science-pack",
			energy_required = 15,
			enabled = false,
			ingredients = {
				{type = "item", name = "carbon", amount = 1},
				{type = "item", name = "ice", amount = 1},				
				{type = "item", name = "iron-plate", amount = 2},		
				{type = "item", name = "firearm-magazine", amount = 1},
			},
			results = {
				{type = "item", name = "space-science-pack", quality = "uncommon", amount = 5}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_space-science-pack",
			category = "chemistry",
			energy_required = 15,
			enabled = false,
			ingredients = {		
				{type = "item", name = "firearm-magazine", amount = 1},				
				{type = "fluid", name = "thruster-fuel", amount = 75},
				{type = "fluid", name = "thruster-oxidizer", amount = 75},
			},
			results = {
				{type = "item", name = "space-science-pack", quality = "rare", amount = 5}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_space-science-pack",
			category = "chemistry",
			energy_required = 15,
			enabled = false,
			ingredients = {		
				{type = "item", name = "firearm-magazine", amount = 1},
				{type = "item", name = "space-platform-foundation", amount = 1},					
				{type = "fluid", name = "thruster-fuel", amount = 1500},
				{type = "fluid", name = "thruster-oxidizer", amount = 1500},
			},
			results = {
				{type = "item", name = "space-science-pack", quality = "epic", amount = 50}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_space-science-pack",
			category = "chemistry",
			energy_required = 15,
			enabled = false,
			ingredients = {		
				{type = "item", name = "rocket", amount = 1},
				{type = "item", name = "space-platform-foundation", amount = 1},					
				{type = "fluid", name = "thruster-fuel", amount = 1500},
				{type = "fluid", name = "thruster-oxidizer", amount = 1500},
			},
			results = {
				{type = "item", name = "space-science-pack", quality = "legendary", amount = 50}
			}
		},
		{
			type = "technology",
			name = "legendary-space-science-pack",
			icons = {
				{ icon = "__base__/graphics/technology/space-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_space-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_space-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_space-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_space-science-pack" 
			  }
			},
			prerequisites = {"space-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_agricultural-science-pack",
			category = "organic",  
			sa = true,			
			energy_required = 4,
			enabled = false,
			ingredients = {		
				{type = "item", name = "pentapod-egg", amount = 1},
				{type = "item", name = "bioflux", amount = 1},
				{type = "item", name = "iron-bacteria", amount = 1},
				{type = "item", name = "copper-bacteria", amount = 1},
			},
			results = {
				{type = "item", name = "agricultural-science-pack", quality = "uncommon", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_agricultural-science-pack",
			category = "organic",    
			energy_required = 4,
			sa = true,	
			enabled = false,
			ingredients = {		
				{type = "item", name = "pentapod-egg", amount = 1},
				{type = "item", name = "bioflux", amount = 1},
				{type = "item", name = "iron-bacteria", amount = 1},
				{type = "item", name = "copper-bacteria", amount = 1},				
				{type = "item", name = "copper-bacteria", amount = 1},
				{type = "item", name = "artificial-yumako-soil", amount = 1},				
				{type = "item", name = "artificial-jellynut-soil", amount = 1},
			},
			results = {
				{type = "item", name = "agricultural-science-pack", quality = "rare", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_agricultural-science-pack",
			category = "organic",
			sa = true,				
			energy_required = 4,
			enabled = false,
			ingredients = {		
				{type = "item", name = "pentapod-egg", amount = 1},
				{type = "item", name = "bioflux", amount = 1},
				{type = "item", name = "iron-bacteria", amount = 1},
				{type = "item", name = "copper-bacteria", amount = 1},				
				{type = "item", name = "copper-bacteria", amount = 1},
				{type = "item", name = "artificial-yumako-soil", amount = 1},				
				{type = "item", name = "artificial-jellynut-soil", amount = 1},			
				{type = "item", name = "biter-egg", amount = 1},
			},
			results = {
				{type = "item", name = "agricultural-science-pack", quality = "epic", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_agricultural-science-pack",
			category = "organic",
			sa = true,				
			energy_required = 4,
			enabled = false,
			ingredients = {		
				{type = "item", name = "pentapod-egg", amount = 1},
				{type = "item", name = "bioflux", amount = 1},
				{type = "item", name = "iron-bacteria", amount = 1},
				{type = "item", name = "copper-bacteria", amount = 1},				
				{type = "item", name = "copper-bacteria", amount = 1},
				{type = "item", name = "artificial-yumako-soil", amount = 1},				
				{type = "item", name = "artificial-jellynut-soil", amount = 1},			
				{type = "item", name = "biter-egg", amount = 1},
				{type = "item", name = "raw-fish", amount = 1},
			},
			results = {
				{type = "item", name = "agricultural-science-pack", quality = "legendary", amount = 1}
			}
		},
		{
			type = "technology",
			name = "legendary-agricultural-science-pack",
			icons = {
				{ icon = "__space-age__/graphics/technology/agricultural-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_agricultural-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_agricultural-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_agricultural-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_agricultural-science-pack" 
			  }
			},
			prerequisites = {"agricultural-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_metallurgic-science-pack",
			category = "metallurgy",
			sa = true,				
			energy_required = 10,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "molten-copper", amount = 200},
				{type = "item", name = "tungsten-carbide", amount = 1},
				{type = "item", name = "tungsten-plate", amount = 1},
				{type = "fluid", name = "heavy-oil", amount = 100},
			},
			results = {
				{type = "item", name = "metallurgic-science-pack", quality = "uncommon", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_metallurgic-science-pack",
			category = "metallurgy",
			sa = true,				
			energy_required = 10,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "molten-copper", amount = 200},
				{type = "item", name = "tungsten-carbide", amount = 1},
				{type = "item", name = "tungsten-plate", amount = 1},
				{type = "fluid", name = "heavy-oil", amount = 100},
				{type = "item", name = "artillery-shell", amount = 1},
			},
			results = {
				{type = "item", name = "metallurgic-science-pack", quality = "rare", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_metallurgic-science-pack",
			category = "metallurgy",
			sa = true,				
			energy_required = 10,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "molten-copper", amount = 200},
				{type = "item", name = "tungsten-carbide", amount = 1},
				{type = "item", name = "tungsten-plate", amount = 1},
				{type = "fluid", name = "crude-oil", amount = 100},
				{type = "item", name = "artillery-shell", amount = 1},
			},
			results = {
				{type = "item", name = "metallurgic-science-pack", quality = "epic", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_metallurgic-science-pack",
			category = "metallurgy",
			sa = true,				
			energy_required = 10,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "molten-copper", amount = 200},
				{type = "item", name = "tungsten-carbide", amount = 1},
				{type = "item", name = "tungsten-plate", amount = 1},
				{type = "fluid", name = "crude-oil", amount = 100},
				{type = "item", name = "artillery-shell", amount = 1},
				{type = "item", name = "cliff-explosives", amount = 1},
			},
			results = {
				{type = "item", name = "metallurgic-science-pack", quality = "legendary", amount = 1}
			}
		},
		{
			type = "technology",
			name = "legendary-metallurgic-science-pack",
			icons = {
				{ icon = "__space-age__/graphics/technology/metallurgic-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_metallurgic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_metallurgic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_metallurgic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_metallurgic-science-pack" 
			  }
			},
			prerequisites = {"metallurgic-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_electromagnetic-science-pack",			
			category = "electromagnetics",    
			energy_required = 10,
			sa = true,	
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "electrolyte", amount = 25},
				{type = "item", name = "accumulator", amount = 1},
				{type = "item", name = "supercapacitor", amount = 1},
				{type = "fluid", name = "holmium-solution", amount = 25},
				{type = "item", name = "lightning-rod", amount = 1},
			},
			results = {
				{type = "item", name = "electromagnetic-science-pack", quality = "uncommon", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_electromagnetic-science-pack",			
			category = "electromagnetics",
			sa = true,				
			energy_required = 10,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "electrolyte", amount = 25},
				{type = "item", name = "accumulator", amount = 1},
				{type = "item", name = "supercapacitor", amount = 1},
				{type = "fluid", name = "holmium-solution", amount = 25},
				{type = "item", name = "lightning-collector", amount = 1},
			},
			results = {
				{type = "item", name = "electromagnetic-science-pack", quality = "rare", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_electromagnetic-science-pack",			
			category = "electromagnetics",
			sa = true,				
			energy_required = 10,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "electrolyte", amount = 25},
				{type = "item", name = "accumulator", amount = 1},
				{type = "item", name = "supercapacitor", amount = 1},
				{type = "fluid", name = "holmium-solution", amount = 25},
				{type = "item", name = "lightning-collector", amount = 1},
				{type = "item", name = "uranium-fuel-cell", amount = 1},
			},
			results = {
				{type = "item", name = "electromagnetic-science-pack", quality = "epic", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_electromagnetic-science-pack",			
			category = "electromagnetics",
			sa = true,
			energy_required = 10,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "electrolyte", amount = 25},
				{type = "item", name = "accumulator", amount = 1},
				{type = "item", name = "supercapacitor", amount = 1},
				{type = "fluid", name = "holmium-solution", amount = 25},
				{type = "item", name = "lightning-collector", amount = 1},
				{type = "item", name = "nuclear-fuel", amount = 1},
			},
			results = {
				{type = "item", name = "electromagnetic-science-pack", quality = "legendary", amount = 1}
			}
		},
		{
			type = "technology",
			name = "legendary-electromagnetic-science-pack",
			icons = {
				{ icon = "__space-age__/graphics/technology/electromagnetic-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_electromagnetic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_electromagnetic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_electromagnetic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_electromagnetic-science-pack" 
			  }
			},
			prerequisites = {"electromagnetic-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		},
		{
			type = "recipe",
			name = "qrc_uncommon_cryogenic-science-pack",			
			category = "cryogenics",
			sa = true,				
			energy_required = 20,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "fluoroketone-cold", amount = 6},
				{type = "item", name = "ice", amount = 3},
				{type = "item", name = "lithium-plate", amount = 1},
				{type = "item", name = "quantum-processor", amount = 1},
			},
			results = {
				{type = "item", name = "cryogenic-science-pack", quality = "uncommon", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_rare_cryogenic-science-pack",			
			category = "cryogenics",
			sa = true,				
			energy_required = 20,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "fluoroketone-cold", amount = 6},
				{type = "item", name = "ice", amount = 3},
				{type = "item", name = "lithium-plate", amount = 1},
				{type = "item", name = "quantum-processor", amount = 1},				
				{type = "item", name = "railgun-ammo", amount = 1},
			},
			results = {
				{type = "item", name = "cryogenic-science-pack", quality = "rare", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_epic_cryogenic-science-pack",			
			category = "cryogenics",
			sa = true,				
			energy_required = 20,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "fluoroketone-cold", amount = 6},
				{type = "item", name = "ice", amount = 3},
				{type = "item", name = "lithium-plate", amount = 1},
				{type = "item", name = "quantum-processor", amount = 1},				
				{type = "item", name = "railgun-ammo", amount = 1},
				{type = "item", name = "fusion-power-cell", amount = 1},
			},
			results = {
				{type = "item", name = "cryogenic-science-pack", quality = "epic", amount = 1}
			}
		},
		{
			type = "recipe",
			name = "qrc_legendary_cryogenic-science-pack",			
			category = "cryogenics",
			sa = true,				
			energy_required = 20,
			enabled = false,
			ingredients = {		
				{type = "fluid", name = "fluoroketone-cold", amount = 6},
				{type = "item", name = "ice", amount = 3},
				{type = "item", name = "lithium-plate", amount = 1},
				{type = "item", name = "quantum-processor", amount = 1},				
				{type = "item", name = "railgun-ammo", amount = 1},
				{type = "item", name = "fusion-power-cell", amount = 1},
				{type = "item", name = "foundation", amount = 1},
			},
			results = {
				{type = "item", name = "cryogenic-science-pack", quality = "legendary", amount = 1}
			}
		},
		{
			type = "technology",
			name = "legendary-cryogenic-science-pack",
			icons = {
				{ icon = "__space-age__/graphics/technology/cryogenic-science-pack.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_uncommon_cryogenic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_rare_cryogenic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_epic_cryogenic-science-pack" 
			  },
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_cryogenic-science-pack" 
			  }
			},
			prerequisites = {"cryogenic-science-pack"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		}
	})
end
