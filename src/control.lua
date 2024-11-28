--Register event
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