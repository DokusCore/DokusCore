--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
local ShowUIHud = true
local Low = string.lower
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:Core:Hud:Initiate', function(args)
  local Steam = TSC('DokusCore:Core:GetUserIDs', { 'user' })[1]
  local Char  = TSC('DokusCore:Core:DBGet:Characters', { 'user', 'Single', { Steam, UserData.CharID }})
  if (Char.Exist) then
    local Money, Gold = Char.Result[1].Money, Char.Result[1].Gold
    SendNUIMessage({ Action = 'UpdateHud', Money = Money, BankMoney = Gold, CharID = CharID, ServerID = GetPlayerServerId(GetPlayerPed(-1))})
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:Core:Hud:Update', function(args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'user') then
    local Steam = TSC('DokusCore:Core:GetUserIDs', { 'user' })[1]
    local Char = TSC('DokusCore:Core:DBGet:Characters', { 'User', 'Single', { Steam, UserData.CharID }})
    SendNUIMessage({ Action = 'UpdateHud', Money = Round(Char.Result[1].Money, 3), BankMoney = Round(Char.Result[1].Gold, 3), CharID = UserData.CharID, ServerID = GetPlayerServerId(PlayerId(-1)) })
  end

  if (Low(args[1]) == 'source') then
    if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
    if (args[2][1] == nil) then return ErrorMsg('Err_NoSourceID') end
    if (args[2][2] == nil) then return ErrorMsg('Err_NoCharID') end
    local Steam = TSC('DokusCore:Core:GetUserIDs', { 'Source', { args[2][1] } })[1]
    local Char = TSC('DokusCore:Core:DBGet:Characters', { 'User', 'Single', { Steam, args[2][2] }})
    SendNUIMessage({ Action = 'UpdateHud', Money = Round(Char.Result[1].Money, 3), BankMoney = Round(Char.Result[1].Gold, 3), CharID = args[2][2], ServerID = 0 })
  end

end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:Core:Hud:Toggle', function(Bool)
  if Bool then ShowUIHud = Bool SendNUIMessage({ Action = 'ShowHud' }) end
  if not Bool then ShowUIHud = Bool SendNUIMessage({ Action = 'HideHud' }) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
