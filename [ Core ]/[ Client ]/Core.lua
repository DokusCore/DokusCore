--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Store user data for when ever a module or feature needs this information
--------------------------------------------------------------------------------
UserData = { Steam = 0, CharID = 0, ServerID = 0, Coords = 0 }
CoreData = { ReadyToSync = false }
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Handeling the client to server callback system
--------------------------------------------------------------------------------
CreateThread(function()
	RegisterNetEvent(__..':client')
	AddEventHandler(__..':client', function(Event, ...)
		local p = promise.new()
		TriggerEvent((__..':C:%s'):format(Event), function(...) p:resolve({...}) end, ...)
		local result = Citizen.Await(p)
		TriggerServerEvent((__..':server:%s'):format(Event), table.unpack(result))
	end)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Wait for players network connection
--------------------------------------------------------------------------------
CreateThread(function()
  local Network = NetworkIsPlayerActive(PlayerId())
  while not Loaded do Wait(1000)
    if Network then
      local PedID = PlayerPedId()
      local sName = GetPlayerName()
      DisplayHud(true) -- This makes sure that the HUD can be displayed.

      -- Show the map
      if _ShowMap then Citizen.InvokeNative(0x4B8F743A4A6D2FF8, true) end
      if not _ShowMap then Citizen.InvokeNative(0x4B8F743A4A6D2FF8, false) end

      -- Show or hide the minimap
      if _ShowMiniMap then Citizen.InvokeNative(0x8BC7C1F929D07BF3 , GetHashKey('HUD_CTX_INFO_CARD')) end
      if not _ShowMiniMap then Citizen.InvokeNative(0x4CC5F2FC1332577F , GetHashKey('HUD_CTX_INFO_CARD')) end

      -- Hide the default game hud (Money and )
      Citizen.InvokeNative(0x4CC5F2FC1332577F, GetHashKey('HUD_CTX_INFINITE_AMMO'))
      Citizen.InvokeNative(0x4CC5F2FC1332577F, GetHashKey('HUD_CTX_IN_GUARMA_AND_BROKE'))

      -- Enable PVP so players can damage each other
      if (_EnablePVP) then
        Citizen.InvokeNative(0xF808475FA571D823, true)
        NetworkSetFriendlyFireOption(true)
        SetRelationshipBetweenGroups(5, `PLAYER`, `PLAYER`)
      end

      -- lets load the users data
      TriggerEvent('DokusCore:Core:LoadUser', PedID, sName)
    end
    Loaded = true
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Load the user on login
--------------------------------------------------------------------------------
AddEventHandler('DokusCore:Core:LoadUser', function(PedID, sName)
  -- First grab the players SteamID
  local iDs = TSC('DokusCore:Core:GetUserIDs', { 'user' })
	UserData.Steam = iDs[1]

  -- Check if the players database users table is correct
  local User = TSC('DokusCore:Core:DBGet:Users', { 'User', { iDs[1] } })
	if not (User.Exist) then TSC('DokusCore:Core:DBIns:Users', { iDs[1], sName, iDs[3], iDs[2], iDs[4], iDs[5] }) end

  -- Check if the players database settings table is correct
  local Settings = TSC('DokusCore:Core:DBGet:Settings', { 'user', { iDs[1] } })
  if not (Settings.Exist) then TSC('DokusCore:Core:DBIns:Settings', { 'user', { iDs[1], 1, _Language.Lang } }) end

  -- Check if the players database banks table is correct
	if not (_Modules.MultiCharacters) then
		local S = _StartWealth
	  local Bank = TSC('DokusCore:Core:DBGet:Banks', { 'user', { iDs[1], 1 }})
		if not (Bank.Exist) then
			TSC('DokusCore:Core:DBIns:Banks', { 'user', { iDs[1], 1, S.Money, S.Gold, S.BankMoney, S.BankGold } })
		end
	end

	-- Check if the players database character is correct.
	-- Only insert user on character id 1 if MultiCharacters is not used.
	if not (_Modules.MultiCharacters) then
		local Char = TSC('DokusCore:Core:DBGet:Characters', { 'user', 'single', { iDs[1], 1 } })
		local Index = { iDs[1], 1, _Moderation.User, '--', '--', '--', '--', 0, 0, 'unemployed', 0, '--', '--', '--' }
		if not (Char.Exist) then TSC('DokusCore:Core:DBIns:Characters', { 'user', Index } ) end
		UserData.CharID = 1
		TSC('DokusCore:Core:Hud:Initiate')
		TSC('DokusCore:Core:Hud:Toggle', true)
	else
		TSC('DokusCore:Core:Hud:Initiate')
		TSC('DokusCore:Core:Hud:Toggle', false)
	end

	-- Check the users Steam Name and if this is chanced, update the database
	-- to ensure the names in the database stay synced.
	if (User.Exist) then
		local SteamName = User.Result[1].sName
		if (sName ~= SteamName) then TSC('DokusCore:Core:DBSet:Users', { 'sName', { iDs[1], sName } }) end
	end

	-- Set core ready to update for if it is restarted
	CoreData.ReadyToSync = true
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Sync the core with all plugins again when the core restarts on a live server
--------------------------------------------------------------------------------
AddEventHandler('onResourceStart', function(resourceName)
  while not (CoreData.ReadyToSync) do Wait(10) end
	if (GetCurrentResourceName() ~= resourceName) then return end
	if (_Modules.MultiCharacters) then
		local CharID = TSC('DokusCore:MultiChar:SyncCharID')
		if (CharID == 0) then return end --<< Stop if the server just started
		local Steam = TSC('DokusCore:Core:GetUserIDs', { 'User' })[1]
		UserData.Steam = Steam UserData.CharID = CharID
		TSC('DokusCore:Core:Hud:Toggle', true)
		TSC('DokusCore:Core:Hud:Update', { 'User' })
	end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
