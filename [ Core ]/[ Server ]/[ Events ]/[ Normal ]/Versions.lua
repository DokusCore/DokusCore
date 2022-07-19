--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Versions.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CreateThread(function() TriggerEvent('DokusCore:Sync:Get:Modules:Version') end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:Set:PluginVersions')
AddEventHandler('DokusCore:Core:Set:PluginVersions', function(Data)
  for k,v in pairs(Data) do
    Tabi(PluginVersions, { Name = v.Name, Version = v.Version })
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CreateThread(function() Wait(8000)
  if (not (__SystemUpdateCheckDone)) then
    print([[^6################################################################################^0]])Wait(150)
    print([[^6#^1                             Critical System Error!                           ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
    print([[^6#^3 DokusCore was unable to check for the plugin versions. Most likely you've    ^6#^0]])Wait(150)
    print([[^6#^3  Deleted a citical system file. Please undo your changes, or grab a new      ^6#^0]])Wait(150)
    print([[^6#^3                of DokusCore main frame plugin from our GitHub!               ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:System:CoreCorrupted')
AddEventHandler('DokusCore:Core:System:CoreCorrupted', function() Wait(3000)
  print([[^6################################################################################^0]])Wait(150)
  print([[^6#^1                             Critical System Error!                           ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(150)
  print([[^6#^3 DokusCore was unable to check for the plugin versions. Most likely you've    ^6#^0]])Wait(150)
  print([[^6#^3  Deleted a citical system file. Please undo your changes, or grab a new      ^6#^0]])Wait(150)
  print([[^6#^3                of DokusCore main frame plugin from our GitHub!               ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(150)
end)








--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
