--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local Veh, NPC, Car = nil, nil, nil
local InRange, ShowInfo = false, false
local OnRouteToPlayer = false
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterCommand('deltaxi', function()
  DeleteEntity(NPC)
  DeleteEntity(Car)
  Veh, NPC, Car = nil, nil, nil
  InRange = false
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterCommand("taxi", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Taxi.Users) then IsForUsers = true end
  if (_Commands.Taxi.Admins) then IsForAdmins = true end
  if (_Commands.Taxi.SuperAdmin) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.Users) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    local Ped = PlayerPedId()
    if (args[1] == nil) then return print("ERROR") end
    if (args[1] == string.lower('valentine')) then ToValentine(Ped) end
  end

  DoThis()
  -- if IsForUsers and IsUser then DoThis() end
  -- if IsForAdmins and IsAdmin then DoThis() end
  -- if IsForOwners and IsOwner then DoThis() end
end, false)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local Spawns = {
  { Coords = { -131.6, 448.5, 112.3 }, Heading = 21.0 },
  -- { Coords = { -326.7, 842.7, 117.3 }, Heading = 196.9 },
  -- { Coords = { 1491.9, 435.3, 89.9 }, Heading = 89.9 },
  -- { Coords = { 2938.0, 578.1, 44.4 }, Heading = 349.1 },
  -- { Coords = { 2869.1, 1364.9, 62.5 }, Heading = 166.4 },
  -- { Coords = { 1451.3, -1258.8, 75.5 }, Heading = 302.6 },
  -- { Coords = { -1747.8, -394.8, 156.3 }, Heading = 176.8 },
  -- { Coords = { -750.2, -1180.3, 44.1 }, Heading = 111.1 },
}

