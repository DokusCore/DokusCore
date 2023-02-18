--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/Items.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Items', function(source, args)
  local Exist, Result = false, nil

  if (Low(args[1]) == 'all') then
    local X = DBGet(DB.Items.GetAll, {}, function() end)
    if (X[1] ~= nil) then Exist = true Result = X end
    return { Exist = Exist, Result = Result }
  elseif (Low(args[1]) == 'single') then
    local X = DBGet(DB.Items.GetSingle, { Item = Low(args[2][1]) }, function() end)
    if (X[1] ~= nil) then Exist = true Result = X end
    return { Exist = Exist, Result = Result }
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
