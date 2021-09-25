--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
-- Needs to be re-written - temp example
-- It also only wants to play 1 piano at the same time.
-- Other saloon pianos stay quite.
--------------------------------------------------------------------------------
local NPC_Valentine  = nil

Pianos = {
    {ID = "Valentine",    x= -312.36,  y= 799.05,   z= 118.48, h= 102.3},
    {ID = "Saint Denis", x= 2631.82,  y= -1232.31, z= 53.70,  h= 62.0},
    {ID = "Rhodos",       x= 1346.95,  y= -1371.07, z= 79.99,  h=351.0},
    {ID = "Blackwater",   x= -814.98,  y= -1313.04, z= 43.18,  h= 358.0},
    {ID = "Armadillo",    x= -3706.38, y= -2589.00, z= -13.82, h= 360.0},
    {ID = "Tumbleweed",   x= -5516.0,  y= -2914.53, z= -2.26,  h= 121.4},
    {ID = "vHoorn",       x= 2944.12,   y= 528.87,  z= 44.85,  h= 359.03},
  }

CreateThread(function()
	local Hash2 = GetHashKey('PROP_HUMAN_PIANO')
	local _1 = GetHashKey('U_M_M_NbxMusician_01')
	while not HasModelLoaded(_1) do RequestModel(_1) Wait(1) end
	NPC_Valentine = CreatePed(_1, Pianos[1].x,Pianos[1].y,Pianos[1].z,Pianos[1].h, true, 0) Wait(1000)
	Citizen.InvokeNative(0x1794B4FCC84D812F, NPC_Valentine, 1) -- SetEntityVisible
	Citizen.InvokeNative(0x0DF7692B1D9E7BA7, NPC_Valentine, 255, false) -- SetEntityAlpha
	Citizen.InvokeNative(0x283978A15512B2FE, NPC_Valentine, true) -- SetRandomOutfitVariation
	Citizen.InvokeNative(0x7D9EFB7AD6B19754, NPC_Valentine, true) -- FreezeEntityPosition
	Citizen.InvokeNative(0xDC19C288082E586E, NPC_Valentine, 1, 1) --SetEntityAsMissionEntity
	Citizen.InvokeNative(0x919BE13EED931959, NPC_Valentine, - 1) -- TaskStandStill
	Wait(100)
	Citizen.InvokeNative(0xC80A74AC829DDD92, NPC_Valentine, _1) -- SET_PED_RELATIONSHIP_GROUP_HASH
	Citizen.InvokeNative(0x4AD96EF928BD4F9A, NPC_Valentine) -- SetModelAsNoLongerNeeded
	TaskStartScenarioAtPosition(NPC_Valentine, Hash2, Pianos[1].x,Pianos[1].y,Pianos[1].z,Pianos[1].h, 0, true, true, 0, true)
end)
