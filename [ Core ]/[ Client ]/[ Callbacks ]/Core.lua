--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
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
