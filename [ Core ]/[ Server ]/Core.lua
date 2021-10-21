--------------------------------------------------------------------------------
---------------------------------- DokusCore ---------------------------------
--------------------------------------------------------------------------------
-- Handeling the server to client callback system
--------------------------------------------------------------------------------
CreateThread(function()
  -- while not __CoreReady do Wait(500) end
  RegisterNetEvent(__..':server')
  AddEventHandler(__..':server', function(Event, T, ...)
    local source, promise = source, promise.new()
    TriggerEvent(__..':S:'..Event, function(...)
      promise:resolve({...}) end, source, ...)
      local result = Citizen.Await(promise)
      TriggerClientEvent((__..':client:%s:%s'):format(Event, T), source, table.unpack(result))
    end)
  end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------













--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
