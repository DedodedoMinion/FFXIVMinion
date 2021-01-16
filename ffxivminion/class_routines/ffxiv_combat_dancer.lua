ffxiv_combat_dancer = {}
ffxiv_combat_dancer.range = 14 -- standard/tech step are 15y
ffxiv_combat_dancer.optionsPath = GetStartupPath()..[[\LuaMods\ffxivminion\class_routines\]].."ffxiv_combat_dancer.info"
if (not FileExists(ffxiv_combat_dancer.optionsPath)) then
	local defaults = {}
	defaults.settings = {
		gRestHP = 75,
		gRestMP = 0,
		gPotionHP = 50,
		gPotionMP = 0,
		gFleeHP = 35,
		gFleeMP = 0,
		gUseSprint = "0",
	}
	persistence.store(ffxiv_combat_dancer.optionsPath,defaults)
end
local options, e = persistence.load(ffxiv_combat_dancer.optionsPath)
if (options) then
	ffxiv_combat_dancer.options = options
end

