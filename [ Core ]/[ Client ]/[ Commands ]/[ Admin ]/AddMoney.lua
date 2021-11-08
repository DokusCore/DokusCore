--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Low = string.lower
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterCommand("addmoney", function(source, args, rawCommand)
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.AddMoney.Users) then IsForUsers = true end
  if (_Commands.AddMoney.Admins) then IsForAdmins = true end
  if (_Commands.AddMoney.SuperAdmins) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD, Lang = GetUserGroup(), {}, _Commands, _Language.Lang
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.User) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local Steam = TSC('DokusCore:Core:GetUserIDs', { 'user' })[1]

  -- Get the users language
  if _Language.Multi then
    local Data = TSC('DokusCore:Core:DBGet:Settings', { 'user', { Steam } })
    Lang = Data.Result[1].Language
  end

  local function DoThis()
    local _source = source
    local Type, Amount = nil, nil
    local Data  = TSC('DokusCore:Core:DBGet:Settings', { 'user', { Steam } })
    if (args[1] == nil) then Notify(_('Err_AddMoneyID',  Lang), 'TopRight', 5000) Wait(3000) end
    if (args[1] == nil) then Notify(_('Usage_AddMoney', Lang), 'TopRight', 5000) return end
    if (args[2] == nil) then Notify(_('Err_AddMoneyType', Lang), 'TopRight', 5000) Wait(3000) end
    if (args[2] == nil) then Notify(_('Usage_AddMoney', Lang), 'TopRight', 5000) return end
    if (args[3] == nil) then Notify(_('Err_AddMoneyAmount', Lang), 'TopRight', 5000) Wait(3000) end
    if (args[3] == nil) then Notify(_('Usage_AddMoney', Lang), 'TopRight', 5000) return end
    if (Low(args[2]) == 'bank') then Type = 'BankMoney' end Wait(50)
    if (Low(args[2]) == 'wallet') then Type = 'Money' end Wait(50)
    TSC('DokusCore:Core:DBSet:Bank', { 'admin', { Type, '+', { Steam, UserData.CharID, args[3] } } })
    ShowTopNote('Transaction Success', '$'..args[3]..' given to player with ID '..args[1])
    TriggerEvent('DokusCore:Core:Hud:Update')
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
