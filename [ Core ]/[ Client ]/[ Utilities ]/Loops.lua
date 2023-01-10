--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  while true do Wait(150)
    local size = GetNumberOfEvents(0)
    DisableControlAction(0, 0xCF8A4ECA, true)
    DisableControlAction(0, INPUT_QUICK_SHORTCUT_ABILITIES_MENU, true)
    if (size > 0) then
      for i = 0, size - 1 do
        local EAT = GetEventAtIndex(0, i)
        local H1 = GetHashKey("EVENT_CHALLENGE_GOAL_COMPLETE")
        local H2 = GetHashKey("EVENT_CHALLENGE_REWARD")
        local H3 = GetHashKey("EVENT_DAILY_CHALLENGE_STREAK_COMPLETED")
        if ((EAT == H1) or (EAT == H2) or (EAT == H3)) then Citizen.InvokeNative(0x6035E8FBCA32AC5E) end
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
