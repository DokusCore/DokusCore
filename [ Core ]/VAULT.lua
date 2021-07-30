-- Info for grabbing the inventory database
local Data = TSC('DokusCore:S:Core:GetInventory', {User.Steam, User.CharID})

-- Info for inserting a item into the users inventory
local Item = { Type = 'bullet', Item = 'ammo_regulae', Amount = 15
local Item = { Type = 'item', Item = 'water', Amount = 5 }
local Item = { Type = 'weapon', Item = 'pistol', Amount = 1 }
TSC('DokusCore:S:Core:DB:InsertInventory', {User.Steam, User.CharID, Item})


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
