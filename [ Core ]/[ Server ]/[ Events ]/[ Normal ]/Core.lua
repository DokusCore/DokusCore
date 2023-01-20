--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Core.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:KickPlayer')
AddEventHandler('DokusCore:Core:KickPlayer', function(args)
  local ID = args[1]
  if (args[1] == nil) then ID = source end
  DropPlayer(ID, args[2])
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  local X = DBGet(DB.System.GetAll, {})
  if (#X == 0) then DBIns(DB.System.Insert, { Properties_Doors = 0 }, function() end) end
  TriggerEvent('DokusCore:Core:System:VerifyDB')
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:System:VerifyDB', function()
  local X = DBGet(DB.System.GetAll, {})
  if (#X > 0) then
    if ((_Modules.Properties) and (X[1].Properties_Doors == 0)) then
      if (_Modules.DoorLocks) then
        for k,v in pairs(_DoorLocks.Doors) do
          local Coords = Encoded(v.Coords)
          DBIns(DB.DoorLocks.Insert, {
            Name = v.Name, Hash = v.Hash,
            Model = v.Model, State = 1,
            Owner = nil, HouseID = nil,
            KeyID = v.KeyID, Coords = Coords
          }, function() end)
          TriggerEvent('DokusCore:Core:DBSet:Data:System', { 'propertydoors', { 1 }})
        end
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------









--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
