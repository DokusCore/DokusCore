--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Floor = math.floor
local Low = string.lower
--------------------------------------------------------------------------------
-- This removed the slider bar when you hit LALT
-- This is capped to 100 ms per loop and this decreases the CPU time % from
-- 8.5+ @ 0 ms wait back to 3/4 % @ 100 ms wait. Sometimes this can trigger
-- the slider bar to show in game. May this happen to much, decrease the wait time.
--------------------------------------------------------------------------------
CreateThread(function()
  -- while not __CoreReady do Wait(500) end
  if (_Loops.SliderDisabler) then
    while true do Wait(Floor(_Loops.SliderDisabler.Seconds * 1000))
      DisableControlAction(0, 0xCF8A4ECA, true)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Save the players coords locally client side every x seconds. Then every
-- so often save all players coords to the database to prevent long rollbacks
-- whenever a user loses sudden connection to the server.
--------------------------------------------------------------------------------
CreateThread(function()
  -- while not __CoreReady do Wait(500) end
  if (_Loops.SaveCoords.Enabled) then
    while true do Wait(Floor(_Loops.SaveCoords.Seconds * 1000))
      local Coords = GetEntityCoords(PlayerPedId())
      UserData.Coords = Coords
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- This syncs the time of all clients to the time of the server PC in real time.
-- If disabled the time in of the client will be the default in game timer.
-- This time can also be set static, time will then be frozen
--------------------------------------------------------------------------------
CreateThread(function()
  local function SetTime(Hour, Minute)
    SetClockTime(Hour, Minute, 0)
    AdvanceClockTimeTo(Hour, Minute, 0)
    NetworkClockTimeOverride(Hour, Minute, 0, 0, true)
    NetworkClockTimeOverride_2(Hour, Minute, 0, 0, true, true)
  end

	local TimeSync = _Time.TimeSync
	local FixedTime = _Time.FixedTime
  while true do Wait(0)
		local Time = TSC('DokusCore:Core:System:Time')
		if TimeSync then SetTime(Time[1], Time[2]) end
		if FixedTime[1] then SetTime(FixedTime[2], FixedTime[3]) end
		Wait(10000)
	end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Notification for admins that there are whitelist requests.
--------------------------------------------------------------------------------
CreateThread(function() --Wait(3000)
  -- while not __CoreReady do Wait(500) end
  if _Security.Whitelist.Enabled then
    if _Security.Whitelist.NotifyAdmins then
      while true do Wait(0)
        local White = TSC('DokusCore:Core:DBGet:Whitelist', { 'All' })
        if (White.Exist) then
          local Steam  = TSC('DokusCore:Core:GetUserIDs', { 'user' })[1]
          local Data   = TSC('DokusCore:Core:DBGet:Characters', { 'user', 'single', { Steam, UserData.CharID } })
          if (Data.Exist) then
            for k,v in pairs(White.Result) do
              if (Low(v.Allowed) == 'pending') then
                for k,v in pairs(Data.Result) do
                  if (Low(v.Group) == _Moderation.Admin) or (Low(v.Group) == _Moderation.SuperAdmin) then
                    ShowRightNote(_('WLRequestNote', _Language.Lang).." "..#White.Result)
                  end
                end
                Wait(_Loops.WhitelistNotify.Seconds * 1000)
              end
            end
          end
        end
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Check whenever the user is in the settings and close down the hud.
-- NOTE: Has to be remade as it enables the hud every 500 ms even if
-- we want to have it off
--------------------------------------------------------------------------------
-- CreateThread(function()
--   -- while not __CoreReady do Wait(500) end
--   local ShowHud = true
--   while true do Wait(500)
--     local InMenu = IsPauseMenuActive()
--     if InMenu then SendNUIMessage({ Action = 'HideHud' }) end
--     if not InMenu and ShowHud then SendNUIMessage({ Action = 'ShowHud' }) end
--   end
-- end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
