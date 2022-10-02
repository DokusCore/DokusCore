--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
local UserIsZoning = false
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusZones:Start:Zoning', function()
  UserIsZoning = true
  ActPrompts()
  TriggerEvent("DokusZones:ShowText")
  while UserIsZoning do Wait(1)
    local pName = CreateVarString(10, 'LITERAL_STRING', 'DokusZoning')
    PromptSetActiveGroupThisFrame(Group, pName)
    local Start = PromptHasHoldModeCompleted(Prompt_Start)
    local Add = PromptHasHoldModeCompleted(Prompt_Add)
    local Undo = PromptHasHoldModeCompleted(Prompt_Undo)
    local Finish = PromptHasHoldModeCompleted(Prompt_Finish)
    local Cancel = PromptHasHoldModeCompleted(Prompt_Cancel)
    if (Start) then TriggerEvent("DokusZones:polystart", nil) Wait(500) end
    if (Add) then TriggerEvent("DokusZones:polyadd") Wait(500) end
    if (Undo) then TriggerEvent("DokusZones:polyundo") Wait(500) end
    if (Finish) then TriggerEvent("DokusZones:Stop:Zoning") return end
    if (Cancel) then TriggerEvent("DokusZones:polycancel") Wait(500) end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent("DokusZones:ShowText", function()
  local Count = 0
  while UserIsZoning do Wait(1) DrawInfo('DokusZones Active', 0.70, 0.90, 1.0) end
  while (Count <= 250) do Wait(1) Count = (Count + 1) DrawInfo('Zoning Complete', 0.70, 0.90, 1.0) end
  NoteObjective('System', "The zone coordinates are saved in the [ DokusZones ] folder!", 'Horn', 5000)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent("DokusZones:Stop:Zoning", function()
  UserIsZoning = false
  TriggerEvent("DokusZones:polyfinish")
  Prompt_Start  = nil
  Prompt_Add    = nil
  Prompt_Undo   = nil
  Prompt_Finish = nil
  Prompt_Cancel = nil
  Group         = GetRandomIntInRange(0, 0xffffff)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------





--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
