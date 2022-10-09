--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Sound player for Music
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Music:PlayOnUser')
AddEventHandler('DokusCore:Core:MP:Music:PlayOnUser', function(File, Vol)
  SendNUIMessage({ Type = 'Music', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Music:MusicFade')
AddEventHandler('DokusCore:Core:MP:Music:MusicFade', function() SendNUIMessage({ Type = 'MusicFade'}) end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Music:PlayOnAll')
AddEventHandler('DokusCore:Core:MP:Music:PlayOnAll', function(File, Vol)
  SendNUIMessage({ Type = 'Music', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Music:PlayInRadiusOfCoords')
AddEventHandler('DokusCore:Core:MP:Music:PlayInRadiusOfCoords', function(OpCoords, mDist, File, Vol)
  local pCoords = GetCoords(PedID())
	local Dist = #(pCoords - OpCoords)
	if (Dist < mDist) then SendNUIMessage({ Type = 'Music', File  = File,	Volume = Vol or 0.3	}) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Sound player for the Metabolism
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Metabolism:PlayOnUser')
AddEventHandler('DokusCore:Core:MP:Metabolism:PlayOnUser', function(File, Vol)
  SendNUIMessage({ Type = 'Metabolism', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Metabolism:PlayOnAll')
AddEventHandler('DokusCore:Core:MP:Metabolism:PlayOnAll', function(File, Vol)
  SendNUIMessage({ Type = 'Metabolism', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Metabolism:PlayInRadiusOfCoords')
AddEventHandler('DokusCore:Core:MP:Metabolism:PlayInRadiusOfCoords', function(OpCoords, mDist, File, Vol)
  local pCoords = GetCoords(PedID())
	local Dist = #(pCoords - OpCoords)
	if (Dist < mDist) then SendNUIMessage({ Type = 'Metabolism', File  = File,	Volume = Vol or 0.3	}) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Sound player for the Sounds
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Sounds:PlayOnUser')
AddEventHandler('DokusCore:Core:MP:Sounds:PlayOnUser', function(File, Vol)
  SendNUIMessage({ Type = 'Sounds', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Sounds:PlayOnAll')
AddEventHandler('DokusCore:Core:MP:Sounds:PlayOnAll', function(File, Vol)
  SendNUIMessage({ Type = 'Sounds', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Sounds:PlayInRadiusOfCoords')
AddEventHandler('DokusCore:Core:MP:Sounds:PlayInRadiusOfCoords', function(OpCoords, mDist, File, Vol)
  local pCoords = GetCoords(PedID())
	local Dist = #(pCoords - OpCoords)
	if (Dist < mDist) then SendNUIMessage({ Type = 'Sounds', File  = File,	Volume = Vol or 0.3	}) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Sound player for Dialogs
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Dialogs:PlayOnUser')
AddEventHandler('DokusCore:Core:MP:Dialogs:PlayOnUser', function(File, Vol)
  SendNUIMessage({ Type = 'Dialogs', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Dialogs:PlayOnAll')
AddEventHandler('DokusCore:Core:MP:Dialogs:PlayOnAll', function(File, Vol)
  SendNUIMessage({ Type = 'Dialogs', File = File, Volume = Vol })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:MP:Dialogs:PlayInRadiusOfCoords')
AddEventHandler('DokusCore:Core:MP:Dialogs:PlayInRadiusOfCoords', function(OpCoords, mDist, File, Vol)
  local pCoords = GetCoords(PedID())
	local Dist = #(pCoords - OpCoords)
	if (Dist < mDist) then SendNUIMessage({ Type = 'Dialogs', File  = File,	Volume = Vol or 0.3	}) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
