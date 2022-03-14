--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Characters.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Characters')
AddEventHandler('DokusCore:Core:DBIns:Characters', function(source, args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_DBInsNoSteam') end
    -- if (args[2][2] == nil) then return ErrorMsg('Err_DBInsNoCharID') end
    -- if (args[2][3] == nil) then return ErrorMsg('Err_DBInsNoGroup') end
    -- if (args[2][4] == nil) then return ErrorMsg('Err_DBInsNoCharName') end
    -- if (args[2][5] == nil) then return ErrorMsg('Err_DBInsNoCharGender') end
    -- if (args[2][6] == nil) then return ErrorMsg('Err_DBInsNoCharNat') end
    -- if (args[2][7] == nil) then return ErrorMsg('Err_DBInsNoCharBDay') end
    -- if (args[2][8] == nil) then return ErrorMsg('Err_DBInsBanksNoMoney') end
    -- if (args[2][9] == nil) then return ErrorMsg('Err_DBInsBanksNoGold') end
    -- if (args[2][10] == nil) then return ErrorMsg('Err_DBInsNoCharXP') end
    -- if (args[2][11] == nil) then return ErrorMsg('Err_DBInsNoCharLevel') end
    -- if (args[2][12] == nil) then return ErrorMsg('Err_DBInsNoCharJobName') end
    -- if (args[2][13] == nil) then return ErrorMsg('Err_DBInsNoCharJobGrade') end
    -- if (args[2][14] == nil) then return ErrorMsg('Err_DBInsNoCharCoords') end
    -- if (args[2][15] == nil) then return ErrorMsg('Err_DBInsNoCharSkin') end
    -- if (args[2][16] == nil) then return ErrorMsg('Err_DBInsNoCharClothing') end
    DBIns(DB.Characters.Insert, {
      Steam = args[2][1], CharID = args[2][2], Group = args[2][3],
      cName = args[2][4], Gender = args[2][5], Nationality = args[2][6],
      BirthDate = args[2][7], Money = args[2][8], Gold = args[2][9], XP = args[2][10],
      Level = args[2][11], JobName = args[2][12], JobGrade = args[2][13], Coords = args[2][14],
      Skin = args[2][15], Clothing = args[2][16]
    }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBSet:Characters')
AddEventHandler('DokusCore:Core:DBSet:Characters', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  -- Update the Characters name
  if (Low(args[1]) == 'charname') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    -- if (args[2][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
    local Steam, CharID, Name = args[2][1], args[2][2], args[2][3]
    DBSet(DB.Characters.SetCharName, { cName = Name, Steam = Steam, CharID = CharID }, function() end)
  end

  if (Low(args[1]) == 'coords') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    -- if (args[2][2] == nil) then return ErrorMsg('Err_NoCharID') end
    -- if (args[2][3] == nil) then return ErrorMsg('Err_NoCoords') end
    DBSet(DB.Characters.SetCoords, { Coords = args[2][3], Steam = args[2][1], CharID = args[2][2] }, function() end)
  end

  if (Low(args[1]) == 'skin') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    -- if (args[2][2] == nil) then return ErrorMsg('Err_NoCharID') end
    -- if (args[2][3] == nil) then return ErrorMsg('Err_NoSkinValue') end
    DBSet(DB.Characters.SetSkin, { Skin = args[2][3], Steam = args[2][1], CharID = args[2][2] }, function() end)
  end

  if (Low(args[1]) == 'payment') then
    -- if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    -- if (args[2][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
    -- if (args[2][3] == nil) then return ErrorMsg('Err_PaymentAmount') end
    DBSet(DB.Characters.SetMoney, { Money = args[2][3], Steam = args[2][1], CharID = args[2][2] }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBDel:Characters')
AddEventHandler('DokusCore:Core:DBDel:Characters', function(args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      print("Deleting Character", args[3][1], args[3][2])
      DBDel(DB.Characters.DelCharacter, { Steam = args[3][1], CharID = args[3][2] }, function() end)
    end

  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
