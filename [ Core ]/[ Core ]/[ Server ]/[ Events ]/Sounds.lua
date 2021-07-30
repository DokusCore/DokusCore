--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:S:Core:Sounds:PlayOnUser')
AddEventHandler('DokusCore:S:Core:Sounds:PlayOnUser', function(CharID, File, Vol)
  TriggerClientEvent('DokusCore:C:Core:Sounds:PlayOnUser', CharID, File, Vol)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:S:Core:Sounds:PlayOnSource')
AddEventHandler('DokusCore:S:Core:Sounds:PlayOnSource', function(File, Vol)
  TriggerClientEvent('DokusCore:C:Core:Sounds:PlayOnUser', source, File, Vol)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:S:Core:Sounds:PlayOnAll')
AddEventHandler('DokusCore:S:Core:Sounds:PlayOnAll', function(File, Vol)
  TriggerClientEvent('DokusCore:C:Core:Sounds:PlayOnAll', -1, File, Vol)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:S:Core:Sounds:PlayRadiusOfCoords')
AddEventHandler('DokusCore:S:Core:Sounds:PlayRadiusOfCoords', function(pCoords, mDist, File, Vol)
  TriggerClientEvent('DokusCore:C:Core:Sounds:PlayRadiusOfCoords', -1, pCoords, mDist, File, Vol)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
