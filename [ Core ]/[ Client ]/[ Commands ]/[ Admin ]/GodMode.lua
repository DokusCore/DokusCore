--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Low = string.lower
local GodMode = false
local IsDead = false
local Coords = nil
local IsRespawning = false
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
      TriggerEvent('DokusCore:SafeGuard:Anti:AdminAbuse', 'GodMode')
      TriggerEvent('DokusCore:Metabolism:Edit:Hunger',  { 100 })
      TriggerEvent('DokusCore:Metabolism:Edit:Thirst',  { 100 })
      TriggerEvent('DokusCore:Metabolism:Edit:Health',  { 100 })
      TriggerEvent('DokusCore:Metabolism:Edit:Stamina', { 100 })
      TriggerEvent('DokusCore:Metabolism:Set:InnerGold:Stamina',  { 3 })
      TriggerEvent('DokusCore:Metabolism:Set:OuterGold:Stamina',  { 3 })
      TriggerEvent('DokusCore:Metabolism:Set:InnerGold:Health',   { 3 })
      TriggerEvent('DokusCore:Metabolism:Set:OuterGold:Health',   { 3 })
      NoteObjective("God Mode", "God Mode is enabled!", "Horn", 5000)

      while (GodMode) do Wait(1000)
        local Dead = IsPedDeadOrDying(PedID())
        Coords = GetCoords(PedID())
        if ((Dead == 1) or (Dead) and (not (IsRespawning))) then IsDead, IsRespawning = true, true end
        if ((Dead == 1) or (Dead)) then SetVisible(PedID(), false) end
        local Sync = TCTCC('DokusCore:Sync:Get:UserData')
        if (not (Sync.UserInGame)) then GodMode = false end
        if (not (IsDead) and (not (IsRespawning))) then
          TriggerEvent('DokusCore:Metabolism:Edit:Hunger',  { 100 })
          TriggerEvent('DokusCore:Metabolism:Edit:Thirst',  { 100 })
          TriggerEvent('DokusCore:Metabolism:Edit:Health',  { 100 })
          TriggerEvent('DokusCore:Metabolism:Edit:Stamina', { 100 })
        else
          while (IsRespawning) do Wait(0)
            local Dead = IsPlayerDead(PedID())
            while (Dead) do Wait(0) print("Dead") end
            IsDead, IsRespawning = true, true
            SetVisible(PedID(), false) Wait(2000)
            SetCoords(PedID(), Coords)
            SetVisible(PedID(), true)
            IsDead, IsRespawning = false, false
            Wait(100)
          end
        end
      end
    else
      TriggerEvent('DokusCore:SafeGuard:Anti:AdminAbuse', 'GodMode')
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

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
