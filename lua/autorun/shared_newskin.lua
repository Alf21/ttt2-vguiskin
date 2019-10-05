if SERVER then
	AddCSLuaFile()
	AddCSLuaFile("skins/pureskin.lua")
else
	hook.Add("ForceDermaSkin", "Foreskin", function()
		return "pureskin"
	end)
	
	include("skins/pureskin.lua")
end
