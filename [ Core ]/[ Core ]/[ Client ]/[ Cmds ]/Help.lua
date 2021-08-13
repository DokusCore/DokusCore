--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterCommand("help", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Help.Users) then IsForUsers = true end
  if (_Commands.Help.Admins) then IsForAdmins = true end
  if (_Commands.Help.SuperAdmin) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.Users) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  if IsForUsers and IsUser and CMD.SetCharName.Users then table.insert(Cmds, {'^3/^5SetCharName^0', _('CMD:Help:SetCharName', User.Language) }) end
  if IsForUsers and IsUser and CMD.Discord.Users then table.insert(Cmds, {'^3/^5Discord^0   ', _('CMD:Help:Discord', User.Language) }) end
  if IsForUsers and IsUser and CMD.InfoChar.Users then table.insert(Cmds, {'^3/^5InfoChar^0', _('CMD:Help:InfoChar', User.Language) }) end
  if IsForUsers and IsUser and CMD.InfoAcc.Users then table.insert(Cmds, {'^3/^5InfoAcc^0', _('CMD:Help:InfoAcc', User.Language) }) end
  if IsForUsers and IsUser and CMD.Language.Users then table.insert(Cmds, {'^3/^5Language^0', _('CMD:Help:Language', User.Language) }) end
  if IsForUsers and IsUser and CMD.Coords.Users then table.insert(Cmds, {'^3/^5Coords^0', _('CMD:Help:Coords', User.Language) }) end
  if IsForUsers and IsUser and CMD.Help.Users then table.insert(Cmds, {'^3/^5help^0', _('CMD:Help:Help', User.Language) }) end
  if IsForUsers and IsUser and CMD.AddMoney.Users then table.insert(Cmds, {'^3/^5addmoney^0  ', _('CMD:Help:AddCurrency', User.Language) }) end
  if IsForUsers and IsUser and CMD.AddGold.Users then table.insert(Cmds, {'^3/^5addgold^0   ', _('CMD:Help:AddCurrency', User.Language) }) end
  if IsForUsers and IsUser and CMD.Hud.Users then table.insert(Cmds, {'^3/^5hud^0   ', _('CMD_Help_Hud', User.Language) }) end

  if IsForAdmins and IsAdmin and CMD.SetCharName.Admin then table.insert(Cmds, {'^3/^5SetCharName^0', _('CMD:Help:SetCharName', User.Language) }) end
  if IsForAdmins and IsAdmin and CMD.Discord.Admin then table.insert(Cmds, {'^3/^5Discord^0   ', _('CMD:Help:Discord', User.Language) }) end
  if IsForAdmins and IsAdmin and CMD.InfoChar.Admin then table.insert(Cmds, {'^3/^5InfoChar^0', _('CMD:Help:InfoChar', User.Language) }) end
  if IsForAdmins and IsAdmin and CMD.InfoAcc.Admin then table.insert(Cmds, {'^3/^5InfoAcc^0', _('CMD:Help:InfoAcc', User.Language) }) end
  if IsForAdmins and IsAdmin and CMD.Language.Admin then table.insert(Cmds, {'^3/^5Language^0', _('CMD:Help:Language', User.Language) }) end
  if IsForAdmins and IsAdmin and CMD.Coords.Admin then table.insert(Cmds, {'^3/^5Coords^0', _('CMD:Help:Coords', User.Language) }) end
  if IsForAdmins and IsAdmin and CMD.Help.Admin then table.insert(Cmds, {'^3/^5help^0', _('CMD:Help:Help', User.Language) }) end
  if IsForAdmins and IsAdmin and CMD.AddMoney.Admin then table.insert(Cmds, {'^3/^5addmoney^0  ', _('CMD:Help:AddCurrency', User.Language) }) end
  if IsForAdmins and IsAdmin and CMD.AddGold.Admin then table.insert(Cmds, {'^3/^5addgold^0   ', _('CMD:Help:AddCurrency', User.Language) }) end
  if IsForAdmins and IsAdmin and CMD.Hud.Users then table.insert(Cmds, {'^3/^5hud^0   ', _('CMD_Help_Hud', User.Language) }) end

  if IsForOwners and IsOwner and CMD.SetCharName.SuperAdmin then table.insert(Cmds, {'^3/^5SetCharName^0', _('CMD:Help:SetCharName', User.Language) }) end
  if IsForOwners and IsOwner and CMD.Discord.SuperAdmin then table.insert(Cmds, {'^3/^5Discord^0   ', _('CMD:Help:Discord', User.Language) }) end
  if IsForOwners and IsOwner and CMD.InfoChar.SuperAdmin then table.insert(Cmds, {'^3/^5InfoChar^0', _('CMD:Help:InfoChar', User.Language) }) end
  if IsForOwners and IsOwner and CMD.InfoAcc.SuperAdmin then table.insert(Cmds, {'^3/^5InfoAcc^0', _('CMD:Help:InfoAcc', User.Language) }) end
  if IsForOwners and IsOwner and CMD.Language.SuperAdmin then table.insert(Cmds, {'^3/^5Language^0', _('CMD:Help:Language', User.Language) }) end
  if IsForOwners and IsOwner and CMD.Coords.SuperAdmin then table.insert(Cmds, {'^3/^5Coords^0', _('CMD:Help:Coords', User.Language) }) end
  if IsForOwners and IsOwner and CMD.Help.SuperAdmin then table.insert(Cmds, {'^3/^5help^0', _('CMD:Help:Help', User.Language) }) end
  if IsForOwners and IsOwner and CMD.AddMoney.SuperAdmin then table.insert(Cmds, {'^3/^5addmoney^0  ', _('CMD:Help:AddCurrency', User.Language) }) end
  if IsForOwners and IsOwner and CMD.AddGold.SuperAdmin then table.insert(Cmds, {'^3/^5addgold^0   ', _('CMD:Help:AddCurrency', User.Language) }) end
  if IsForOwners and IsOwner and CMD.Hud.Users then table.insert(Cmds, {'^3/^5hud^0   ', _('CMD_Help_Hud', User.Language) }) end

  TriggerEvent('DokusCore:C:Core:ShowNote', 'System Help', 'Check the console (F8)')
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
