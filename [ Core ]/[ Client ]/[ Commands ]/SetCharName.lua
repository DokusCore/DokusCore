--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterCommand("setcharname", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.SetCharName.Users) then IsForUsers = true end
  if (_Commands.SetCharName.Admins) then IsForAdmins = true end
  if (_Commands.SetCharName.SuperAdmins) then IsForOwners = true end

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
    if (args[1] == nil) then return ErrorMsg('Err_CMDCharNameFirstName') end
    if (args[2] == nil) then return ErrorMsg('Err_CMDCharNameLastName') end
    TSC('DokusCore:Core:DBSet:Characters', { 'CharName', { Steam, UserData.CharID, (args[1]..' '..args[2]) } })
    ShowTopNote(_('CharNameSaved', Lang), args[1].." "..args[2])
  end

  if (_Modules.MultiCharacters) then return ErrorMsg('Err_CMDCharNameNoAccess') end
  if IsForUsers  and IsUser  then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
