# Quality Recipes Core
Overhauls quality mechanic to allow creation of recipes for quality items.

When selecting a recipe with a quality level higher than normal it'll replace it with a custom recipe.\
It **replaces** the default mechanic.

# Usage
Replacing recipes is done by adding a new recipe with name `qrc_[quality]_[recipe-to-replace]`.\
Example:
```lua
name = "qrc_legendary_fast-inserter",
```

Output items now support quality tag.\
Example:
```lua
{type = "item", name = [item-name], quality = [quality]}
```

# Example
This recipe will replace the Fast Inserter recipe of Legendary quality.
```lua
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
}
```