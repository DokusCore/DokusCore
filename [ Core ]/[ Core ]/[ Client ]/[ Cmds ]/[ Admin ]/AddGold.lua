--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterCommand("addgold", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.AddGold.Users) then IsForUsers = true end
  if (_Commands.AddGold.Admins) then IsForAdmins = true end
  if (_Commands.AddGold.SuperAdmin) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.Users) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    local _source = source
    local Type, Amount = nil, nil
    if not args[1] then ErrUsageMsg(_('Error_AddGoldID', User.Language), _('Usage_AddGold', User.Language)) return end
    if not args[1] then ErrUsageMsg(_('Error_AddGoldType', User.Language), _('Usage_AddGold', User.Language)) return end
    if not args[3] then ErrUsageMsg(_('Error_AddGoldAmount', User.Language), _('Usage_AddGold', User.Language)) return end
    if (string.lower(args[2]) == 'bank') then Type = 'bank'
    elseif (string.lower(args[2]) == 'wallet') then Type = 'wallet' else
    ErrUsageMsg(_('Error_AddGoldType', User.Language), _('Usage_AddGold', User.Language)) return end
    local iD = string.match(args[1], "%d+")
    local Steam = TSC('DokusCore:S:Core:GetUserIDs')
    print(Steam[1])
    TriggerServerEvent('DokusCore:S:Core:AddGold', Steam[1], iD, Type, math.floor(tonumber(args[3])))
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
