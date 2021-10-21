--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
local ShowUIHud = true
--------------------------------------------------------------------------------
function Round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:Core:Hud:Initiate', function(args)
  local Steam = TSC('DokusCore:Core:GetUserIDs', { 'user' })[1]
  local Banks = TSC('DokusCore:Core:DBGet:Banks', { 'user', { Steam, UserData.CharID }})
  if (Banks.Exist) then
    local Money, BankMoney = Banks.Result[1].Money, Banks.Result[1].BankMoney
    SendNUIMessage({ Action = 'UpdateHud', Money = Money, BankMoney = BankMoney, CharID = CharID, ServerID = GetPlayerServerId(GetPlayerPed(-1))})
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:Core:Hud:Update', function(args)
  local Steam = TSC('DokusCore:Core:GetUserIDs', { 'user' })[1]
  local Banks = TSC('DokusCore:Core:DBGet:Banks', { 'user', { Steam, UserData.CharID }})
  SendNUIMessage({ Action = 'UpdateHud', Money = Round(Banks.Result[1].Money, 3), BankMoney = Round(Banks.Result[1].BankMoney, 3), CharID = UserData.CharID, ServerID = 0 })
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:Core:Hud:Toggle', function(args)
  if Bool then ShowUIHud = Bool SendNUIMessage({ Action = 'ShowHud' }) end
  if not Bool then ShowUIHud = Bool SendNUIMessage({ Action = 'HideHud' }) end
end)







--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
