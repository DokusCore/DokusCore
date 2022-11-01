--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
Low     = string.lower
DBGet   = MySQL.Sync.fetchAll
DBIns   = MySQL.Async.execute
DBSet   = MySQL.Async.execute
DBDel   = MySQL.Async.execute
Insert  = table.insert
Tabi    = table.insert
Remove  = table.remove
Decoded = json.decode
Encoded = json.encode
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function Webhook(Type, Data)
  local Index = json.encode({content = Data})
  PerformHttpRequest(Type, function(Error, Content, Head) end, 'POST', Index, { ['Content-Type'] = 'application/json' })
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function Notify(txt, pos, time)
  TriggerClientEvent("pNotify:SendNotification", source, {
    text = "<height='40' width='40' style='float:left; margin-bottom:10px; margin-left:20px;' />"..txt,
    type = "success", timeout = time, layout = pos, queue = "right"
  })
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
-- function RemoveBoxItem(BoxID, Item, Amount)
--   local Data = TCC(-1, 'DokusCore:Core:DBGet:Storages', { 'DropBox', 'BoxID', { BoxID } })
--   for k,v in pairs(Data.Result) do
--     local Array = {}
--     local Decoded = json.decode(v.Meta)
--     for k,v in pairs(Decoded) do table.insert(Array, { Item = v.Item, Amount = v.Amount }) end
--     for k,v in pairs(Array) do if (v.Item == Item) then table.remove(Array, k) end end
--     local Encoded = json.encode(Array)
--     local Data = TCC(-1, 'DokusCore:Core:DBSet:Storages', { 'DropBox', 'InsertItem', { BoxID, Encoded } })
--   end
-- end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function Round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function TabiContains(tab, val)
  for index, value in ipairs(tab) do
    if value == val then return true end
  end return false
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------



















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
