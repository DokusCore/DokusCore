--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:Sounds:PlayOnUser')
AddEventHandler('DokusCore:C:Core:Sounds:PlayOnUser', function(File, Vol)
  SendNUIMessage({ Type = 'Play', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:Sounds:PlayOnAll')
AddEventHandler('DokusCore:C:Core:Sounds:PlayOnAll', function(File, Vol)
  SendNUIMessage({ Type = 'Play', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:Sounds:PlayRadiusOfCoords')
AddEventHandler('DokusCore:C:Core:Sounds:PlayRadiusOfCoords', function(OpCoords, mDist, File, Vol)
	local pCoords = GetEntityCoords(PlayerPedId())
	local Dist = #(pCoords - OpCoords)
	if (Dist < mDist) then SendNUIMessage({ Type = 'Play', File  = File,	Volume = Vol or 0.3	}) end
end)
--------------------------------------------------------------------------------































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
