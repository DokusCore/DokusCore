--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Core ]/Core.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent(__..':server')
AddEventHandler(__..':server', function(Event, T, ...)
local source, promise = source, promise.new()
TriggerEvent(__..':S:'..Event, function(...)
  promise:resolve({...}) end, source, ...)
  local result = Citizen.Await(promise)
  TriggerClientEvent((__..':client:%s:%s'):format(Event, T), source, table.unpack(result))
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:System:GetUnix', function(source, args) return GetUnix() end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:GetUserIDs', function(source, args)
  if (args == nil) then return SysErr('SysErr_WrongFormat', File, 17) end
  if (args[1] == nil) then return SysErr('SysErr_CatTypeMissing', File, 18) end
  local G = GetPlayerIdentifier

  if (Low(args[1]) == 'user') then
    local S, L, I = G(source, 0), G(source, 1), GetPlayerEndpoint(source)
    local X, M = G(source, 2), G(source, 3)
    return {S, L, I, X, M}
  end

  if (Low(args[1]) == 'source') then
    if (args[2] == nil) then return SysErr('SysErr_WrongFormat', File, 28) end
    if (args[2][1] == nil) then return SysErr('SysErr_ServerIDMissing', File, 29) end
    local S, L, I = G(args[2][1], 0), G(args[2][1], 1), GetPlayerEndpoint(args[2][1])
    local X, M = G(args[2][1], 2), G(args[2][1], 3)
    return {S, L, I, X, M}
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:System:Time', function(source, args)
  local Hour, Minute = GetTime().h, GetTime().m
  return { Hour, Minute }
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:System:GetTimeDate', function(source, args)
  local Time, D = os.date('%X'), os.date("*t")
  local Date = (D.year.."-"..D.month.."-"..D.day)
  return { Date = Date, Time = Time }
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------









--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
