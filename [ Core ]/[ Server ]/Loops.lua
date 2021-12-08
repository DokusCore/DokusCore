--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local DBGet  = MySQL.Async.fetchAll
local DBEx   = MySQL.Async.execute
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- BETA WARNING
--------------------------------------------------------------------------------
-- CreateThread(function() Wait(25000)
--   print("^6----------------------------------------------------------------------------------------")
--   print(Warn..'Important information for all Beta Testers!')
--   print("^6----------------------------------------------------------------------------------------")
--   Wait(5000)
--   print("^3DokusCore is in BETA. Features may not work and core is NOT ready to be used for a live server.")  Wait(500)
--   print("Only use our core for Beta Testing. Also we expect that all beta testers do there best to help")  Wait(500)
--   print("us test all new features. Please report back to us with any information you can share, not only") Wait(500)
--   print("bugs, but also to test all new features. Please report back to us with any information you can") Wait(500)
--   print("share, not only bugs, but also things that run without errors! Try to break the scripts and try") Wait(500)
--   print("to glitch so we can spot possible security flaws. If you have a Beta test license and you are") Wait(500)
--   print("never reporting back to us, we may and will revoke your beta license, and you will lose any") Wait(500)
--   print("perks we might give the testers once we go live. Perks could incluse free premium for some") Wait(500)
--   print("months, special roles in Discord and many more. We appreciate your help and we will show") Wait(500)
--   print("this to you! But if you only request a beta license to get access the server already, ") Wait(500)
--   print("you will lose your license, and possibly get banned from using the core at all!") Wait(500)
--   print("We do our utter best to give you the best quality possible, so we expect some effort from") Wait(500)
--   print("our testers also!") Wait(500)
--   Wait(7000)
--   print("^6----------------------------------------------------------------------------------------")
--   print("^2Thanks to all our Beta testers for all their effort and great help so") Wait(500)
--   print("far! Make sure to report back to us every so often so we know you are") Wait(500)
--   print("activaly working with us to help this framework become the best on the") Wait(500)
--   print("market! From the whole DokusCore Team, Thank you! :D^0") Wait(500)
--   print("^6----------------------------------------------------------------------------------------^0")
-- end)
--------------------------------------------------------------------------------
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
