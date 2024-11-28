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

	item.localised_name = {"", "[color="..get_quality_color(target_quality).."]", {"item-name."..item.name}, " (", {"quality-name."..target_quality}, ")[/color]"}
end

local function setup_item(item_name, target_quality)
	if data.raw.item["qrc-"..target_quality.."-"..item_name] then return end

	local item = table.deepcopy(data.raw.item[item_name])

	make_icon(item, target_quality)

	item.localised_description = {"", "Temporary item. It will turn into [item="..item.name.."] of quality [quality="..target_quality.."] after it's taken out of the machine."}
	item.hidden = true

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

	data:extend({item})
	return item.name
end

function qrc.edit_quality_recipe(recipe)
	recipe.type = recipe.type or "recipe"
	--if not recipe.name then [TODO: insert error here] end

	if get_quality_color(recipe.qrc) then
		recipe.localised_name = {"", "[color="..get_quality_color(recipe.qrc).."]", {"item-name."..recipe.results[1].name}, " (", {"quality-name."..recipe.qrc}, ")[/color]"}
	end

	--Add a temp item for every quality output
	for _, product in ipairs(recipe.results) do
		if product.type == "item" and product.quality then
			product.name = setup_item(product.name, product.quality)
			product.quality = nil
		end
	end

	recipe.result_is_always_fresh = true
	recipe.preserve_products_in_machine_output = true
	recipe.hidden = true
end

return qrc