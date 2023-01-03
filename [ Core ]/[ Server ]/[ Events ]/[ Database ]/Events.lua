--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Events.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Events')
AddEventHandler('DokusCore:Core:DBIns:Events', function(args)
  local Unix = GetUnix()
  if (Low(args[1]) == 'quest') then
    if (Low(args[2]) == 'lumberjack') then
      local SteamID, CharID, Type = args[3][1], args[3][2], args[1]
      local Employer, sTime, eTime = 'Appleseed Timber Co', Unix, (Unix + args[3][3])
      local Meta = args[3][4]
      DBIns(DB.Events.Insert, {
        SteamID = SteamID, CharID = CharID, Type = Type,
        Employer = Employer, StartTime = sTime, EndTime = eTime,
        Meta = Meta
      })
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Events')
AddEventHandler('DokusCore:Core:DBDel:Events', function(args)
  if (Low(args[1]) == 'quest') then
    if (Low(args[2]) == 'lumberjack') then
      if (Low(args[3]) == 'employer') then
        DBDel(DB.Events.DelUSViaTypeEmp, {
          SteamID = args[4][1], CharID = args[4][2],
          Type = 'Quest', Employer = 'Appleseed Timber Co'
        }, function() end)
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
