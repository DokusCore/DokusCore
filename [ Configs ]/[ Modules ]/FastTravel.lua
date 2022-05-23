--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--FastTavel
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_FastTravel = {

  Zones = {
    { ID = 'sDenis',      Radius = 1.5, Coords = vector3(2766.7, -1486.0, 45.8) },
    { ID = 'Guarma',      Radius = 1.5, Coords = vector3(1266.3, -6852.4, 43.3) },
    { ID = 'Sisika Jail', Radius = 1.5, Coords = vector3(3278.0, -709.9, 42.3) },
  },

  NPCs = {
    { ID = 'sDenis',      Hash = 'S_M_M_BankClerk_01', Coords = vector3(2766.7, -1486.0, 44.8), Heading = 351.6 },
    { ID = 'Guarma',      Hash = 'S_M_M_BankClerk_01', Coords = vector3(1266.3, -6852.4, 42.3), Heading = 240.6 },
    { ID = 'Sisika Jail', Hash = 'S_M_M_BankClerk_01', Coords = vector3(3278.0, -709.9,  42.3), Heading = 237.5 },
  },

  Locations = {
    {
      ID = 'sDenis',
      Data = {
        { ID = 'Guarma',      Price = 2.5, Coords = vector3(1268.5,  -6853.1,  43.30), Heading = 240.5 },
        { ID = 'Sisika Jail', Price = 3.2, Coords = vector3(3275.2,  -714.8,   43.2),  Heading = 300.0 },
      }
    },
    {
      ID = 'Guarma',
      Data = {
        { ID = 'sDenis',      Price = 2.5, Coords = vector3(2791.3, -1499.8, 42.6), Heading = 42.6 },
      }
    },
    {
      ID = 'Sisika Jail',
      Data = {
        { ID = 'sDenis',      Price = 2.5, Coords = vector3(2791.3, -1499.8, 42.6), Heading = 42.6 },
      }
    },
  }

}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
