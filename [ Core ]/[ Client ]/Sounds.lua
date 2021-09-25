--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Sounds:PlayOnUser')
AddEventHandler('DokusCore:Core:Sounds:PlayOnUser', function(File, Vol)
  SendNUIMessage({ Type = 'Play', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Sounds:PlayOnAll')
AddEventHandler('DokusCore:Core:Sounds:PlayOnAll', function(File, Vol)
  SendNUIMessage({ Type = 'Play', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Sounds:PlayInRadiusOfCoords')
AddEventHandler('DokusCore:Core:Sounds:PlayInRadiusOfCoords', function(OpCoords, mDist, File, Vol)
	local pCoords = GetEntityCoords(PlayerPedId())
	local Dist = #(pCoords - OpCoords)
	if (Dist < mDist) then SendNUIMessage({ Type = 'Play', File  = File,	Volume = Vol or 0.3	}) end
end)
--------------------------------------------------------------------------------





























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
