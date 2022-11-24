--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterCommand("scenario", function(source, args, rawCommand)
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Scenario.Users) then IsForUsers = true end
  if (_Commands.Scenario.Admins) then IsForAdmins = true end
  if (_Commands.Scenario.SuperAdmins) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local UserData = TCTCC('DokusCore:Sync:Get:UserData')
  local Group, Cmds, CMD, Lang = GetUserChar(UserData.SteamID, UserData.CharID).Group, {}, _Commands, _Language.Lang
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.User) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end


  local function DoThis()
    local Range = 15.0
    local PedID = PedID()
    local Coords = GetEntityCoords(PedID)
    if (Low(args[1]) == 'start') then
      if (args[2] ~= nil) then Range = TN(Round(Range, 1)) end
      Citizen.InvokeNative(0x322BFDEA666E2B0E, PedID, Coords, Range, -1, 1, 1, 1, 1)
    end

    if (Low(args[1]) == 'stop') then
      ClearPedTasks(PedID)
    end
  end

  if IsForUsers and IsUser then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
TriggerEvent('chat:addSuggestion', '/scenario', 'Play random scenario in place', {
    { name="Type",  help="Stop or Start?" },
    { name="Range", help="Within range in meters" }
})
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
