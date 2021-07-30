--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
AddEventHandler("playerConnecting", function(name, k, x)
  local player = source
  local Steam = GetPlayerIdentifier(player, 0)
  local License = GetPlayerIdentifier(player, 1)
  local XBoxLive = GetPlayerIdentifier(player, 2)
  local MLive = GetPlayerIdentifier(player, 3)
  local IP = GetPlayerEndpoint(source)
  x.defer() Wait(0)
  x.update(string.format("🚷".._('BlacklistCheck', _Language.Lang).." [...]")) Wait(250)
  x.update(string.format("🚷".._('BlacklistCheck', _Language.Lang).." [......]")) Wait(250)
  x.update(string.format("🚷".._('BlacklistCheck', _Language.Lang).." [.........]")) Wait(250)
  x.update(string.format("🚷".._('BlacklistCheck', _Language.Lang).." [............]")) Wait(250)
  x.update(string.format("🚷".._('BlacklistCheck', _Language.Lang).." [...............]")) Wait(250)
  x.update(string.format("🚷".._('BlacklistCheck', _Language.Lang).." [..................]")) Wait(250)
  local Cancel = false

  -- Check if Steam id exists in the database
	local Data = BlackDBGetUserSteamID(DB.Blacklist.GetViaSteam, Steam)
  if Data then Cancel = true end
  local Data = BlackDBGetUserLicense(DB.Blacklist.GetViaLicense, License)
  if Data then Cancel = true end
  local Data = BlackDBGetUserIP(DB.Blacklist.GetViaIP, IP)
  if Data then Cancel = true end
  local Data = BlackDBGetUserXBoxLive(DB.Blacklist.GetViaXBoxLive, XBoxLive)
  if Data then Cancel = true end
  local Data = BlackDBGetUserMLive(DB.Blacklist.GetViaMLive, MLive)
  if Data then Cancel = true end
  --Stop the user from entering the server if blacklisted
  if Cancel then x.done(_('YourBlacklisted', _Language.Lang).._DiscordInvite) else x.done() end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function BlackDBGetUserSteamID(Table, Value) local Steam
  MySQL.Async.fetchAll(Table, {Steam = Value}, function(result)
  if (result == nil or result[1] == nil) then return end
  Steam = result[1].Steam end) Wait(100) return Steam
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Used for blacklist check
function BlackDBGetUserLicense(Table, Value) local License
  MySQL.Async.fetchAll(Table, {License = Value}, function(result)
  if (result == nil or result[1] == nil) then return end
  License = result[1].License end) Wait(100) return License
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Used for blacklist check
function BlackDBGetUserIP(Table, Value) local IP
  MySQL.Async.fetchAll(Table, {IP = Value}, function(result)
  if (result == nil or result[1] == nil) then return end
  IP = result[1].IP end) Wait(100) return IP
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Used for blacklist check
function BlackDBGetUserXBoxLive(Table, Value) local IP
  MySQL.Async.fetchAll(Table, {XBoxLive = Value}, function(result)
  if (result == nil or result[1] == nil) then return end
  IP = result[1].XBoxLive end) Wait(100) return IP
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Used for blacklist check
function BlackDBGetUserMLive(Table, Value) local IP
  MySQL.Async.fetchAll(Table, {MLive = Value}, function(result)
  if (result == nil or result[1] == nil) then return end
  IP = result[1].MLive end) Wait(100) return IP
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Trigger:Server:BlacklistAdd')
AddEventHandler('DokusCore:Trigger:Server:BlacklistAdd', function(CharID, Reason, Until)
  local _source = source
  local AlreadyBlacklist, Name, Admin = true, GetPlayerName(CharID), GetPlayerName(_source)
  if (Name == nil) then return end
  local Steam, License, IP = nil, nil, nil
  local iDs = TCC(-1, 'DokusCore:C:Core:GetUserIDs')
  local IP = GetPlayerEndpoint(CharID)
  local DBGet = DB.Blacklist.GetViaSteam
  local DBIns = DB.Blacklist.InsertTable
  local Data = TCC(-1, 'DokusCore:C:Core:DB:GetViaSteam', {DBGet, iDs[1]})
  if (Data == nil) then AlreadyBlacklist = false end
  local Date = os.time(os.date("!*t"))
  local NewTill = (Until * 60)
  local NewDate = math.floor((Date + NewTill))
  if (tonumber(Until) == -1) then NewDate = -1 end

  if not AlreadyBlacklist then
    MySQL.Async.execute(DBIns, {
      Steam = iDs[1], IP = IP, Reason = Reason, Admin = Admin,
      Until = NewDate, License = iDs[2], XBoxLive = iDs[4],
      MLive = iDs[5]
    }, function() end) Wait(100)
  end


  local Lang = TCC(-1, 'DokusCore:C:Core:GetCoreUserData').Language
  if not AlreadyBlacklist then
    TriggerClientEvent('DokusCore:C:Core:ShowNote', _source, _('Blacklist_Main', Lang), Name.._('BlacklistAdded', Lang))
  else
    TriggerClientEvent('DokusCore:C:Core:ShowNote', _source, _('Blacklist_Main', Lang), Name.._('AlreadyBlacklist', Lang))
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Removing user from the blacklist
-- This get's triggered on the (/blacklist) chat command
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Trigger:Server:BlacklistRemove')
AddEventHandler('DokusCore:Trigger:Server:BlacklistRemove', function(IP)
  local source, Found = source, false
  local Data = TCC(-1, 'DokusCore:C:Core:DB:GetViaIP', {DB.Blacklist.GetViaIP, IP})
  local Lang = TCC(-1, 'DokusCore:C:Core:GetCoreUserData').Language
  if Data then Found = true end
  if not Found then
    TriggerClientEvent('DokusCore:C:Core:ShowNote', source, _('Blacklist_Main', Lang), _('Error_BlacklistNotOnList', Lang))
  else
    MySQL.Async.execute(DB.Blacklist.DelDBViaIP, {ip=IP}, function(res) end) Wait(100)
    TriggerClientEvent('DokusCore:C:Core:ShowNote', source, _('Blacklist_Main', Lang), _('BlacklistRemoved', Lang) .." ".. IP)
  end
end)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Ban / Blacklist Countdown timer
-- This will auto unban users when the timer runs out
--------------------------------------------------------------------------------
local Fetch, Array = 0, {}
CreateThread(function()
  local DBFetch = function()
    MySQL.Async.fetchAll(DB.Blacklist.GetAll, {}, function(res)
      if (res) then
        for k,v in pairs(res) do
          table.insert(Array, {Steam = v.Steam, Time = (v.Until)})
        end
      end
    end)
  end

  local DBSet = function(NewTime, Steam)
    MySQL.Async.execute(DB.Blacklist.SetTime, {ntil=NewTime,steam=Steam})
  end

  local DBDel = function(Steam)
    TriggerEvent('DokusCore:S:Core:Print', 'System', 'User with ID: ^1'..Steam..' ^3removed from the blacklist')
    local Table = DB.Blacklist.DelDBViaSteam
    MySQL.Async.execute(Table, {steam=Steam}, function() end)
  end


  DBFetch() Wait(100)
  while true do Wait(1000)
    Fetch = (Fetch + 1)
    if (Fetch >= 5) then DBFetch() Fetch = 0 end
    if (Array[1]) then
      for k,v in pairs(Array) do
        if (Array[k].Time ~= -1) then
          local Unix = os.time(os.date("!*t"))
          local nUnix = (Array[k].Time - Unix)
          if (nUnix <= 0) then
            DBDel(Array[k].Steam) Wait(100)
          end
        end
      end
      Wait(1000)
      Array = {}
      DBFetch()
    end
  end
end)
