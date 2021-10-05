--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local DBGet  = MySQL.Async.fetchAll
local DBEx   = MySQL.Async.execute
--------------------------------------------------------------------------------
-- This will loop over the database blacklist table. When the users ban duration
-- has finished, the user will be deleted from the blacklist and he or she
-- will be able to join the server again
--------------------------------------------------------------------------------
CreateThread(function()
  -- while not __CoreReady do Wait(500) end
  while _Security.Blacklist.Enabled do Wait(0)
    DBGet(DB.Blacklist.GetAll, {}, function(r)
    if (r[1] ~= nil) then
    for k,v in pairs(r) do
      if (v.Until ~= -1) then
        local Steam, Until = v.Steam, v.Until
        local Unix = os.time(os.date("!*t"))
        local nUnix = (Until - Unix)
        if (nUnix <= 0) then DBEx(DB.Blacklist.DelViaSteam, { Steam = Steam }) end
    end end end end) Wait(_Loops.CheckBlacklist.Seconds * 1000)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Notify the owner when there are pending whitelist requests.
--------------------------------------------------------------------------------
CreateThread(function()
  -- while not __CoreReady do Wait(500) end
  if _Security.Whitelist.Enabled then
    while true do Wait(0)
      local Data = TCC(-1, 'DokusCore:Core:DBGet:Whitelist', { 'All' })
      if (Data.Exist) then
        for k,v in pairs(Data.Result) do
          local Allowed = v.Allowed
          if (Allowed == 'pending') then
            print("^5---------------------------------------------------------------^0")
            print("^5[ ^3ATTENTION ^5]: ^2You've "..#Data.Result.." pending whitelist requests!")
            print("^5---------------------------------------------------------------^0")
          end
        end
      end
      Wait(_Loops.WhitelistNotify.Seconds * 1000)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
