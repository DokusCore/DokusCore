--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
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
function RemoveBoxItem(BoxID, Item, Amount)
  local Data = TCC(-1, 'DokusCore:Core:DBGet:Storages', { 'DropBox', 'BoxID', { BoxID } })
  for k,v in pairs(Data.Result) do
    local Array = {}
    local Decoded = json.decode(v.Meta)
    for k,v in pairs(Decoded) do table.insert(Array, { Item = v.Item, Amount = v.Amount }) end
    for k,v in pairs(Array) do if (v.Item == Item) then table.remove(Array, k) end end
    local Encoded = json.encode(Array)
    local Data = TCC(-1, 'DokusCore:Core:DBSet:Storages', { 'DropBox', 'InsertItem', { BoxID, Encoded } })
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------





































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
