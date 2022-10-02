--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  while not Loaded do Wait(1000)
    DisplayHudComp('HUD_CTX_INFINITE_AMMO')
    DisplayHudComp('HUD_CTX_IN_GUARMA_AND_BROKE')
    if (NetworkActive()) then
      ShowHud(true)
      EnablePVP()
      HideHudComp('HUD_CTX_INFINITE_AMMO')
      HideHudComp('HUD_CTX_IN_GUARMA_AND_BROKE')
      if (_ShowMap) then ShowMap(true) else ShowMap(false) end
      if (_ShowMiniMap) then DisplayHudComp('HUD_CTX_INFO_CARD') end
      if not (_ShowMiniMap) then HideHudComp('HUD_CTX_INFO_CARD') end
      TriggerEvent('DokusCore:Core:LoadUser', SteamName())
      TriggerEvent('DokusCore:Metabolism:ShowHud', false)
      Loaded = true
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
AddEventHandler('DokusCore:Core:LoadUser', function(sName)
  print(System.."^3Syncing User with DokusCore^0")
  local iDs = TSC('DokusCore:Core:GetUserIDs', { 'user' })
  if (UserData().SteamID == nil) then TriggerEvent('DokusCore:Sync:Set:UserData', { 'SteamID', { iDs[1] } }) end
  if (UserData().sName == nil)   then TriggerEvent('DokusCore:Sync:Set:UserData', { 'sName',   { sName }  }) end
  local Data = UserData()
  local User = TSC('DokusCore:Core:DBGet:Users', { 'User', { Data.SteamID } })
  if not (User.Exist) then TriggerServerEvent('DokusCore:Core:DBIns:Users', { Data.SteamID, Data.sName, iDs[3], iDs[2], iDs[4], iDs[5] }) end
  if (User.Exist) then if (Data.sName ~= User.Result[1].sName) then TriggerServerEvent('DokusCore:Core:DBSet:Users', { 'sName', { Data.Steam, Data.sName } }) end end
  local Settings = TSC('DokusCore:Core:DBGet:Settings', { 'user', { Data.SteamID } })
  if not (Settings.Exist) then TriggerServerEvent('DokusCore:Core:DBIns:Settings', { 'user', { Data.SteamID, 1, _Language.Lang } }) end
  TriggerServerEvent('DokusCore:Sync:Set:CoreData', { 'FrameReady', { true } })
  TriggerEvent('DokusCore:Sync:Set:CoreData', { 'FrameReady', { true } })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
















































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
