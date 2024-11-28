if settings.startup["qrc-enable-examples"].value then
	data.extend({
		{
			type = "recipe",
			name = "quality-test",
			qrc = "legendary",
			energy_required = 1,
			ingredients = {
				{type="item", name="steel-plate", amount=8}
			},
			results = {
				{type="item", name="iron-plate", quality = "legendary", amount=1}
			}
		},
		{
			type = "recipe",
			name = "quality-test-2",
			qrc = "epic",
			energy_required = 1,
			ingredients = {
				{type="item", name="steel-plate", amount=8}
			},
			results = {
				{type="item", name="copper-plate", quality = "epic", amount=1}
			}
		}
	})
end