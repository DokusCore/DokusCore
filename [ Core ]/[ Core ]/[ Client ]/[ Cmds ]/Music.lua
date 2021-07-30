--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterCommand("music", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Music.Users) then IsForUsers = true end
  if (_Commands.Music.Admins) then IsForAdmins = true end
  if (_Commands.Music.SuperAdmin) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.Users) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    local Switch, Value = nil, false
    if (args[1] == nil) then return Note('Error: Please enter true or false!', 'topRight', 10000) end
    if (string.lower(args[1]) == 'true') then User.Music = true Switch = 'on' Value = true end
    if (string.lower(args[1]) == 'false') then User.Music = false Switch = 'off' Value = false end
    TriggerEvent('DokusCore:C:Core:ShowNote', 'System Music', 'Is turned '..Switch)
    TSC('DokusCore:S:Core:DB:UpdateDBViaSteam', { DB.Users.SetMusic, 'Music', Value, User.Steam })
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
