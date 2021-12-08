--------------------------------------------------------------------------------
---------------------------------- DokusCore ---------------------------------
--------------------------------------------------------------------------------
-- Handeling the server to client callback system
--------------------------------------------------------------------------------
CreateThread(function()
  -- while not __CoreReady do Wait(500) end
  RegisterNetEvent(__..':server')
  AddEventHandler(__..':server', function(Event, T, ...)
    local source, promise = source, promise.new()
    TriggerEvent(__..':S:'..Event, function(...)
      promise:resolve({...}) end, source, ...)
      local result = Citizen.Await(promise)
      TriggerClientEvent((__..':client:%s:%s'):format(Event, T), source, table.unpack(result))
    end)
  end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local function Webhook(Type, Data)
  local Index = json.encode({content = Data})
  PerformHttpRequest(Type, function(Error, Content, Head) end, 'POST', Index, { ['Content-Type'] = 'application/json' })
end

AddEventHandler('playerDropped', function (reason)
  local S, E = '```ini\n', '```'
  local T  = '[ Webhook ID ]: Logout'
  local T2 = '\n[ Steam Name ]: '..GetPlayerName(source)
  local T3 = '\n[ Reason ]: '..reason
  Webhook(_Webhooks.Discord[2].Logout, S..T..T2..T3..E)
  print(System .. 'Player ' .. GetPlayerName(source) .. ' dropped (Reason: ' .. reason .. ')')
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
  local player = source
  local steamIdentifier
  local identifiers = GetPlayerIdentifiers(player)
  local S, E = '```ini\n', '```'
  local T  = '[ Webhook ID ]: Login (Connecting)'
  local T2 = '\n[ Steam Name ]: '..name
  Webhook(_Webhooks.Discord[3].Login, S..T..T2..E)
  print(System .. 'Player ' .. name .. ' Connecting')
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------














--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
