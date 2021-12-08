--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Low = string.lower
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- This Module sends players a paycheck ever X minutes.
--------------------------------------------------------------------------------
CreateThread(function() Wait(20000)
  while true do Wait(1000)
    local function GetCharData(Steam)
      local Data = TSC('DokusCore:Core:DBGet:Characters', { 'user', 'single', { Steam, UserData.CharID } })
      return Data
    end

    local Int, Enabled, Payout = _PayCheck.Interval.Minutes, _PayCheck.Enabled, nil
    local Steam = TSC('DokusCore:Core:GetUserIDs', { 'user' })[1]
    while (UserData.CharID == 0) do Wait(60000) GetCharData(Steam) end

    local Enabled = true
    while Enabled do Wait((Int * 60) * 1000)
      local Char = GetCharData(Steam)
      local Money, Gold, BankMoney, BankGold = 0, 0, 0, 0

      -- First check the players job against the payout jobs.
      for k, v in pairs(_PayCheck.Jobs) do
        if not (Char.Exist) then Enabled = false break end
        if (Low(v.Name) == Char.Result[1].JobName) then
          if (v.Money[1]) then
            local Type = Low(v.Money[2])
            local Amount = tonumber(v.Money[3])
            if (Type == 'wallet') then Money = Amount end
            if (Type == 'bank')   then BankMoney = Amount end
            if (Type == 'both')   then BankMoney = Amount Money = Amount end
          end

          if (v.Gold[1]) then
            local Type = Low(v.Gold[2])
            local Amount = tonumber(v.Gold[3])
            if (Type == 'wallet') then Gold = Amount end
            if (Type == 'bank')   then BankGold = Amount end
            if (Type == 'both')   then BankGold = Amount Gold = Amount end
          end
        end
      end

      -- Now lets check is the user is listed as an VIP
      for k,v in pairs(_PayCheck.VIPs) do
        if (v.Enabled) then
          if ((v.Static.Enabled) and (v.Multiply.Enabled)) then return end
          if (v.Static.Enabled) then
            if (v.Static.Money[1]) then
              local Type = Low(v.Static.Money[2])
              local Amount = tonumber(v.Static.Money[3])
              if (Type == 'wallet') then Money = (Money + Amount) end
              if (Type == 'bank')   then BankMoney = (BankMoney + Amount) end
              if (Type == 'both')   then BankMoney = (BankMoney + Amount) Money = (Money + Amount) end
            end

            if (v.Static.Gold[1]) then
              local Type = Low(v.Static.Gold[2])
              local Amount = tonumber(v.Static.Gold[3])
              if (Type == 'wallet') then Gold = (Gold + Amount) end
              if (Type == 'bank')   then BankGold = (BankGold + Amount) end
              if (Type == 'both')   then BankGold = (BankGold + Amount) Gold = (Gold + Amount) end
            end
          end



          if (v.Multiply.Enabled) then
            if (v.Multiply.Money[1]) then
              local Type = Low(v.Multiply.Money[2])
              local Amount = tonumber(v.Multiply.Money[3])
              if (Type == 'wallet') then Money = (Money * Amount) end
              if (Type == 'bank')   then BankMoney = (BankMoney * Amount) end
              if (Type == 'both')   then BankMoney = (BankMoney * Amount) Money = (Money * Amount) end
            end

            if (v.Multiply.Gold[1]) then
              local Type = Low(v.Multiply.Gold[2])
              local Amount = tonumber(v.Multiply.Gold[3])
              if (Type == 'wallet') then Gold = (Gold * Amount) end
              if (Type == 'bank')   then BankGold = (BankGold * Amount) end
              if (Type == 'both')   then BankGold = (BankGold * Amount) Gold = (Gold * Amount) end
            end
          end
        end
      end

      -- Now do all bank transactions
      if (Money > 0) then TSC('DokusCore:Core:DBSet:Bank', { 'Admin', { 'Money', '+', { Steam, UserData.CharID, Money } } }) end
      if (Gold > 0) then TSC('DokusCore:Core:DBSet:Bank', { 'Admin', { 'Gold', '+', { Steam, UserData.CharID, Gold } } }) end
      if (BankMoney > 0) then TSC('DokusCore:Core:DBSet:Bank', { 'Admin', { 'BankMoney', '+', { Steam, UserData.CharID, BankMoney } } }) end
      if (BankGold > 0) then TSC('DokusCore:Core:DBSet:Bank', { 'Admin', { 'BankGold', '+', { Steam, UserData.CharID, BankGold } } }) end

      -- Notify the user
      if (_PayCheck.Notify.Enabled) then
        if (_PayCheck.Notify.Location.Top) then ShowTopNote('Paycheck', 'You have received your paycheck') end
        if (_PayCheck.Notify.Location.Right) then ShowRightNote('You have received your paycheck', 5000) end
      end
    end
  end

end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
