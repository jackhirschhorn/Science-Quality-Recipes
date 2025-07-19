--Register replace item on spoil event
script.on_event("on_script_trigger_effect", function(event)
	if not event.effect_id then return end

	--Return if not 
	if string.sub(event.effect_id, 1, 3) ~= "qrc" then return end

	--Check 
	local _, target_quality, target_item = event.effect_id:match("(.+)%.(.+)%.(.+)")

	local entity = event.target_entity
	local item = {name=target_item, quality = target_quality}

	--Handle missing entity / item on ground by spawning the item on the ground
	if not entity then 
		game.surfaces[event.surface_index].spill_item_stack{position = event.target_position, stack = item}
		return
	end

	--Check how the item was removed from the machine
	if entity.type == "inserter" then
		--why doesn't .insert() work with inserters???????
		item.count = entity.held_stack.count + 1
		entity.held_stack.set_stack(item)
	elseif entity.type == "loader" then
		--gotta check both or else the items get eaten
		if entity.get_transport_line(1).can_insert_at_back(item) then
			entity.get_transport_line(1).insert_at_back(item)
		else
			entity.get_transport_line(2).insert_at_back(item)
		end
	elseif entity.type == "construction-robot" then
		entity.get_inventory(defines.inventory.robot_cargo).insert(item)
	elseif entity.type == "character" or entity.type == "container" then
		--so simple i love it
		entity.insert(item)
	end
end)

local function reject_recipe(machine, reason)
	machine.set_recipe()
	for _, player in pairs(machine.force.players) do
		if player.opened == machine then
			player.create_local_flying_text{
				text = {"qrc."..reason},
				create_at_cursor = true
			}
			player.play_sound{
				path = "utility/cannot_build",
				position = machine.position
			}
		elseif player.surface == machine.surface then
			player.create_local_flying_text{
				text = {"qrc."..reason},
				position = machine.position
			}
			player.play_sound{
				path = "utility/cannot_build",
				position = machine.position
			}
		end
	end
end

local function check_machine_quality(machine)
	local recipe, quality = machine.get_recipe()
	if not quality then return end
	
	if quality.name ~= "normal" then
		if not prototypes.recipe["qrc_"..quality.name.."_"..recipe.name] then
			reject_recipe(machine, "recipe-doesnt-exist")
		else
			machine.set_recipe("qrc_"..quality.name.."_"..recipe.name)
		end
	end
end

local function on_entity_added(event)
	local entity = event.created_entity or event.entity or event.destination
	if entity == nil or not entity.valid then return end
	if entity.type == "assembling-machine" or (entity.type == "entity-ghost" and entity.ghost_type == "assembling-machine") then
		check_machine_quality(entity)
	end
end

script.on_event("on_tick", function()
	--for _, player in pairs(game.players) do
	--	if player then
	--		if player.opened then
	--			local entity = player.opened
	--			if not entity then return end
	--			if entity.prototype == LuaEquipmentGridPrototype then return end
	--			if entity.type == "assembling-machine" or (entity.type == "entity-ghost" and entity.ghost_type == "assembling-machine") then
	--				check_machine_quality(entity)
	--			end
	--		end
	--	end
	--end
end)

script.on_event("on_built_entity", on_entity_added)
script.on_event("on_robot_built_entity", on_entity_added)
script.on_event("script_raised_built", on_entity_added)
script.on_event("script_raised_revive", on_entity_added)
script.on_event("on_entity_settings_pasted", on_entity_added)
