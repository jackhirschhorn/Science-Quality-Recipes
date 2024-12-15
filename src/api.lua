local qrc = {}

local function get_quality_color(quality)
	if not data.raw.quality[quality] then return false end
	local color = data.raw.quality[quality].color
	return (color[1] or 0).." "..(color[2] or 0).." "..(color[3] or 0)
end

local function make_icon(item, target_quality)
	local quality = data.raw.quality[target_quality]

	if item.icons then
		item.icons.insert({ icon = quality.icon, icon_size = item.icon_size, scale = 0.25, shift = { -10, 10 } })
	else
		item.icons = {
			{ icon = item.icon, icon_size = item.icon_size },
			{ icon = quality.icon, icon_size = quality.icon_size, scale = 0.25, shift = { -10, 10 }  }
		}
		item.icon = nil
	end

	item.localised_name = {"", "[color="..get_quality_color(target_quality).."]", {"?", {"item-name."..item.name}, {"entity-name."..item.name}}, " (", {"quality-name."..target_quality}, ")[/color]"}
end

local function get_subgroup(item)
	local qrc_subgroup = "qrc-"..item.subgroup

	--create a subgroup if one doesn't exist
	if not data.raw["item-subgroup"]["qrc-"..qrc_subgroup] then
		local item_subgroup = data.raw["item-subgroup"][item.subgroup]
		local item_group = data.raw["item-group"][item_subgroup.group]
		data:extend({
			{
				type = "item-subgroup",
				name = qrc_subgroup,
				group = "qrc-item-group",
				order = item_group.order.."-"..item_subgroup.order
			}
		})
	end

	return qrc_subgroup
end

local function setup_item(item_name, target_quality)
	if data.raw.item["qrc-"..target_quality.."-"..item_name] then return end

	local item = table.deepcopy(data.raw.item[item_name])

	make_icon(item, target_quality)

	item.localised_description = {"qrc.temp-description", item.name, target_quality}
	item.hidden_in_factoriopedia = true

	item.spoil_ticks = 1
	item.spoil_to_trigger_result =
	{
	  items_per_trigger = 1,
	  trigger = {
		type = "direct",
		action_delivery = {
		  type = "instant",
		  source_effects = {
			{
			  type = "script",
			  effect_id = "qrc."..target_quality.."."..item_name
			}
		  }
		}
	  }
	}
	item.name = "qrc-"..target_quality.."-"..item_name
	item.subgroup = get_subgroup(item)
	item.order = item.order.."-"..data.raw["quality"][target_quality].level

	data:extend({item})
	return item.name
end

function qrc.edit_quality_recipe(recipe)
	local _, target_quality, recipe_name = recipe.name:match("(.+)%_(.+)%_(.+)")

	recipe.type = recipe.type or "recipe"

	recipe.localised_name = {"", "[color="..get_quality_color(target_quality).."]", {"?", {"recipe-name."..recipe_name}, {"item-name."..recipe_name}, {"entity-name."..recipe_name}}, " (", {"quality-name."..target_quality}, ")[/color]"}

	--Add a temp item for every quality output
	for _, product in ipairs(recipe.results) do
		if product.type == "item" and product.quality then
			product.name = setup_item(product.name, product.quality)
			product.quality = nil
		end
	end

	if recipe.subgroup then
		recipe.subgroup = get_subgroup(recipe)
	end

	recipe.result_is_always_fresh = true
	recipe.preserve_products_in_machine_output = true
	recipe.hidden_in_factoriopedia = true
	recipe.hide_from_stats = true
	recipe.hide_from_player_crafting = true
	recipe.hide_from_signal_gui = true
end

return qrc