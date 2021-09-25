--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local ShowInfo = false
RegisterCommand("infoacc", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.InfoAcc.Users) then IsForUsers = true end
  if (_Commands.InfoAcc.Admins) then IsForAdmins = true end
  if (_Commands.InfoAcc.SuperAdmins) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.User) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    if not ShowInfo then ShowInfo = true
    while ShowInfo do Wait(1)
      DrawInfo('ID: ~color_yellow~{}', 0.92, 0.11, 0.4)
      DrawInfo('Char ID: ~color_yellow~{}', 0.92, 0.14, 0.4)
      DrawInfo('Steam ID: ~color_yellow~{}', 0.92, 0.17, 0.4)
      DrawInfo('Steam Name: ~color_yellow~{}', 0.92, 0.20, 0.4)
    end else ShowInfo = false end
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
