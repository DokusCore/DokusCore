--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Normal ]/Zones.lua'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:DBIns:Zones')
AddEventHandler('DokusCore:Core:DBIns:Zones', function(args)
  if (Low(args[1]) == 'zone') then
    DBIns(DB.Zones.Insert, {
      Name = args[2][1], Type = args[2][2], City = args[2][3],
      GD = args[2][4], Poly = args[2][5], Grid = args[2][6],
      MinZ = args[2][7], MaxZ = args[2][8], OnEnter = args[2][9],
      OnExit = args[2][10], Vectors = args[2][11]
    })
  end

  if (Low(args[1]) == 'npc') then
    DBIns(DB.Zones.Insert, {
      Name = args[2][1], Type = args[2][2], City = args[2][3],
      GD = args[2][4], Poly = args[2][5], Grid = args[2][6],
      MinZ = args[2][7], MaxZ = args[2][8], OnEnter = args[2][9],
      OnExit = args[2][10], Vectors = args[2][11]
    })
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------













--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
