
RECIPE.name = "M1911"
RECIPE.description = "M1911 Pistol"
RECIPE.model = "models/weapons/tfa_cod/mwr/w_m1911.mdl"
RECIPE.category = "Weapons"
RECIPE.requirements = {
	["scrap"] = 1
}
RECIPE.results = {
	["tfa_mwr_m1911"] = 1
}
--RECIPE.tools = {
--	"cid"
--}
RECIPE.flag = "G"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_gunsmith")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a gunsmith table."
end)
