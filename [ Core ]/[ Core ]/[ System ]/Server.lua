--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  if not _Error_ then
  RegisterNetEvent(__..':server')
  AddEventHandler(__..':server', function(Event, T, ...)
    local source, promise = source, promise.new()
    TriggerEvent(__..':S:'..Event, function(...)
      promise:resolve({...}) end, source, ...)
      local result = Citizen.Await(promise)
      TriggerClientEvent((__..':client:%s:%s'):format(Event, T), source, table.unpack(result))
    end)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:S:Core:Print')
AddEventHandler('DokusCore:S:Core:Print', function(Type, Msg)
  if (Type == 'System') then print(System..Msg) end
  if (Type == 'Error') then print(Error..Msg) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:S:Core:DB:CreateNewUser', function(source, args)
  if not _Error_ then
  local source = source
  local Ped = args[2]
  local Coords = GetEntityCoords(Ped)
  local Bank, User, Char, Setting = false, false, false, false
  local Steam = GetPlayerIdentifier(source, 0)
  local License = GetPlayerIdentifier(source, 1)
  local XBoxLive = GetPlayerIdentifier(source, 2)
  local MLive = GetPlayerIdentifier(source, 3)
  local IP = GetPlayerIdentifier(source, 5)
  local IP2 = GetPlayerEndpoint(source)
  if not IP2 then IP = IP else IP = IP2 end

  local mUsers = {
    Steam = Steam, sName = args[1],
    IP = IP, Language = _Language.Lang, License = License,
    XBoxLive = XBoxLive, MLive = MLive
  }

  local mBanks = {
    Steam = Steam, sName = args[1], CharID = 1,
    Money = _StartWealth.Money, BankMoney = _StartWealth.BankMoney,
    Gold = _StartWealth.Gold, BankGold = _StartWealth.BankGold
  }

  local mChar = {
    Steam = Steam, Groups = _Moderation.Users, cName = nil,
    CharID = 1, Gender = nil, Nationality = nil, BirthDate = nil,
    XP = 0, Level = 0, JobName = _StartJob.Name, JobGrade = 0
  }

  local mSettings = {
    Steam = Steam, Music = true
  }

  -- Load MultiCharacters
  if not _Modules.MultiCharacters then
    local Table = DB.Characters.GetViaSteam
    local Data = GetDBViaSteam(DB.Characters.GetViaSteam, Steam)
    if (Data == nil) then Char = true InsertIntoDB(DB.Characters.InsertTable, mChar) end
    local Banks = GetDBViaSteam(DB.Banks.Get, Steam)
    if (Banks == nil) then Bank = true InsertIntoDB(DB.Banks.InsertTable, mBanks) end
  end

  local Users = GetDBViaSteam(DB.Users.GetViaSteam, Steam)
  local Settings = GetDBViaSteam(DB.Settings.GetViaSteam, Steam)
  if (Users == nil) then User = true InsertIntoDB(DB.Users.InsertTable, mUsers) end
  if (Settings == nil) then User = true InsertIntoDB(DB.Settings.InsertTable, mSettings) end
  if (Users == nil) then TriggerEvent('DokusCore:S:Core:Print', 'System', 'DB Table ^5User^3 created for user ^5'..args[1]..' ^3With IP: ^5'..IP..'^0') end
  if Bank then TriggerEvent('DokusCore:S:Core:Print', 'System', 'DB Table ^5Banks^3 created for user ^5'..args[1]..' ^3With IP: ^5'..IP..'^0') end
  if Char then TriggerEvent('DokusCore:S:Core:Print', 'System', 'DB Table ^5Characters^3 created for user ^5'..args[1]..' ^3With IP: ^5'..IP..'^0') end
  if (Settings == nil) then TriggerEvent('DokusCore:S:Core:Print', 'System', 'DB Table ^5Settings^3 created for user ^5'..args[1]..' ^3With IP: ^5'..IP..'^0') end
end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
