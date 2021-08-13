-- Info for grabbing the inventory database
local Data = TSC('DokusCore:S:Core:GetInventory', {User.Steam, User.CharID})

--==== Sounds Triggers ====--
-- Server
TriggerEvent('DokusCore:S:Core:Sounds:PlayOnUser')
TriggerServerEvent('DokusCore:S:Core:Sounds:PlayOnUser')
TriggerEvent('DokusCore:S:Core:Sounds:PlayOnSource')
TriggerServerEvent('DokusCore:S:Core:Sounds:PlayOnSource')
TriggerEvent('DokusCore:S:Core:Sounds:PlayOnAll')
TriggerServerEvent('DokusCore:S:Core:Sounds:PlayOnAll')
TriggerEvent('DokusCore:S:Core:Sounds:PlayRadiusOfCoords')
TriggerServerEvent('DokusCore:S:Core:Sounds:PlayRadiusOfCoords')

-- Client
TriggerEvent('DokusCore:C:Core:Sounds:PlayOnUser')
TriggerClientEvent('DokusCore:C:Core:Sounds:PlayOnUser')
TriggerEvent('DokusCore:C:Core:Sounds:PlayOnAll')
TriggerClientEvent('DokusCore:C:Core:Sounds:PlayOnAll')
TriggerEvent('DokusCore:C:Core:Sounds:PlayRadiusOfCoords')
TriggerClientEvent('DokusCore:C:Core:Sounds:PlayRadiusOfCoords')


--==== Hud Triggers ====--
TriggerEvent('DokusCore:C:Core:Hud:Initiate')
TriggerEvent('DokusCore:C:Core:Hud:Update', 333, 666) -- Money / BankMoney
