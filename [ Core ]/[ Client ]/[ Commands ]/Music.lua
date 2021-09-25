--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterCommand("music", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Music.Users) then IsForUsers = true end
  if (_Commands.Music.Admins) then IsForAdmins = true end
  if (_Commands.Music.SuperAdmins) then IsForOwners = true end

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
    local Switch, Value = nil, false
    if (args[1] == nil) then ErrorMsg('Err_CMDMusicNoValue') end
    if (args[1] == nil) then ShowRightNote(_('Err_CMDMusicNoValue', Lang), 5000) return end
    if (string.lower(args[1]) == 'true') then Switch = 'on' Value = true end
    if (string.lower(args[1]) == 'false') then Switch = 'off' Value = false end
    local Data = TSC('DokusCore:Core:DBGet:Settings', { 'user', { Steam } })
    TSC('DokusCore:Core:DBSet:Settings', { 'Music', { Steam, Value } })
    ShowTopNote('System Music', 'Is Turned '..Switch)
    if (Value == false) then ShowRightNote(_('MusicNote', Lang), 10000) end
  end

  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
