--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Low = string.lower
local GodMode = false
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Admin:Commands:GodMode', function()
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Teleport.Users) then IsForUsers = true end
  if (_Commands.Teleport.Admins) then IsForAdmins = true end
  if (_Commands.Teleport.SuperAdmins) then IsForOwners = true end
  local UserData = TCTCC('DokusCore:Sync:Get:UserData')
  local Group, Cmds, CMD = GetUserChar(UserData.SteamID, UserData.CharID).Group, {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.User) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    GodMode = not GodMode
    if (GodMode) then
      SetInvincible(PedID(), true)
      NoteObjective("God Mode", "God Mode is enabled!", "Horn", 5000)
      TriggerEvent('DokusCore:Core:Admin:AntiCheat:ShowGodMode')
      TriggerEvent('DokusCore:Metabolism:Set:InnerGold:Stamina',  { 3 })
      TriggerEvent('DokusCore:Metabolism:Set:OuterGold:Stamina',  { 3 })
      TriggerEvent('DokusCore:Metabolism:Set:InnerGold:Health',   { 3 })
      TriggerEvent('DokusCore:Metabolism:Set:OuterGold:Health',   { 3 })
      while (GodMode) do Wait(1000)
        TriggerEvent('DokusCore:Metabolism:Edit:Hunger',  { 100 })
        TriggerEvent('DokusCore:Metabolism:Edit:Thirst',  { 100 })
        TriggerEvent('DokusCore:Metabolism:Edit:Health',  { 100 })
        TriggerEvent('DokusCore:Metabolism:Edit:Stamina', { 100 })
      end
    else
      SetInvincible(PedID(), false)
      NoteObjective("God Mode", "God Mode is disabled!", "Horn", 5000)
    end
  end

  if IsForUsers and IsUser then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Admin:AntiCheat:ShowGodMode', function()
  while (GodMode) do Wait(1)
    local sCoords = GetCoords(PedID())
    local Dist = GetDistance(sCoords)
    if (Dist <= 100) then
      DrawText3D(sCoords.x, sCoords.y, sCoords.z, 225, 'God Mode Enabled')
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
