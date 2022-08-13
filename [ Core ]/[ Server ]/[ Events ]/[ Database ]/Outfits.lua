--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Outfits.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Outfits')
AddEventHandler('DokusCore:Core:DBIns:Outfits', function(args)
  if (Low(args[1]) == 'user') then
    DBIns(DB.Outfits.Insert, {
      Steam = args[2][1], CharID = args[2][2], Name = args[2][3], Outfit = args[2][4]
    }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Characters')
AddEventHandler('DokusCore:Core:DBDel:Characters', function(args)
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      DBDel(DB.Outfits.DeleteSingleUser, { Steam = args[3][1], CharID = args[3][2] }, function() end)
    end

    if (Low(args[2]) == 'all') then
      DBDel(DB.Outfits.DeleteAllUser, { Steam = args[3][1] }, function() end)
    end
  end

  if (Low(args[1]) == 'all') then
    DBDel(DB.Outfits.DeleteAll, {}, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
