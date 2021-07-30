--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local ShowInfo = false
RegisterCommand("language", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Language.Users) then IsForUsers = true end
  if (_Commands.Language.Admins) then IsForAdmins = true end
  if (_Commands.Language.SuperAdmin) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.Users) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

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
    if not args[1] then return ErrUsageMsg('Please fill in the language you want to use!') end
    local Lang = LangSelect(args[1])
    if not Lang then return ErrUsageMsg('Language not supported', 'Supported Languages: en | es | ru | pt | fr | de | it | nl | pl | gr | dk | bg') end
    TSC('DokusCore:S:Core:DB:Update', {DB.Users, DB.Users.SetLanguage, 'Language', Lang[1]})
    TriggerEvent('DokusCore:C:Core:ShowNote', 'Language Changed To', Lang[2])
    User.Language = Lang[1]
  end

  if _Language.Multi and IsForUsers  and IsUser  then DoThis() end
  if _Language.Multi and IsForAdmins and IsAdmin then DoThis() end
  if _Language.Multi and IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
