--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Savbe players coords every x seconds.
--------------------------------------------------------------------------------
CreateThread(function() Wait(1000)
  function Pay(Table, Type, NewBal, Steam, CharID, Amount)
    TSC('DokusCore:S:Core:DB:UpdateViaSteamAndCharID', { Table, Type, NewBal, Steam, CharID })
    if not (_PayCheck.Notification) then return end
    TriggerEvent('DokusCore:C:Core:ShowNote', 'Paycheck', '$'..Amount..' received')
  end

  local Int = _PayCheck.Interval
  while _PayCheck.Enabled do Wait((Int * 60) * 1000)
    for k,v in pairs(_PayCheck.Jobs) do
      local Table
      local Where = string.lower(v.Where)
      local Type = string.lower(v.Type)
      local Amount = tonumber(v.Amount)
      if ((Where == 'bank') and (Type == 'money')) then Type = 'BankMoney' Table = DB.Banks.SetBankMoney end
      if ((Where == 'bank') and (Type == 'gold')) then Type = 'BankGold' Table = DB.Banks.SetBankGold end
      if ((Where == 'wallet') and (Type == 'money')) then Type = 'Money' Table = DB.Banks.SetMoney end
      if ((Where == 'wallet') and (Type == 'gold')) then Type = 'Gold' Table = DB.Banks.SetGold end
      if (User.Job == v.Name) then
        local Data = TSC('DokusCore:S:Core:DB:GetViaSteamAndCharID', { DB.Banks.Get, User.Steam, User.CharID })[1]
        if (Data == nil) then return end
        if (Type == 'BankMoney') then OldBal = Data.BankMoney end
        if (Type == 'BankGold') then OldBal = Data.BankGold end
        if (Type == 'Money') then OldBal = Data.Money end
        if (Type == 'Gold') then OldBal = Data.Gold end

        local Steam = TSC('DokusCore:S:Core:GetUserIDs')[1]
        for k,v in pairs(_PayCheck.VIPs) do
          local Enable = v.Enable
          local xSteam, xMulti = v.Steam, v.Multiply
          local Static, xAmount = v.Static[1], v.Static[2]

          if Enable then
            if (Steam == xSteam) then
              if (Static) then
                local NewBal = tonumber((OldBal + Amount) + xAmount)
                Pay(Table, Type, NewBal, User.Steam, User.CharID, (Amount + xAmount))
              else
                local NewBal = tonumber((OldBal + Amount) * xMulti)
                Pay(Table, Type, NewBal, User.Steam, User.CharID, (Amount * xAmount))
              end
            end
          else
            local NewBal = tonumber((OldBal + Amount))
            Pay(Table, Type, NewBal, User.Steam, User.CharID, Amount)
          end
        end
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
