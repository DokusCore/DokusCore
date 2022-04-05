--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
AddEventHandler('playerDropped', function(reason)
  print(System .. 'Player ' .. GetPlayerName(source) .. ' dropped (Reason: ' .. reason .. ')')
  if (_Webhooks.Discord[2].Enabled) then
    local S, E = '```ini\n', '```'
    local T  = '[ Webhook ID ]: Logout'
    local T2 = '\n[ Steam Name ]: '..GetPlayerName(source)
    local T3 = '\n[ Reason ]: '..reason
    Webhook(_Webhooks.Discord[2].Hook, S..T..T2..T3..E)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
  print(System .. 'Player ' .. name .. ' Connecting')
  if (_Webhooks.Discord[3].Enabled) then
    local player = source
    local steamIdentifier
    local identifiers = GetPlayerIdentifiers(player)
    local S, E = '```ini\n', '```'
    local T  = '[ Webhook ID ]: Login (Connecting)'
    local T2 = '\n[ Steam Name ]: '..name
    Webhook(_Webhooks.Discord[3].Hook, S..T..T2..E)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
