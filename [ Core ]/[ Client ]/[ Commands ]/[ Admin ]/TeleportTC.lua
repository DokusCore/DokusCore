--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local PromptBack, PromptCancel = nil, nil
local Group = GetRandomIntInRange(0, 0xffffff)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Admin:Commands:TeleportTC', function(s,a,r)
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
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  local function DoThis()
    local Coords = GetEntityCoords(PedID())
    NREntry('Enter Coords X - Y', 'Client', 'DokusCore:Core:Admin:Commands:DoTeleportTC', { LastCoords = Coords })
  end
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
    PromptSetControlAction(PromptBack, _Keys['E'])
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(PromptBack, str)
    PromptSetEnabled(PromptBack, true)
    PromptSetVisible(PromptBack, true)
    PromptSetHoldMode(PromptBack, true)
    PromptSetGroup(PromptBack, Group)
    PromptRegisterEnd(PromptBack)

    local str = 'Cancel'
    PromptCancel = PromptRegisterBegin()
    PromptSetControlAction(PromptCancel, _Keys['X'])
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
RegisterNetEvent('DokusCore:Core:Admin:Commands:DoTeleportTC', function(Data)
  local Chunks = {}
  local PedID = PedID()
  local LCoords = Data.Data.LastCoords
  for s in Data.Result:gmatch("%S+") do Tabi(Chunks, s) end
  local x,y = tonumber(Chunks[1]), tonumber(Chunks[2])
  if (x == nil) then Notify("No 1st parameter entry or is a none number") return end
  if (y == nil) then Notify("No 2st parameter entry or is a none number") return end

  local Sync = TCTCC('DokusCore:Sync:Get:UserData')
  local tData = TSC('DokusCore:Core:System:GetTimeDate')
  local Index = { Sync.SteamID, 'Teleport', tData.Date, tData.Time, 'Admin has teleported to specific coordinates' }

  local height = 1
  UIFadeOut(2000) Wait(2000)
  for height = 1, 1000 do
    SetEntityCoords(PedID, x,y, (height - 50) + 0.0)
    local foundground, groundZ, normal = GetGroundZAndNormalFor_3dCoord(x,y, (height - 50) + 0.0)
    if foundground then
      SetEntityCoords(PedID, x,y, (height - 50) + 0.0)
      break
    end Wait(25)
  end

  UIFadeIn(2000) Wait(2000)
  OpenPrompt()
  local Count = 0
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































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
