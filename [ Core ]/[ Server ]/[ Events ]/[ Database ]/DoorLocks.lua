--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/DoorLocks.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:DoorLocks')
AddEventHandler('DokusCore:Core:DBSet:DoorLocks', function(args)
  if (Low(args[1]) == 'keyid') then
    if (Low(args[2]) == 'hash') then
      local KeyID, Hash = args[3][1], args[3][2]
      DBSet(DB.DoorLocks.SetKeyIDViaHash, { KeyID = KeyID, Hash = Hash }, function() end)
    end
  elseif ((Low(args[1]) == 'status') or (Low(args[1]) == 'state')) then
    if (Low(args[2]) == 'hash') then
      local State, Hash = args[3][1], args[3][2]
      DBSet(DB.DoorLocks.SetStatusViaHash, { State = State, Hash = Hash }, function() end)
    end
  elseif (Low(args[1]) == 'houseid') then
    if (Low(args[2]) == 'hash') then
      local State, Hash = args[3][1], args[3][2]
      DBSet(DB.DoorLocks.SetHouseIDViaHash, { HouseID = HouseID, Hash = Hash }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
