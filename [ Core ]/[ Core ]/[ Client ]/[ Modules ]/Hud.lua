--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local ShowUIHud = true
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function Round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:Hud:Initiate')
AddEventHandler('DokusCore:C:Core:Hud:Initiate', function() Wait(5000)
  local Steam, CharID = User.Steam, User.CharID
  local Data = TSC('DokusCore:S:Core:DB:GetViaSteamAndCharID', {DB.Banks.Get, Steam, CharID})
  if not Data or (Data == nil) then return end
  local Money, BankMoney = Data.Money, Data.BankMoney
  SendNUIMessage({ Action = 'UpdateHud', Money = Money, BankMoney = BankMoney, CharID = CharID, ServerID = GetPlayerServerId(GetPlayerPed(-1))})
end)
--------------------------------------------------------------------------------
-------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:Hud:Update')
AddEventHandler('DokusCore:C:Core:Hud:Update', function(args)
  print(args, args[1], args[2], args[3], args[4])
  SendNUIMessage({ Action = 'UpdateHud', Money = Round(args[1], 2), BankMoney = Round(args[2], 2), CharID = args[3], ServerID = args[4] })
end)
--------------------------------------------------------------------------------
-------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:Hud:Toggle')
AddEventHandler('DokusCore:C:Core:Hud:Toggle', function(Bool)
  if Bool then ShowUIHud = Bool SendNUIMessage({ Action = 'ShowHud' }) end
  if not Bool then ShowUIHud = Bool SendNUIMessage({ Action = 'HideHud' }) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  TriggerEvent('DokusCore:C:Core:Hud:Initiate')
  while true do Wait(500)
    local InMenu = IsPauseMenuActive()
    if InMenu then SendNUIMessage({ Action = 'HideHud' }) end
    if not InMenu and ShowUIHud then SendNUIMessage({ Action = 'ShowHud' }) end
  end
end)
--------------------------------------------------------------------------------
-------------------------------------------------------------------------------





























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
