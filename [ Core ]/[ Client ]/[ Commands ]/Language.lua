--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterCommand("language", function(source, args, rawCommand)
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Language.Users) then IsForUsers = true end
  if (_Commands.Language.Admins) then IsForAdmins = true end
  if (_Commands.Language.SuperAdmins) then IsForOwners = true end

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

  local function LangSelect(L)
    local L = string.lower(L)
    if ((L == 'en') or (L == 'english')) then return {'en', 'English'} end
    if ((L == 'ru') or (L == 'russian')) then return {'ru', 'Russian'} end
    if ((L == 'pt') or (L == 'portuguese')) then return {'pt', 'Portuguese'} end
    if ((L == 'fr') or (L == 'french')) then return {'fr', 'French'} end
    if ((L == 'de') or (L == 'german')) then return {'de', 'German'} end
    if ((L == 'it') or (L == 'italian')) then return {'it', 'Italian'} end
    if ((L == 'pl') or (L == 'polish')) then return {'pl', 'Polish'} end
    if ((L == 'gr') or (L == 'greek')) then return {'gr', 'Greek'} end
    if ((L == 'dk') or (L == 'danish')) then return {'dk', 'Danish'} end
    if ((L == 'bg') or (L == 'bulgarian')) then return {'bg', 'Bulgarian'} end
    if ((L == 'nl') or (L == 'dutch') or (L == 'nederlands')) then return {'nl', 'Dutch'} end
    if ((L == 'es') or (L == 'espanol') or (L == 'spanish')) then return {'es', 'Spanish'} end
    return false
  end

  local function DoThis()
    print("A")
    if not args[1] then return ShowRightNote(_('Err_NoLangEntered', Lang)) end
    local lSupport = LangSelect(args[1])
    if not lSupport then
      ShowRightNote(_('Err_LangNotSupported1', Lang)) Wait(5000)
      ShowRightNote(_('Err_LangNotSupported2', Lang)) return
    end
    TSC('DokusCore:Core:DBSet:Settings', { 'Language', { Steam, LangSelect(args[1])[1] } })
    ShowTopNote(_('Language', Lang), _('LanguageSetTo', Lang).." "..LangSelect(args[1])[2])
  end

  print("SA", _Language.Multi, IsForUsers, IsUser)
  if _Language.Multi and IsForUsers  and IsUser  then DoThis() end
  if _Language.Multi and IsForAdmins and IsAdmin then DoThis() end
  if _Language.Multi and IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
