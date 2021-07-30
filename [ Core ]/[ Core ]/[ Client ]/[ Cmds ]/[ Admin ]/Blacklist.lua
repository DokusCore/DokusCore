--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Command Blacklist
--------------------------------------------------------------------------------
RegisterCommand("blacklist", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.InfoAcc.Users) then IsForUsers = true end
  if (_Commands.InfoAcc.Admins) then IsForAdmins = true end
  if (_Commands.InfoAcc.SuperAdmin) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.Users) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    local Type, CharID, Time, Reason = args[1], args[2], args[3], args[4]
    if (Type == nil) then return ErrUsageMsg(_('Error_BlacklistType', User.Language), _('Usage_Blacklist', _Language.Lang)) end

    if (string.lower(Type) == 'add') then
      if (CharID == nil) then return ErrUsageMsg(_('Error_BlacklistID', User.Language), _('Usage_BlacklistAdd', _Language.Lang)) end
      if (Time == nil) then return ErrUsageMsg('Time error 1',  '1') end
      if (Reason == "") then Reason = nil end
      if (Reason == nil) then return ErrUsageMsg('Supply a reason', 'Supply a reason') end
      local iD = string.match(rawCommand, "%d+")
      if not iD then return ErrUsageMsg(_('Error_BlacklistID', User.Language), _('Usage_BlacklistAdd', _Language.Lang)) end
      local Until = args[3] or -1
      local Reason = string.gsub(rawCommand, "blacklist ", "_")
      Reason = string.gsub(Reason, args[1].." ", "_")
      Reason = string.gsub(Reason, args[2].." ", "_")
      Reason = string.gsub(Reason, Until.." ", "_")
      Reason = string.gsub(Reason, "-", "_")
      Reason = string.gsub(Reason, "_", "")
      TriggerServerEvent('DokusCore:Trigger:Server:BlacklistAdd', iD, Reason, Until)
    end

    if (string.lower(Type) == 'remove') then
      print("print0", IsIpAddress(CharID))
      if not (IsIpAddress(CharID)) then return ErrUsageMsg(_('Error_BlackListIP', User.Language), _('Usage_BlacklistRemove', _Language.Lang)) end
      TriggerServerEvent('DokusCore:Trigger:Server:BlacklistRemove', CharID)
    end
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
