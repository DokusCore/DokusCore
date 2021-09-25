--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterCommand("help", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Help.Users) then IsForUsers = true end
  if (_Commands.Help.Admins) then IsForAdmins = true end
  if (_Commands.Help.SuperAdmins) then IsForOwners = true end

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

  if IsForUsers and IsUser and CMD.SetCharName.Users then table.insert(Cmds, {'^3/^5SetCharName^0', _('CMD_Help_SetCharName', Lang) }) end
  if IsForUsers and IsUser and CMD.Discord.Users then table.insert(Cmds, {'^3/^5Discord^0   ', _('CMD_Help_Discord', Lang) }) end
  if IsForUsers and IsUser and CMD.InfoChar.Users then table.insert(Cmds, {'^3/^5InfoChar^0', _('CMD_Help_InfoChar', Lang) }) end
  if IsForUsers and IsUser and CMD.InfoAcc.Users then table.insert(Cmds, {'^3/^5InfoAcc^0', _('CMD_Help_InfoAcc', Lang) }) end
  if IsForUsers and IsUser and CMD.Language.Users then table.insert(Cmds, {'^3/^5Language^0', _('CMD_Help_Language', Lang) }) end
  if IsForUsers and IsUser and CMD.Coords.Users then table.insert(Cmds, {'^3/^5Coords^0', _('CMD_Help_Coords', Lang) }) end
  if IsForUsers and IsUser and CMD.Help.Users then table.insert(Cmds, {'^3/^5help^0', _('CMD_Help_Help', Lang) }) end
  if IsForUsers and IsUser and CMD.AddMoney.Users then table.insert(Cmds, {'^3/^5addmoney^0  ', _('CMD_Help_AddCurrency', Lang) }) end
  if IsForUsers and IsUser and CMD.AddGold.Users then table.insert(Cmds, {'^3/^5addgold^0   ', _('CMD_Help_AddCurrency', Lang) }) end
  if IsForUsers and IsUser and CMD.Hud.Users then table.insert(Cmds, {'^3/^5hud^0   ', _('CMD_Help_Hud', Lang) }) end

  if IsForAdmins and IsAdmin and CMD.SetCharName.Admins then table.insert(Cmds, {'^3/^5SetCharName^0', _('CMD_Help_SetCharName', Lang) }) end
  if IsForAdmins and IsAdmin and CMD.Discord.Admins then table.insert(Cmds, {'^3/^5Discord^0   ', _('CMD_Help_Discord', Lang) }) end
  if IsForAdmins and IsAdmin and CMD.InfoChar.Admins then table.insert(Cmds, {'^3/^5InfoChar^0', _('CMD_Help_InfoChar', Lang) }) end
  if IsForAdmins and IsAdmin and CMD.InfoAcc.Admins then table.insert(Cmds, {'^3/^5InfoAcc^0', _('CMD_Help_InfoAcc', Lang) }) end
  if IsForAdmins and IsAdmin and CMD.Language.Admins then table.insert(Cmds, {'^3/^5Language^0', _('CMD_Help_Language', Lang) }) end
  if IsForAdmins and IsAdmin and CMD.Coords.Admins then table.insert(Cmds, {'^3/^5Coords^0', _('CMD_Help_Coords', Lang) }) end
  if IsForAdmins and IsAdmin and CMD.Help.Admins then table.insert(Cmds, {'^3/^5help^0', _('CMD_Help_Help', Lang) }) end
  if IsForAdmins and IsAdmin and CMD.AddMoney.Admins then table.insert(Cmds, {'^3/^5addmoney^0  ', _('CMD_Help_AddCurrency', Lang) }) end
  if IsForAdmins and IsAdmin and CMD.AddGold.Admins then table.insert(Cmds, {'^3/^5addgold^0   ', _('CMD_Help_AddCurrency', Lang) }) end
  if IsForAdmins and IsAdmin and CMD.Hud.Admins then table.insert(Cmds, {'^3/^5hud^0   ', _('CMD_Help_Hud', Lang) }) end

  if IsForOwners and IsOwner and CMD.SetCharName.SuperAdmins then table.insert(Cmds, {'^3/^5SetCharName^0', _('CMD_Help_SetCharName', Lang) }) end
  if IsForOwners and IsOwner and CMD.Discord.SuperAdmins then table.insert(Cmds, {'^3/^5Discord^0   ', _('CMD_Help_Discord', Lang) }) end
  if IsForOwners and IsOwner and CMD.InfoChar.SuperAdmins then table.insert(Cmds, {'^3/^5InfoChar^0', _('CMD_Help_InfoChar', Lang) }) end
  if IsForOwners and IsOwner and CMD.InfoAcc.SuperAdmins then table.insert(Cmds, {'^3/^5InfoAcc^0', _('CMD_Help_InfoAcc', Lang) }) end
  if IsForOwners and IsOwner and CMD.Language.SuperAdmins then table.insert(Cmds, {'^3/^5Language^0', _('CMD_Help_Language', Lang) }) end
  if IsForOwners and IsOwner and CMD.Coords.SuperAdmins then table.insert(Cmds, {'^3/^5Coords^0', _('CMD_Help_Coords', Lang) }) end
  if IsForOwners and IsOwner and CMD.Help.SuperAdmins then table.insert(Cmds, {'^3/^5help^0', _('CMD_Help_Help', Lang) }) end
  if IsForOwners and IsOwner and CMD.AddMoney.SuperAdmins then table.insert(Cmds, {'^3/^5addmoney^0  ', _('CMD_Help_AddCurrency', Lang) }) end
  if IsForOwners and IsOwner and CMD.AddGold.SuperAdmins then table.insert(Cmds, {'^3/^5addgold^0   ', _('CMD_Help_AddCurrency', Lang) }) end
  if IsForOwners and IsOwner and CMD.Hud.SuperAdmins then table.insert(Cmds, {'^3/^5hud^0   ', _('CMD_Help_Hud', Lang) }) end

  -- TriggerEvent('DokusCore:C:Core:ShowNote', 'System Help', 'Check the console (F8)')
  print("^6=================================================================")
  print("^3          [ DokusCore Chat / Console Commando's ]")
  print("^6=================================================================")
  for k, v in pairs(Cmds) do print(v[1], v[2]) end
  print("^6=================================================================")
  print("^3         For more information, visit DokusCore.com               ")
  print("^6=================================================================")
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
