local qrc = require("api")

for _, recipe in pairs(data.raw.recipe) do
	if recipe.qrc then
		qrc.edit_quality_recipe(recipe)
	end
end