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
      TriggerEvent('DokusCore:Core:LoadUser')
      TriggerEvent('DokusCore:Metabolism:ShowHud', false)
      Loaded = true
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
AddEventHandler('DokusCore:Core:LoadUser', function()
  local Name = GetPlayerName(PlayerId())
  local iDs = TSC('DokusCore:Core:GetUserIDs', { 'User' })
  TriggerEvent('DokusCore:Sync:Set:UserData', { 'SteamID', { iDs[1] } })
  local User = TSC('DokusCore:Core:DBGet:Users', { 'User', { iDs[1] } })
  local Settings = TSC('DokusCore:Core:DBGet:Settings', { 'user', { iDs[1] } })
  if (not (User.Exist)) then TriggerServerEvent('DokusCore:Core:DBIns:Users', { iDs[1], 'INOP!', iDs[3], iDs[2], iDs[4], iDs[5] }) end
  if (not (Settings.Exist)) then TriggerServerEvent('DokusCore:Core:DBIns:Settings', { 'user', { iDs[1], 1, _Language.Lang } }) end

  if ((User.Exist) and (Settings.Exist)) then
    local Settings = TSC('DokusCore:Core:DBGet:Settings', { 'user', { iDs[1] } })
    TriggerEvent('DokusCore:Sync:Set:UserData', { 'Language', { Settings.Result[1].Language } })
  else
    TriggerEvent('DokusCore:Sync:Set:UserData', { 'Language', { _Language.Lang } })
  end

  TriggerServerEvent('DokusCore:Sync:Set:CoreData', { 'FrameReady', { true } })
  TriggerEvent('DokusCore:Sync:Set:CoreData', { 'FrameReady', { true } })
  print(System.."^6------------------------------------------------------------^0")
  print(System.."^2User and DokusCore are fully synced with DataSync!^0")
  print(System.."^2You are now able to restart other plugins!^0")
  print(System.."^6------------------------------------------------------------^0")
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
AddEventHandler('onResourceStop', function(Name)
  if (GetCurrentResourceName() ~= Name) then return end
  print(System.."^6------------------------------------------------------------^0")
  print(System.."^3Syncing Users with DokusCore^0")
  print(System.."^3Do not restart plugins during the syncing process!^0")
  print(System.."^6------------------------------------------------------------^0")
end)










































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
