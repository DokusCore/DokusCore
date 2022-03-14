--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  while not Loaded do Wait(1000)
    if (Network()) then
      ShowHud(true)
      _User.sName = SteamName()
      EnablePVP()
      HideHudComp('HUD_CTX_INFINITE_AMMO')
      HideHudComp('HUD_CTX_IN_GUARMA_AND_BROKE')
      if (_ShowMap) then ShowMap(true) else ShowMap(false) end
      if (_ShowMiniMap) then DisplayHudComp('HUD_CTX_INFO_CARD') end
      if not (_ShowMiniMap) then HideHudComp('HUD_CTX_INFO_CARD') end
      TriggerEvent('DokusCore:Core:LoadUser')
      Loaded = true
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
AddEventHandler('DokusCore:Core:LoadUser', function()
  print(System.."^3Syncing User with DokusCore^0")
  -- Set Users Steam ID
  local iDs = TSC('DokusCore:Core:GetUserIDs', { 'user' })
  _User.Steam = iDs[1]
  Wait(1000)

  -- Check if the players database users table is correct
  local User = TSC('DokusCore:Core:DBGet:Users', { 'User', { _User.Steam } })
  if not (User.Exist) then TriggerServerEvent('DokusCore:Core:DBIns:Users', { _User.Steam, _User.sName, iDs[3], iDs[2], iDs[4], iDs[5] }) end
  if (User.Exist) then if (_User.sName ~= User.Result[1].sName) then TriggerServerEvent('DokusCore:Core:DBSet:Users', { 'sName', { _User.Steam, _User.sName } }) end end

  -- Check if the players database settings table is correct
  local Settings = TSC('DokusCore:Core:DBGet:Settings', { 'user', { _User.Steam } })
  if not (Settings.Exist) then TriggerServerEvent('DokusCore:Core:DBIns:Settings', { 'user', { _User.Steam, 1, _Language.Lang } }) end

  -- Toggle the ready switches.
  _Core.FrameReady  = true
  TriggerEvent('DokusCore:Core:Hud:Toggle', false)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
















































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
