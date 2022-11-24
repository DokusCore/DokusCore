--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Banks.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Banks', function(source, args)
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[2] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[3] == nil) then return ErrorMsg('Err_NoCatType') end
  -- if (args[4] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  local Exist, Result = false, {}

  -- Get bank information for a single user.
  if (Low(args[1]) == 'user') then
    if (Low(args[2]) == 'single') then
      if (Low(args[3]) == 'bank') then
        -- if (args[4][1] == nil) then return ErrorMsg('Err_DBGetNoSteam') end
        -- if (args[4][2] == nil) then return ErrorMsg('Err_DBGetNoCharID') end
        -- if (args[4][3] == nil) then return ErrorMsg('Err_NoCityName') end
        print("logging", args[4][1], args[4][2], args[4][3])
        local X = DBGet(DB.Banks.GetViaBankName, { Steam = args[4][1], CharID = args[4][2], Bank = args[4][3] })
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end

      -- To be Made
      if (Low(args[3]) == 'loan') then end
      if (Low(args[3]) == 'vault') then end
    end

    if (Low(args[2]) == 'all') then
      if (Low(args[3]) == 'bank') then
        local X = DBGet(DB.Banks.GetAllBanks, { Steam = args[4][1], CharID = args[4][2] })
        if (X[1] ~= nil) then Exist = true Result = X end
        return { Exist = Exist, Result = Result }
      end


      if (Low(args[3]) == 'loan') then end
      if (Low(args[3]) == 'vault') then end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
