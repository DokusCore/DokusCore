--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local DBSet = MySQL.Async.execute
local Low   = string.lower
--------------------------------------------------------------------------------
-- Insert the user into the users table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Settings', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end

  -- Set the settings music value for the user
  if (Low(args[1]) == 'music') then
    local Steam, Value, Error = args[2][1], args[2][2], false
    if (args[2][2] == nil) then return ErrorMsg('Err_DBSetNoMusicValue') end
    DBSet(DB.Settings.SetMusic, { Music = Value, Steam = Steam })
  end

  -- Set the settings language for the user.
  if (Low(args[1]) == 'language') then
    local Steam, Value = args[2][1], args[2][2]
    DBSet(DB.Settings.SetLanguage, { Language = Value, Steam = Steam })
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Set the data for the characters table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Characters', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
  if (args[2][2] == nil) then return ErrorMsg('Err_DBSetCharID') end

  -- Update the Characters name
  if (Low(args[1]) == 'charname') then
    local Steam, CharID, Name = args[2][1], args[2][2], args[2][3]
    DBSet(DB.Characters.SetCharName, { cName = Name, Steam = Steam, CharID = CharID })
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Set the data for the bank table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Bank', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[3][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
  if (args[3][2] == nil) then return ErrorMsg('Err_DBSetCharID') end
  if (args[3][3] == nil) then return ErrorMsg('Err_DBSetMoneyAmount') end
  local Type, Type2 = args[1], args[2]
  local Steam, CharID, Amount = args[3][1], args[3][2], args[3][3]
  local Data = TCC(-1, 'DokusCore:Core:DBGet:Banks', { 'user', { Steam, CharID } })

  print("Type1", Type, Type2)

  -- When a value is to be added
  if ((Low(Type2) == '+') or (Low(Type2) == 'add') or (Low(Type2) == 'plus')) then
    print("Pas")
    print("ul", tonumber(Data.Result[1].BankMoney + Amount))
    if (Low(Type) == 'gold')      then Amount = tonumber(Data.Result[1].Gold + Amount) end
    if (Low(Type) == 'gold')      then DBSet(DB.Banks.SetGold, { Gold = Amount, Steam = Steam, CharID = CharID }) end
    if (Low(Type) == 'bankgold')  then Amount = tonumber(Data.Result[1].BankGold + Amount) end
    if (Low(Type) == 'bankgold')  then DBSet(DB.Banks.SetBankGold, { BankGold = Amount, Steam = Steam, CharID = CharID }) end
    if (Low(Type) == 'money')     then Amount = tonumber(Data.Result[1].Money + Amount) end
    if (Low(Type) == 'money')     then DBSet(DB.Banks.SetMoney, { Money = Amount, Steam = Steam, CharID = CharID }) end
    if (Low(Type) == 'bankmoney') then Amount = tonumber(Data.Result[1].BankMoney + Amount) end
    if (Low(Type) == 'bankmoney') then DBSet(DB.Banks.SetBankMoney, { BankMoney = Amount, Steam = Steam, CharID = CharID }) end
  end

  -- When a value has to be subtracted
  if ((Low(Type2) == '-') or (Low(Type2) == 'subtract') or (Low(Type2) == 'minus')) then
    if (Low(Type) == 'gold')      then Amount = tonumber(Data.Result[1].Gold - Amount) end
    if (Low(Type) == 'gold')      then DBSet(DB.Banks.SetGold, { Gold = Amount, Steam = Steam, CharID = CharID }) end
    if (Low(Type) == 'bankgold')  then Amount = tonumber(Data.Result[1].BankGold - Amount) end
    if (Low(Type) == 'bankgold')  then DBSet(DB.Banks.SetBankGold, { BankGold = Amount, Steam = Steam, CharID = CharID }) end
    if (Low(Type) == 'money')     then Amount = tonumber(Data.Result[1].Money - Amount) end
    if (Low(Type) == 'money')     then DBSet(DB.Banks.SetMoney, { Money = Amount, Steam = Steam, CharID = CharID }) end
    if (Low(Type) == 'bankmoney') then Amount = tonumber(Data.Result[1].BankMoney - Amount) end
    if (Low(Type) == 'bankmoney') then DBSet(DB.Banks.SetBankMoney, { BankMoney = Amount, Steam = Steam, CharID = CharID }) end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Update data on the users table
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBSet:Users', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_WrongDBSetType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  -- Update the Characters name
  if (Low(args[1]) == 'sname') then
    if (args[2][1] == nil) then return ErrorMsg('Err_DBSetNoSteam') end
    if (args[2][2] == nil) then return ErrorMsg('Err_DBInsNoSteamName') end
    local Steam, sName = args[2][1], args[2][2], args[2][3]
    DBSet(DB.Users.SetSName, { sName = sName, Steam = Steam })
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------





























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
