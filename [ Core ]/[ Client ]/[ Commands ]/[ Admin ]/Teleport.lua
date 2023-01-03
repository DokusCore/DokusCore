--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local PromptBack, PromptCancel = nil, nil
local Group = GetRandomIntInRange(0, 0xffffff)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Admin:Commands:TPM')
AddEventHandler('DokusCore:Core:Admin:Commands:TPM', function()
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Teleport.Users) then IsForUsers = true end
  if (_Commands.Teleport.Admins) then IsForAdmins = true end
  if (_Commands.Teleport.SuperAdmins) then IsForOwners = true end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Check if user is admin or superadmin
local UserData = TCTCC('DokusCore:Sync:Get:UserData')
local Group, Cmds, CMD = GetUserChar(UserData.SteamID, UserData.CharID).Group, {}, _Commands
local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
if (Group ~= Mod.User) then IsUser = false end
if (Group ~= Mod.Admin) then IsAdmin = false end
if (Group ~= Mod.SuperAdmin) then IsOwner = false end
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
local function DoThis() TriggerEvent('DokusCore:Core:Admin:Commands:DoTPM') end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  if IsForUsers and IsUser then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local function OpenPrompt()
  CreateThread(function()
    local str = 'Undo'
    PromptBack = PromptRegisterBegin()
    PromptSetControlAction(PromptBack, _Keys.E)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(PromptBack, str)
    PromptSetEnabled(PromptBack, true)
    PromptSetVisible(PromptBack, true)
    PromptSetHoldMode(PromptBack, true)
    PromptSetGroup(PromptBack, Group)
    PromptRegisterEnd(PromptBack)

    local str = 'Cancel'
    PromptCancel = PromptRegisterBegin()
    PromptSetControlAction(PromptCancel, _Keys.X)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(PromptCancel, str)
    PromptSetEnabled(PromptCancel, true)
    PromptSetVisible(PromptCancel, true)
    PromptSetHoldMode(PromptCancel, true)
    PromptSetGroup(PromptCancel, Group)
    PromptRegisterEnd(PromptCancel)
  end)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local function BackPort(PedID, LCoords)
  UIFadeOut(1500) Wait(1500)
  SetEntityCoords(PedID, LCoords)
  Wait(1500) UIFadeIn(2500)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local function ResetPort()
  PromptBack, PromptCancel = nil, nil
  Group = GetRandomIntInRange(0, 0xffffff)
  WaitForTel = false
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Admin:Commands:DoTPM', function()
  local PedID = PedID()
  local Exists = DoesEntityExist(PedID)
  local LCoords = GetEntityCoords(PedID)
  if Exists then
    local WP = GetWaypointCoords()
    if ((WP.x == 0) and (WP.y == 0) and (WP.z == 0)) then Notify("You've no waypoint set!") return end
    local height = 1
    UIFadeOut(2000) Wait(2000)
    for height = 1, 1000 do
      SetEntityCoords(PedID, WP.x, WP.y, (height - 50) + 0.0)
      local foundground, groundZ, normal = GetGroundZAndNormalFor_3dCoord(WP.x, WP.y, (height - 50) + 0.0)
      if foundground then
        SetEntityCoords(PedID, WP.x, WP.y, (height - 50) + 0.0)
        break
      end Wait(25)
    end
  end

  UIFadeIn(2000) Wait(2000)
  OpenPrompt()
  TriggerEvent('DokusCore:SafeGuard:Anti:AdminAbuse', 'Teleport')
  local WaitForTel = true
  while WaitForTel do Wait(1)
    local BGroup = CreateVarString(10, 'LITERAL_STRING', 'Teleport')
    PromptSetActiveGroupThisFrame(Group, BGroup)
    local P = PromptHasHoldModeCompleted(PromptBack)
    local C = PromptHasHoldModeCompleted(PromptCancel)
    if (P) then BackPort(PedID, LCoords) ResetPort() WaitForTel = false end
    if (C) then ResetPort() WaitForTel = false end
  end
end)






































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
