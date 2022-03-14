--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Webhooks.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:Webhooks:Discord')
AddEventHandler('DokusCore:Core:Webhooks:Discord', function(args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  local L  = '\n---------------------------------------------'
  -- Send the bank transactions to the Discord.
  local S, E = '```ini\n', '```'
  if (Low(args[1]) == "banktrans") then
    if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
    if (args[3][1] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
    local Steam, CharID, Type, Amount = args[3][1], args[3][2], args[3][3], args[3][4]
    -- local sName = TCC(-1, 'DokusCore:Core:DBGet:Users', { 'user', { Steam }}).Result[1].sName
    -- local cName = TCC(-1, 'DokusCore:Core:DBGet:Characters', { 'user', 'single', { Steam, CharID } }).Result[1].cName

    if (Low(args[2]) == 'money') then
      local Money, OldMoney, BankMoney, OldBankMoney = args[3][5], args[3][6], args[3][7], args[3][8]
      local T  = '\n[ Webhook ID ]: Bank Transaction'
      local T1 = '\n[ Transaction Type ] '..Type..' '..args[2]
      local T2 = '\n[ SteamID ]: '..Steam
      -- local T3 = '\n[ Steam Name ]: '..sName
      -- local T4 = '\n[ Character Name ] '..cName
      local T5 = '\n[ Character ID ]: '..CharID
      local T6 = '\n[ Transaction Amount ]: $'..Amount
      local T7 = '\n[ Old Wallet Balance ]: $'..OldMoney
      local T8 = '\n[ New Wallet Balance ] $'..Money
      local T9 = '\n[ Old Bank Balance ]: $'..OldBankMoney
      local T10 = '\n[ New Bank Balance ]: $'..BankMoney
      Webhook(_Webhooks.Discord[1].Hook, S..L..T..T1..L..T2..T5..L..T6..L..T7..T8..L..T9..T10..L..E)
    end

    if (Low(args[2]) == 'gold') then
      local Gold, OldGold, BankGold, OldBankGold = args[3][5], args[3][6], args[3][7], args[3][8]
      local T  = '\n[ Webhook ID ]: Bank Transaction'
      local T1 = '\n[ Transaction Type ] '..Type..' '..args[2]
      local T2 = '\n[ SteamID ]: '..Steam
      -- local T3 = '\n[ Steam Name ]: '..sName
      -- local T4 = '\n[ Character Name ] '..cName
      local T5 = '\n[ Character ID ]: '..CharID
      local T6 = '\n[ Transaction Amount ]: $'..Amount
      local T7 = '\n[ Old Wallet Balance ]: $'..OldGold
      local T8 = '\n[ New Wallet Balance ] $'..Gold
      local T9 = '\n[ Old Bank Balance ]: $'..OldBankGold
      local T10 = '\n[ New Bank Balance ]: $'..BankGold
      Webhook(_Webhooks.Discord[1].Hook, S..L..T..T1..L..T2..T5..L..T6..L..T7..T8..L..T9..T10..L..E)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