local Targets = {
  { ID = 'Valentine', Coords = { -196.8, 639.9, 113.1 }, Heading = 330.6}
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function ToValentine(Ped)
  local rPos = Spawns[math.random(#Spawns)]
  CreateCart(rPos.Coords, rPos.Heading)
  CreateNPC(rPos.Coords, rPos.Heading)
  ShowInfo = true OnRouteToPlayer = true
  TriggerEvent('DokusCore:C:Core:Taxi:ShowDistance', Ped)
  DriveToPlayer(Ped, rPos.Coords)
  WaitForUserToMount(Ped)
  DriveToDestination(Ped, 'Valentine')
  WaitForUserToGetOut(Ped)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:Taxi:ShowDistance')
AddEventHandler('DokusCore:C:Core:Taxi:ShowDistance', function(Ped)
  while ShowInfo do Wait(0)
    if OnRouteToPlayer then
      local pCoords = GetEntityCoords(Ped)
      local Dist = math.floor(Vdist(GetEntityCoords(Car), pCoords))
      DrawInfo('Stagecoach is ~e~'..Dist..'~q~ Meters away', 0.5, 0.95, 0.5)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function CreateCart(Coords, Heading)
  Veh = GetHashKey('STAGECOACH001X')
  RequestModel(Veh)
  while not HasModelLoaded(Veh) do Wait(1000) end
  local x,y,z,h = Coords[1], Coords[2], Coords[3], Heading
  if HasModelLoaded(Veh) then Car = CreateVehicle(Veh, x,y,z,h, false, true, false, true) end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function LoadModel(pHash)
  if not HasModelLoaded(pHash) then RequestModel(pHash)
    while not HasModelLoaded(pHash) do Wait(10) end
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function CreateNPC(Coords, Heading)
  local pHash = GetHashKey('CS_BivCoachDriver')
  if not IsModelValid(pHash) then return end LoadModel(pHash)
  local x,y,z,h = Coords[1], Coords[2], Coords[3], Heading
  NPC = CreatePed(pHash, x,y,z,h, false, 0) Wait(1000)
  Citizen.InvokeNative(0x283978A15512B2FE, NPC, true) -- SetRandomOutfitVariation
  Citizen.InvokeNative(0x58A850EAEE20FAA3, NPC) -- PlaceObjectOnGroundProperly
  SetEntityAsMissionEntity(NPC) Wait(500)
  Citizen.InvokeNative(0xF75B0D629E1C063D, NPC, Car, -1) -- SetPedIntoVehicle
  Citizen.InvokeNative(0x028F76B6E78246EB, NPC, Car, true) -- SetPedOntoMount
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function DriveToPlayer(Ped, Coords)
  local Coords = GetEntityCoords(Ped)
  TriggerEvent('DokusCore:C:Core:ShowNote', 'Stagecoach', 'The stagecoach is on his way to you!')
  TaskVehicleDriveToCoord(NPC, Car, Coords, 10.0, 1.0, Veh, 67633207, 5.0, false)
  Note('Be aware that it can take some time before stagecoach arrives! Give it time!', 'TopRight', 10000) Wait(11000)
  while not InRange do Wait(0)
    local Dist = Vdist(GetEntityCoords(Car), Coords)
    if (Dist <= 100) then
      Stage2 = true
      TaskVehicleDriveToCoord(NPC, Car, Coords, 7.0, 1.0, Veh, 67633207, 5.0, false)
      while Stage2 do Wait(0)
        local Dist = Vdist(GetEntityCoords(Car), Coords)
        if (Dist <= 50) then
          Stage2 = false
          Stage3 = true
          TaskVehicleDriveToCoord(NPC, Car, Coords, 5.0, 1.0, Veh, 67633207, 5.0, false)
          while Stage3 do Wait(0)
            local Dist = Vdist(GetEntityCoords(Car), Coords)
            if (Dist <= 10) then
              Stage3 = false
              SetPedAsGroupMember(NPC, GetPedGroupIndex(PlayerPedId()))
              ClearPedTasksImmediately(NPC) Wait(500)
              FreezeEntityPosition(NPC, true) Wait(500)
              FreezeEntityPosition(Car, true) Wait(500)
              FreezeEntityPosition(Car, false)
              InRange = true
              OnRouteToPlayer = false
            end
          end
        end
      end
    end
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function WaitForUserToMount(Ped)
  WaitToMount = true
  while WaitToMount do Wait(200)
    local InVeh = IsPedInVehicle(Ped, Car, true)
    if InVeh then
      WaitToMount = false
      local cCoords = GetEntityCoords(Car)
      local cHead   = GetEntityHeading(Car)
      Wait(2000)
      DeleteEntity(NPC) NPC = nil
      CreateNPC(cCoords, cHead) Wait(500)
      FreezeEntityPosition(NPC, false)
      SetPedAsGroupMember(NPC, GetPedGroupIndex(PlayerPedId()))
    end
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function DriveToDestination(Ped, Loc) Wait(1)
  for k,v in pairs(Targets) do
    local Coords = v.Coords
    local x,y,z = Coords[1], Coords[2], Coords[3]
    TaskVehicleDriveToCoord(NPC, Car, x,y,z, 10.0, 1.0, Veh, 67633207, 5.0, false)
    SetPedAsGroupMember(NPC, GetPedGroupIndex(PlayerPedId()))
    IsDriving = true
    while IsDriving do Wait(0)
      local Dist = Vdist(GetEntityCoords(Car), x,y,z)
      if (Dist <= 30) then
        Wait(5000)
        FreezeEntityPosition(NPC, true)
        FreezeEntityPosition(Car, true)
        IsDriving = false
      end
    end
  end
end

function WaitForUserToGetOut(Ped)
  WaitToGetOut = true
  while WaitToGetOut do Wait(200)
    local InVeh = IsPedInVehicle(Ped, Car, true)
    if not InVeh then
      WaitToGetOut = false
      local rEnd = Spawns[math.random(#Spawns)]
      local x,y,z = rEnd[1], rEnd[2], rEnd[3]
      Wait(5000)
      FreezeEntityPosition(NPC, false)
      FreezeEntityPosition(Car, false)
      TaskVehicleDriveToCoord(NPC, Car, x,y,z, 10.0, 1.0, Veh, 67633207, 5.0, false)
      Wait(60000)
      DeleteEntity(Car)
      DeleteEntity(NPC)
      Veh, NPC, Car = nil, nil, nil
      InRange = false
    end
  end
end

























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
