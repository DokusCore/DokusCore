--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterCommand("setcharname", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.SetCharName.Users) then IsForUsers = true end
  if (_Commands.SetCharName.Admins) then IsForAdmins = true end
  if (_Commands.SetCharName.SuperAdmin) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.Users) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    local Table = DB.Characters.SetCharName
    if (args[1] == nil) then ErrUsageMsg(_('Error_FirstName', User.Language)) return end
    if (args[2] == nil) then ErrUsageMsg(_('Error_LastName', User.Language)) return end
    TSC('DokusCore:S:Core:DB:Update', {DB.Characters, Table, 'cName', args[1]..' '..args[2]})
    TriggerEvent('DokusCore:C:Core:ShowNote', _('SetCharNameNameTo', User.Language), args[1]..' '..args[2])
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
