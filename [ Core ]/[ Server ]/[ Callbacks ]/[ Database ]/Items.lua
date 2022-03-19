--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Items.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Items', function(source, args)
  local Exist, Result = false, nil
  -- if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  -- if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'all') then
    -- if (args[3][3] == nil) then return ErrorMsg('Err_NoItemName') end
    local Steam, CharID = args[2][1], args[2][2]
    local X = DBGet(DB.Items.Get, {}, function() end)
    if (X[1] ~= nil) then Exist = true Result = X end
    return { Exist = Exist, Result = Result }
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
