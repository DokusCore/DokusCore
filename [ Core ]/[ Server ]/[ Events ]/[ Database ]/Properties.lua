--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Properties.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Properties')
AddEventHandler('DokusCore:Core:DBIns:Properties', function(args)
  if (Low(args[1]) == 'house') then
    local SteamID, CharID = args[2][1], args[2][2]
    local HouseID, Keys = args[2][3], args[2][4]
    DBIns(DB.Properties.Insert, {
      SteamID = SteamID, CharID = CharID,
      HouseID = HouseID, Keys = Keys
    })
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Properties')
AddEventHandler('DokusCore:Core:DBSet:Properties', function(args)
  if (Low(args[1]) == 'door') then
    if (Low(args[2]) == 'id') then
      local HouseID, Doors = args[3][1], args[3][2]
      DBIns(DB.Properties.SetDoorsByID, { Doors = Doors, HouseID = HouseID }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------









--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
