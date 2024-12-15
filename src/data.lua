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
			name = "qrc_legendary_fast-inserter",
			energy_required = 1,
			enabled = false,
			ingredients = {
				{type = "item", name = "steel-plate", amount = 2},
				{type = "item", name = "advanced-circuit", amount = 1},
				{type = "item", name = "inserter", amount = 1},
			},
			results = {
				{type = "item", name = "fast-inserter", quality = "legendary", amount = 1}
			}
		},
		{
			type = "technology",
			name = "legendary-fast-inserter",
			icons = {
				{ icon = "__base__/graphics/technology/fast-inserter.png", icon_size = 256 },
				{ icon = data.raw.quality.legendary.icon, icon_size = data.raw.quality.legendary.icon_size, scale = 0.5, shift = { -25, 25 }  }
			},
			effects =
			{
			  {
				type = "unlock-recipe",
				recipe = "qrc_legendary_fast-inserter"
			  }
			},
			prerequisites = {"fast-inserter"},
			unit =
			{
			  count = 1,
			  ingredients = {{"automation-science-pack", 1}},
			  time = 10
			}
		}
	})
end