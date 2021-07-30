--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Savbe players coords every x seconds.
--------------------------------------------------------------------------------
CreateThread(function()
  while not _Modules.MultiCharacters do Wait(0)
    local source = source
    local Ped = PlayerPedId()
    local Steam = TSC('DokusCore:S:Core:GetUserIDs')[1]
    local Coords = GetEntityCoords(Ped)
    local Event = 'DokusCore:S:Core:DB:UpdateViaSteamAndCharID'
    User.Coords = Coords
    TSC(Event, {DB.Characters.SetCoords, 'Coords', Coords, Steam, User.CharID})
    Wait(_Loops.SaveCoordEvery)
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
