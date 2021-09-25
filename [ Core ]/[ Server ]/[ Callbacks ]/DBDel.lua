--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local DBDel = MySQL.Async.execute
local Low   = string.lower
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Delete the user to the blacklist
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBDel:Blacklist', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_DBGetNoFetchType') end
  if (args[3] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  local CatType, FetchType = args[1], args[2]

  if (Low(CatType) == 'user') then
    if (Low(FetchType) == 'ip') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoProvIP') end
      DBDel(DB.Blacklist.DelViaIP, { IP = args[3][1] })
    end

    if (Low(FetchType) == 'steamid') then
      if (args[3][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
      DBDel(DB.Blacklist.DelViaSteam, { Steam = args[3][1] })
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
