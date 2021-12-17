--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local DBIns = MySQL.Async.execute
local Low   = string.lower
--------------------------------------------------------------------------------
-- Insert the user into the users table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBIns:Users', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_DBInsNoSteam') end
  if (args[2] == nil) then return ErrorMsg('Err_DBInsNoSteamName') end
  if (args[3] == nil) then return ErrorMsg('Err_DBInsNoIP') end
  if (args[4] == nil) then return ErrorMsg('Err_DBInsNoLicense') end
  if (args[5] == nil) then return ErrorMsg('Err_DBInsNoXBoxID') end
  if (args[6] == nil) then return ErrorMsg('Err_DBInsNoMLiveID') end
  DBIns(DB.Users.Insert, {
    Steam = args[1], sName = args[2], IP = args[3],
    License = args[4], XBoxLive = args[5], MLive = args[6]
  }, function() end)
end)
--------------------------------------------------------------------------------
-----------------------``---------------------------------------------------------
-- Insert the user into the settings table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBIns:Settings', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBInsNoSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_DBInsSettingsMusic') end
    if (args[2][3] == nil) then return ErrorMsg('Err_DBInsSettingsLanguage') end
    DBIns(DB.Settings.insert, { Steam = args[2][1], Music = args[2][2], Language = args[2][3] }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Insert the user into the settings table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBIns:Banks', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBInsNoSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_DBInsBanksNoCharID') end
    if (args[2][3] == nil) then return ErrorMsg('Err_NoCatType') end
    if (args[2][4] == nil) then return ErrorMsg('Err_NoCatType') end
    if (args[2][5] == nil) then return ErrorMsg('Err_DBInsBanksNoMoney') end
    if (args[2][6] == nil) then return ErrorMsg('Err_DBInsBanksNoGold') end
    if (args[2][7] == nil) then return ErrorMsg('Err_BankSyncParameter') end

    DBIns(DB.Banks.Insert, {
      Steam = args[2][1], CharID = args[2][2], Type = args[2][3],
      Bank = args[2][4], Money = args[2][5], Gold = args[2][6],
      Synced = args[2][7]
    }, function() end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Insert the users character into the database
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBIns:Characters', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'user') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBInsNoSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_DBInsNoCharID') end
    if (args[2][3] == nil) then return ErrorMsg('Err_DBInsNoGroup') end
    if (args[2][4] == nil) then return ErrorMsg('Err_DBInsNoCharName') end
    if (args[2][5] == nil) then return ErrorMsg('Err_DBInsNoCharGender') end
    if (args[2][6] == nil) then return ErrorMsg('Err_DBInsNoCharNat') end
    if (args[2][7] == nil) then return ErrorMsg('Err_DBInsNoCharBDay') end
    if (args[2][8] == nil) then return ErrorMsg('Err_DBInsBanksNoMoney') end
    if (args[2][9] == nil) then return ErrorMsg('Err_DBInsBanksNoGold') end
    if (args[2][10] == nil) then return ErrorMsg('Err_DBInsNoCharXP') end
    if (args[2][11] == nil) then return ErrorMsg('Err_DBInsNoCharLevel') end
    if (args[2][12] == nil) then return ErrorMsg('Err_DBInsNoCharJobName') end
    if (args[2][13] == nil) then return ErrorMsg('Err_DBInsNoCharJobGrade') end
    if (args[2][14] == nil) then return ErrorMsg('Err_DBInsNoCharCoords') end
    if (args[2][15] == nil) then return ErrorMsg('Err_DBInsNoCharSkin') end
    if (args[2][16] == nil) then return ErrorMsg('Err_DBInsNoCharClothing') end
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
-- Insert the user to the blacklist
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBIns:Blacklist', function(source, args)
  if (args == nil)       then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil)    then return ErrorMsg('Err_NoAdminName') end
  if (args[2] == nil)    then return ErrorMsg('Err_NoBanReason') end
  if (args[3] == nil)    then return ErrorMsg('Err_NoBanTime') end
  if (args[4] == nil)    then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[4][1] == nil) then return ErrorMsg('Err_DBInsNoSteam') end
  if (args[4][2] == nil) then return ErrorMsg('Err_DBInsNoIP') end
  if (args[4][3] == nil) then return ErrorMsg('Err_DBInsNoLicense') end
  if (args[4][4] == nil) then return ErrorMsg('Err_DBInsNoXBoxID') end
  if (args[4][5] == nil) then return ErrorMsg('Err_DBInsNoMLiveID') end
  local Admin, Reason, Until, Steam = args[1], args[2], args[3], args[4][1]
  local IP, License, XBoxLive, MLive = args[4][2], args[4][3], args[4][4], args[4][5]

  local Date = os.time(os.date("!*t"))
  local NewTill = (Until * 60)
  local NewDate = math.floor((Date + NewTill))
  if (tonumber(Until) == -1) then NewDate = -1 end

  DBIns(DB.Blacklist.Insert, {
    Steam = Steam, Reason = Reason, Admin = Admin,
    Until = NewDate, IP = IP, License = License,
    XBoxLive = XBoxLive, MLive = MLive
  }, function() end)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Create a entry into the storages database table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBIns:Storages', function(source, args)
  if (args == nil)       then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil)    then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil)    then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'dropbox') then
    if (args[2][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_NoCharID') end
    if (args[2][3] == nil) then return ErrorMsg('Err_DBInsNoXBoxID') end
    if (args[2][4] == nil) then return ErrorMsg('Err_DBInsNoItemName') end
    if (args[2][5] == nil) then return ErrorMsg('Err_DBInsNoItemAmount') end
    if (args[2][6] == nil) then return ErrorMsg('Err_DBInsNoBoxCoords') end
    local Steam, CharID, BoxID = args[2][1], args[2][2], args[2][3]
    local Item, Amount, Coords = args[2][4], args[2][5], args[2][6]
    local Meta = { Item = Item, Amount = Amount }
    local mEncode = json.encode({ Meta })
    local cEncode = json.encode(Coords)

    DBIns(DB.Storages.InsertDropBox, {
      Steam = Steam, CharID = CharID, Type = args[1],
      BoxID = BoxID, Coords = cEncode, Meta = mEncode
    }, function() end)

    -- TCC(-1, 'DokusCore:Core:DBSet:Inventory', { 'DropBox', 'RemoveItem', { Steam, CharID, Item, Amount }})
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Insert an inventory item
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBIns:Inventory', function(source, args)
  if (args == nil)       then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil)    then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil)    then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'user') then
    if (args[3] == nil)    then return ErrorMsg('Err_WrongCallbackFormat') end

    if (Low(args[2]) == 'insertitem') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      if (args[3][2] == nil) then return ErrorMsg('Err_NoCharID') end
      if (args[3][3] == nil) then return ErrorMsg('Err_NoCatType') end
      if (args[3][4] == nil) then return ErrorMsg('Err_DBInsNoItemName') end
      if (args[3][5] == nil) then return ErrorMsg('Err_DBInsNoItemAmount') end
      local Steam, CharID, Type, Item, Amount = args[3][1], args[3][2], args[3][3], args[3][4], args[3][5]
      DBIns(DB.Inventory.InsertItem, { Steam=Steam, CharID=CharID, Type=Type, Item=Item, Amount=Amount }, function() end)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------




























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
