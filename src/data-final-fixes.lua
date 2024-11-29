local qrc = require("api")

for _, recipe in pairs(data.raw.recipe) do
	if string.sub(recipe.name, 1, 3) == "qrc" then
		qrc.edit_quality_recipe(recipe)
	 end
end