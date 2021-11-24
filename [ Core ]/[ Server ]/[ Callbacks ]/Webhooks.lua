--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Low = string.lower
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local function Webhook(Type, Data)
  local Index = json.encode({content = Data})
  PerformHttpRequest(Type, function(Error, Content, Head) end, 'POST', Index, { ['Content-Type'] = 'application/json' })
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:Webhooks:Discord', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[3][1] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  local Steam, CharID, Type, Amount = args[3][1], args[3][2], args[3][3], args[3][4]
  local Money, BankMoney, Gold, BankGold = args[3][5], args[3][6], args[3][7], args[3][8]
  local sName = TCC(-1, 'DokusCore:Core:DBGet:Users', { 'user', { Steam }}).Result[1].sName
  local cName = TCC(-1, 'DokusCore:Core:DBGet:Characters', { 'user', 'single', { Steam, CharID } }).Result[1].cName

  -- Send the bank transactions to the Discord.
  local S, E = '```ini\n', '```'
  if (Low(args[1]) == "banktrans") then
    if (Low(args[2]) == 'money') then
      local T  = '[ Transaction Type ] '..Type..' '..args[2]..' \n[ SteamID ]: '..Steam..' \n[ Steam Name ]: '..sName
      local T2 = '\n[ Character Name ] '..cName..' \n[ Character ID ]: '..CharID
      local T3 = '\n[ Transaction Amount ]: $'..Amount
      local T4 = '\n[ New Wallet Balance ] $'..Money
      local T5 = '\n[ New Bank Balance ]: $'..BankMoney
      Webhook(_Webhooks.Discord[1].BankTrans, S..T..T2..T3..T4..T5..E)
    end

    if (Low(args[2]) == 'gold') then
      local T  = '[ Transaction Type ] '..Type..' '..args[2]..' \n[ SteamID ]: '..Steam..' \n[ Steam Name ]: '..sName
      local T2 = '\n[ Character Name ] '..cName..' \n[ Character ID ]: '..CharID
      local T3 = '\n[ Transaction Amount ]: $'..Amount
      local T4 = '\n[ New Gold Balance ] $'..Gold
      local T5 = '\n[ New Bank Balance ]: $'..BankGold
      Webhook(_Webhooks.Discord[1].BankTrans, S..T..T2..T3..T4..T5..E)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
