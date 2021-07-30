--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:S:Core:AddMoney')
AddEventHandler('DokusCore:S:Core:AddMoney', function(Steam, iD, Type, Amount)
  local source = source
  local Golg, BankGold, Money, BankMoney, DBSet, DBGet
  if (Type == 'bank') then DBSet = DB.Banks.SetBankMoney end
  if (Type == 'wallet') then DBSet = DB.Banks.SetMoney end
  MySQL.Async.fetchAll(DB.Banks.Get, {Steam=Steam, CharID=iD}, function(res)
    if ((not res) or (res == nil) or (res[1] == nil)) then return end
    if (Type == 'bank')   then BankMoney = (res[1].BankMoney + math.floor(tonumber(Amount))) end
    if (Type == 'wallet') then Money = (res[1].Money + math.floor(tonumber(Amount))) end
    if (Type == 'bank')   then MySQL.Async.execute(DBSet, {BankMoney=BankMoney, Steam=Steam, CharID=iD}) end
    if (Type == 'wallet') then MySQL.Async.execute(DBSet, {Money=Money, Steam=Steam, CharID=iD}) end
    if (Type == 'bank')   then TriggerClientEvent('DokusCore:C:Core:ShowNote', source, 'Admin Command', "you've deposited $"..Amount.." to ID: "..iD.."'s bank.") end
    if (Type == 'bank')   then TriggerClientEvent('DokusCore:C:Core:ShowNote', iD, 'Money Received', "$"..Amount.." has been added to your wallet.") end
    if (Type == 'wallet') then TriggerClientEvent('DokusCore:C:Core:ShowNote', source, 'Admin Command', "you've deposited $"..Amount.." to ID: "..iD.."'s wallet.") end
    if (Type == 'wallet') then TriggerClientEvent('DokusCore:C:Core:ShowNote', iD, 'Money Received', "$"..Amount.." has been added to your wallet.") end
  end)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:S:Core:AddGold')
AddEventHandler('DokusCore:S:Core:AddGold', function(Steam, iD, Type, Amount)
  local source = source
  local Golg, BankGold, Money, BankMoney, DBSet, DBGet
  if (Type == 'bank') then DBSet = DB.Banks.SetBankGold end
  if (Type == 'wallet') then DBSet = DB.Banks.SetGold end
  MySQL.Async.fetchAll(DB.Banks.Get, {Steam=Steam, CharID=iD}, function(res)
    if ((not res) or (res == nil) or (res[1] == nil)) then return end
    if (Type == 'bank')   then BankGold = (res[1].BankGold + math.floor(tonumber(Amount))) end
    if (Type == 'wallet') then Gold = (res[1].Gold + math.floor(tonumber(Amount))) end
    if (Type == 'bank')   then MySQL.Async.execute(DBSet, {BankGold=BankGold, Steam=Steam, CharID=iD}) end
    if (Type == 'wallet') then MySQL.Async.execute(DBSet, {Gold=Gold, Steam=Steam, CharID=iD}) end
    if (Type == 'bank')   then TriggerClientEvent('DokusCore:C:Core:ShowNote', source, 'Admin Command', "you've deposited "..Amount.." Gold to ID: "..iD.."'s bank.") end
    if (Type == 'bank')   then TriggerClientEvent('DokusCore:C:Core:ShowNote', iD, 'Gold Received', Amount.." Gold has been added to your wallet.") end
    if (Type == 'wallet') then TriggerClientEvent('DokusCore:C:Core:ShowNote', source, 'Admin Command', "you've deposited "..Amount.." Gold to ID: "..iD.."'s wallet.") end
    if (Type == 'wallet') then TriggerClientEvent('DokusCore:C:Core:ShowNote', iD, 'Money Received', Amount.." of Gold has been added to your wallet.") end
  end)
end)













































--------------------------------------------------------------------------------
