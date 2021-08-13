--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
function Round(n, dec) x = 10^dec return math.floor(n * x) / x end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function Note(txt, pos, time)
  TriggerEvent("pNotify:SendNotification", {
    text = "<height='40' width='40' style='float:left; margin-bottom:10px; margin-left:20px;' />"..txt,
    type = "success", timeout = time, layout = pos, queue = "right"
  })
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SpawnNPC(hash, x, y, z)
  local hash = GetHashKey(hash)
  LoadModel(hash)
  local result = Citizen.InvokeNative(0xD49F9B0955C367DE, hash, x, y, z, 0, 0, 0, 0, Citizen.ResultAsInteger())
  Citizen.InvokeNative(0x1794B4FCC84D812F, result, 1) -- SetEntityVisible
  Citizen.InvokeNative(0x0DF7692B1D9E7BA7, result, 255, false) -- SetEntityAlpha
  Citizen.InvokeNative(0x283978A15512B2FE, result, true) -- Invisible without
  Citizen.InvokeNative(0x4AD96EF928BD4F9A, hash) -- SetModelAsNoLongerNeeded
  return result
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function LoadModel(model)
  while not HasModelLoaded(model) do RequestModel(model) Wait(1) end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function EnablePVP()
  Citizen.InvokeNative(0xF808475FA571D823, true)
  NetworkSetFriendlyFireOption(true)
  SetRelationshipBetweenGroups(5, `PLAYER`, `PLAYER`)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function IsIpAddress(ip)
  if not ip then return false end
  local a, b, c, d = ip:match("^(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)$")
  a = tonumber(a)
  b = tonumber(b)
  c = tonumber(c)
  d = tonumber(d)
  if not a or not b or not c or not d then return false end
  if a < 0 or 255 < a then return false end
  if b < 0 or 255 < b then return false end
  if c < 0 or 255 < c then return false end
  if d < 0 or 255 < d then return false end
  return true
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function DrawInfo(text, x, y, size)
  local xc = x / 1.0;
  local yc = y / 1.0;
  SetScriptGfxDrawOrder(3)
  SetTextScale(size, size)
  SetTextCentre(true)
  SetTextColor(255, 255, 255, 100)
  SetTextFontForCurrentCommand(6)
  DisplayText(CreateVarString(10, 'LITERAL_STRING', text), xc, yc)
  SetScriptGfxDrawOrder(3)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function ErrUsageMsg(msg1, msg2)
  if msg1 then TriggerEvent('DokusCore:C:Core:Print', 'Error', msg1) end
  if msg2 then TriggerEvent('DokusCore:C:Core:Print', 'Error', msg2) end
  if msg1 then Note(msg1, 'TopRight', 5000) Wait(6000) end
  if msg2 then Note(msg2, 'TopRight', 5000) end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function DrawCoords(text, x, y, size)
  local xc = x / 1.0;
  local yc = y / 1.0;
  SetScriptGfxDrawOrder(3)
  SetTextScale(size, size)
  SetTextCentre(true)
  SetTextColor(255, 255, 255, 100)
  SetTextFontForCurrentCommand(6)
  DisplayText(CreateVarString(10, 'LITERAL_STRING', text), xc, yc)
  SetScriptGfxDrawOrder(3)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function GetDBViaSteam(Table, Value)
  MySQL.Async.fetchAll(Table, {Steam = Value}, function(result)
    if (result == nil or result[1] == nil) then return end
  Result = result end) Wait(100) return Result
end

function GetDBViaIP(Table, Value)
  MySQL.Async.fetchAll(Table, {IP = Value}, function(result)
    if (result == nil or result[1] == nil) then return end
  Result = result end) Wait(100) return Result
end

function GetDBViaSteamAndCharID(Table, Value)
  MySQL.Async.fetchAll(Table, {Steam = Value[1], CharID = Value[2]}, function(result)
    if (result == nil or result[1] == nil) then return end
  Result = result[1] end) Wait(100) return Result
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- For inserting users to the database
function InsertIntoDB(Table, Value) MySQL.Async.execute(Table, Value, function() end) end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- For changing database information
function SetIntoDB(Table, Value) MySQL.Async.execute(Table, Value, function() end) end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- For deleting database information
function DelDBViaSteamAndCharID(Table, Value)
  local Value = {Steam=Value[1], CharID=Value[2]}
  MySQL.Async.execute(Table, Value, function() end)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function GetTime()
  local timestamp = os.time()
	local h = tonumber(os.date('%H', timestamp))
	local m = tonumber(os.date('%M', timestamp))
  local s = tonumber(os.date('%S', timestamp))
	return {h = h, m = m, s = s}
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
