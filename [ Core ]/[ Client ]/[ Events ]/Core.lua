--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Banking:Transaction', function(args)
  local Auto, Tax, tType, mType = args[1], args[2], args[3], args[4]
  local Steam, CharID, Loc, Amount = args[5][1], args[5][2], args[5][3], args[5][4]
  local Char  = TSC('DokusCore:Core:DBGet:Characters', { 'User', 'Single', { Steam, CharID } }).Result[1]
  local Bank  = TSC('DokusCore:Core:DBGet:Banks', { 'User', 'Single', 'Bank', { Steam, CharID, Loc } }).Result[1]
  local aBank = TSC('DokusCore:Core:DBGet:Banks', { 'User', 'All', 'Bank', { Steam, CharID } }).Result
  TriggerServerEvent('DokusCore:Core:DBSet:Banks', { Auto, Tax, { tType, mType, { Steam, CharID, Loc, Amount, Char, Bank, aBank } } })

  -- Update the hud
  -- local Bank = TSC('DokusCore:Core:DBGet:Banks', { 'User', 'Single', 'Bank', { Steam, CharID, Loc } }).Result[1]
  -- local Money, Gold = Bank.Money, Bank.Gold
  -- local array = { action = "showAccount", bank = string.upper(Loc), money = Money, gold = Gold }
  -- local encoded = json.encode(array)
  -- SetNuiFocus(true, true)
  -- SendNuiMessage(encoded)
  -- Wait(500)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
