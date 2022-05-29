--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Set's the density for peds, animals, parked and random vehicles.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do Wait(0)
    Citizen.InvokeNative(0xC0258742B034DFAF, _Population.AmbientAnimals)
		Citizen.InvokeNative(0xBA0980B5C0A11924, _Population.AmbientHumans)
		Citizen.InvokeNative(0xAB0D553FE20A6E25, _Population.AmbientPeds)
		Citizen.InvokeNative(0xDB48E99F8E064E56, _Population.ScenarioAnimals)
		Citizen.InvokeNative(0x28CB6391ACEDD9DB, _Population.ScenarioHumans)
    Citizen.InvokeNative(0x7A556143A1C03898, _Population.ScenarioPeds)
    Citizen.InvokeNative(0xFEDFA97638D61D4A, _Population.ParkedVehicles)
    Citizen.InvokeNative(0x1F91D44490E1EA0C, _Population.RandomVehicles)
    Citizen.InvokeNative(0x606374EBFC27B133, _Population.Vehicles)
	end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
