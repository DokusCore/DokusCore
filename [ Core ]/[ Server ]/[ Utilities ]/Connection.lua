--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
AddEventHandler('playerDropped', function(reason)
  local S, E = '```ini\n', '```'
  local T  = '[ Webhook ID ]: Logout'
  local T2 = '\n[ Steam Name ]: '..GetPlayerName(source)
  local T3 = '\n[ Reason ]: '..reason
  Webhook(_Webhooks.Discord[2].Hook, S..T..T2..T3..E)
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
  Webhook(_Webhooks.Discord[3].Hook, S..T..T2..E)
  print(System .. 'Player ' .. name .. ' Connecting')
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
