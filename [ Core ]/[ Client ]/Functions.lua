--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
function Notify(txt, pos, time)
  TriggerEvent("pNotify:SendNotification", {
    text = "<height='40' width='40' style='float:left; margin-bottom:10px; margin-left:20px;' />"..txt,
    type = "success", timeout = time, layout = pos, queue = "right"
  })
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function ShowTopNote(msg, loc) TriggerEvent('DokusCore:Core:ShowTopNote', msg, loc) end
function ShowRightNote(msg, time) Notify(msg, 'TopRight', time) end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function GetUserGroup()
  local Table = DB.Characters.Get
  local Data = TSC('DokusCore:Core:GetUserIDs', { 'user' })
  local Data = TSC('DokusCore:Core:DBGet:Characters', { 'user', 'single', { Data[1], UserData.CharID } })
  if (Data.Exist) then
    local Group = Data.Result[1].Group
    return Group
  end
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
