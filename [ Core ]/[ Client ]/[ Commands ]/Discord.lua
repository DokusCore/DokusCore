--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Commands:Discord')
AddEventHandler('DokusCore:Core:Commands:Discord', function()
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Discord.Users) then IsForUsers = true end
  if (_Commands.Discord.Admins) then IsForAdmins = true end
  if (_Commands.Discord.SuperAdmins) then IsForOwners = true end



  -- Check if user is admin or superadmin
  local UserData = TCTCC('DokusCore:Sync:Get:UserData')
  local Group, Cmds, CMD = GetUserChar(UserData.SteamID, UserData.CharID).Group, {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.User) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    NoteObjective("Discord Link", _DiscordInvite, "Horn", 7000)
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
