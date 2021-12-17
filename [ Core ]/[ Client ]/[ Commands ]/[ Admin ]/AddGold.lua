--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Low = string.lower
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterCommand("gold", function(source, args, rawCommand)
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.AddGold.Users) then IsForUsers = true end
  if (_Commands.AddGold.Admins) then IsForAdmins = true end
  if (_Commands.AddGold.SuperAdmins) then IsForOwners = true end

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
    if (args[1] == nil) then Notify(_('Err_EnterServerID',  Lang), 'TopRight', 5000) Wait(3000) end
    if (args[1] == nil) then Notify(_('Usage_Gold', Lang), 'TopRight', 5000) return end
    if (args[2] == nil) then Notify(_('Err_EnterCharID',  Lang), 'TopRight', 5000) Wait(3000) end
    if (args[2] == nil) then Notify(_('Usage_Gold', Lang), 'TopRight', 5000) return end
    if (args[3] == nil) then Notify(_('Err_WalletOrBank', Lang), 'TopRight', 5000) Wait(3000) end
    if (args[3] == nil) then Notify(_('Usage_Gold', Lang), 'TopRight', 5000) return end
    if (args[4] == nil) then Notify(_('Err_GoldMath', Lang), 'TopRight', 5000) Wait(3000) end
    if (args[4] == nil) then Notify(_('Usage_Gold', Lang), 'TopRight', 5000) return end
    if (args[5] == nil) then Notify(_('Err_CurrencyAmount', Lang), 'TopRight', 5000) Wait(3000) end
    if (args[5] == nil) then Notify(_('Usage_Gold', Lang), 'TopRight', 5000) return end
    if (Low(args[3]) == 'bank') then Type = 'BankGold' end Wait(50)
    if (Low(args[3]) == 'wallet') then Type = 'Gold' end Wait(50)

    if (Type == 'BankGold') then return Notify('The add gold and money for banks accounts is still in developement!') end

    TSC('DokusCore:Core:Admin:DBSet:Characters', { args[3], Type, args[4], { Steam, UserData.CharID, args[5] } })

    if ((Low(args[4]) == '+') or (Low(args[4]) == 'add')) then
      ShowTopNote('Transaction Success', args[5]..' Gold given to player with ID '..args[1])
    elseif ((Low(args[4]) == '-') or (Low(args[4]) == 'remove')) then
      ShowTopNote('Transaction Success', args[5]..' Gold removed to player with ID '..args[1])
    end

    TSC('DokusCore:Core:Hud:Update', { 'source', { args[1], args[2] } })
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
