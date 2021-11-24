--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
local ShowUIHud = true
local Low = string.lower
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
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end

  if (Low(args[1]) == 'user') then
    local Steam = TSC('DokusCore:Core:GetUserIDs', { 'user' })[1]
    local Banks = TSC('DokusCore:Core:DBGet:Banks', { 'user', { Steam, UserData.CharID }})
    SendNUIMessage({ Action = 'UpdateHud', Money = Round(Banks.Result[1].Money, 3), BankMoney = Round(Banks.Result[1].BankMoney, 3), CharID = UserData.CharID, ServerID = 0 })
  end

  if (Low(args[1]) == 'source') then
    print("IN DEVELOPMENT")
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
