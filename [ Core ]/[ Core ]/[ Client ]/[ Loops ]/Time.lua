--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Savbe players coords every x seconds.
--------------------------------------------------------------------------------
CreateThread(function()
	local TimeSync = _Time.TimeSync
	local FixedTime = _Time.FixedTime
  while true do Wait(0)
		local Time = TSC('DokusCore:S:Core:System:Time')
		if TimeSync then SetTime(Time[1], Time[2]) end
		if FixedTime[1] then SetTime(FixedTime[2], FixedTime[3]) end
		Wait(10000)
	end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SetTime(Hour, Minute)
	SetClockTime(Hour, Minute, 0)
	AdvanceClockTimeTo(Hour, Minute, 0)
	NetworkClockTimeOverride(Hour, Minute, 0, 0, true)
	NetworkClockTimeOverride_2(Hour, Minute, 0, 0, true, true)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
