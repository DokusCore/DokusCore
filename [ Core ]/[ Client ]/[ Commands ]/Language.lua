--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Commands:SetLanguage')
AddEventHandler('DokusCore:Core:Commands:SetLanguage', function(args)
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Language.Users) then IsForUsers = true end
  if (_Commands.Language.Admins) then IsForAdmins = true end
  if (_Commands.Language.SuperAdmins) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local UserData = TCTCC('DokusCore:Sync:Get:UserData')
  local Group, Cmds, CMD, Lang = GetUserChar(UserData.SteamID, UserData.CharID).Group, {}, _Commands, _Language.Lang
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.User) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  -- Get the users language
  if _Language.Multi then
    local Lang = TCTCC("DokusCore:Sync:Get:UserData").Language
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
    if not args then return Notify(_('System', 'LangNotEnter', Lang).MSG) end
    local lSupport = LangSelect(args)
    if not lSupport then
      Notify(_('System', 'LangNoSupport', Lang).MSG)
      return
    end
    TriggerServerEvent('DokusCore:Core:DBSet:Settings', { 'Language', { UserData.SteamID, LangSelect(args)[1] } })
    TriggerEvent('DokusCore:Sync:Set:UserData', { 'Language', { LangSelect(args)[1] }})
    ShowTopNote(_('System', 'Language', Lang).MSG, _('System', 'LanguageSetTo', Lang).MSG .. LangSelect(args)[2])
  end

  if _Language.Multi and IsForUsers  and IsUser  then DoThis() end
  if _Language.Multi and IsForAdmins and IsAdmin then DoThis() end
  if _Language.Multi and IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
