--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- For the client callbacks
--------------------------------------------------------------------------------
RegisterNetEvent(__..':client')
AddEventHandler(__..':client', function(Event, ...)
	local p = promise.new()
	TriggerEvent((__..':C:%s'):format(Event), function(...) p:resolve({...}) end, ...)
	local result = Citizen.Await(p)
	TriggerServerEvent((__..':server:%s'):format(Event), table.unpack(result))
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
AddEventHandler('onClientMapStart', function()
  Citizen.CreateThread(function()
    local display = true
    local startTime = GetGameTimer()
    local delay = 70000 -- ms
    while display do
      Citizen.Wait(1)
      if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        display = false
      end
    end
  end)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:System:Client:ChatTheme')
AddEventHandler('DokusCore:System:Client:ChatTheme', function(value)
  SendNUIMessage({type = "ChatTheme", display = value})
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:Print')
AddEventHandler('DokusCore:C:Core:Print', function(Type, Msg)
  if (Type == 'System') then print(System..Msg) end
  if (Type == 'Error') then print(Error..Msg) end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
