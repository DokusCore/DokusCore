--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:Sounds:PlayOnUser')
AddEventHandler('DokusCore:Core:Sounds:PlayOnUser', function(CharID, File, Vol)
  TriggerClientEvent('DokusCore:C:Core:Sounds:PlayOnUser', CharID, File, Vol)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:Sounds:PlayOnSource')
AddEventHandler('DokusCore:Core:Sounds:PlayOnSource', function(File, Vol)
  TriggerClientEvent('DokusCore:Core:Sounds:PlayOnUser', source, File, Vol)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:Sounds:PlayOnAll')
AddEventHandler('DokusCore:Core:Sounds:PlayOnAll', function(File, Vol)
  TriggerClientEvent('DokusCore:Core:Sounds:PlayOnAll', -1, File, Vol)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:Sounds:PlayInRadiusOfCoords')
AddEventHandler('DokusCore:Core:Sounds:PlayInRadiusOfCoords', function(pCoords, mDist, File, Vol)
  TriggerClientEvent('DokusCore:Core:Sounds:PlayInRadiusOfCoords', -1, pCoords, mDist, File, Vol)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------





















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
