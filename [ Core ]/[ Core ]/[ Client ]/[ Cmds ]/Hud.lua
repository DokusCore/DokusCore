--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterCommand("hud", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Hud.Users) then IsForUsers = true end
  if (_Commands.Hud.Admins) then IsForAdmins = true end
  if (_Commands.Hud.SuperAdmin) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.Users) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    if (string.lower(args[1]) == 'update') then UpdateHud() end
    if (string.lower(args[1]) == 'show') then ShowHud() end
    if (string.lower(args[1]) == 'hide') then HideHud() end
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function UpdateHud()
  local Data = TSC('DokusCore:S:Core:DB:GetViaSteamAndCharID', { DB.Banks.Get, User.Steam, User.CharID })[1]
  TriggerEvent('DokusCore:C:Core:Hud:Update', {Data.Money, Data.BankMoney})
end

function ShowHud() TriggerEvent('DokusCore:C:Core:Hud:Toggle', true) end
function HideHud() TriggerEvent('DokusCore:C:Core:Hud:Toggle', false) end
