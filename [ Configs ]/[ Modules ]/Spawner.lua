--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Spawner
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Spawner = {

  StartRandomizer = true,          -- Randomize the start location
  StartCutScene   = true,          -- Direct spawn or cutscene ? ( NOT WORKING !)
  StartPosition   = '',            -- The place to start a new character
                                   -- Leave empty to use all cities.

  -- These are the start items the user receives in his/her inventory.
  GiveStartItems = true,
  StartItems = {
    { Item = 'Coffee',        Amount = 5,  Type = 'Consumable' },
    { Item = 'Carrot',        Amount = 10, Type = 'Consumable' },
    { Item = 'Campfire',      Amount = 1,  Type = 'Deployable' },
    { Item = 'Whiskey',       Amount = 3,  Type = 'Consumable' },
    { Item = 'Water_Clean',   Amount = 3,  Type = 'Consumable' },
    { Item = 'Trumpet',       Amount = 1,  Type = 'Instrument' },
    { Item = 'scratchcard',   Amount = 3,  Type = 'Consumable' }
  },

  Cutscenes    = {
    { ID = 1,  City = 'Saint Denis', Coords = { Heading = 305.7, Start = vec3(2139.2, -971.4, 42.1),   End = vec3(2535.8, -1147.1, 50.0) } },
    { ID = 2,  City = 'Saint Denis', Coords = { Heading = 175.0, Start = vec3(2063.4, -1131.5, 41.9),  End = vec3(2535.8, -1147.1, 50.0) } },
    { ID = 3,  City = 'Saint Denis', Coords = { Heading = 73.8,  Start = vec3(1931.3, -1182.4, 42.2),  End = vec3(2535.8, -1147.1, 50.0) } },  -- This one
    { ID = 4,  City = 'Saint Denis', Coords = { Heading = 173.7, Start = vec3(2068.8, -871.7, 42.2),   End = vec3(2535.8, -1147.1, 50.0) } },
    { ID = 5,  City = 'Valentine',   Coords = { Heading = 261.3, Start = vec3(-844.4, 333.3, 95.6),    End = vec3(-338.0, 741.1, 116.6)  } },    -- This one
    { ID = 6,  City = 'Valentine',   Coords = { Heading = 203.5, Start = vec3(-109.4, 1231.9, 165.7),  End = vec3(-338.0, 741.1, 116.6)  } },
    { ID = 7,  City = 'Valentine',   Coords = { Heading = 228.7, Start = vec3(-161.3, 377.3, 96.5),    End = vec3(-338.0, 741.1, 116.6)  } },
    { ID = 8,  City = 'Blackwater',  Coords = { Heading = 196.4, Start = vec3(-1636.3, -1111.9, 71.8), End = vec3(-746.2, -1291.7, 43.0)  } },
    { ID = 9,  City = 'Blackwater',  Coords = { Heading = 315.8, Start = vec3(-1618.7, -1015.1, 73.3), End = vec3(-746.2, -1291.7, 43.0)  } }, -- This one
    { ID = 10, City = 'Blackwater',  Coords = { Heading = 358.3, Start = vec3(-1198.8, -1925.4, 43.2), End = vec3(-746.2, -1291.7, 43.0)  } },
  },

  -- This is the positions of the clothing stores in the cites.
  Tailor      = {
    { City = 'Saint Denis', Coords = vec3(2551.3, -1169.7, 53.6) },
    { City = 'Valentine',   Coords = vec3(-387.3, 666.5, 114.9)  },
    { City = 'Blackwater',  Coords = vec3(-761.4, -1292.0, 43.8) },
  },

  -- This is the point that the vehicle drives to despawn
  VehDespawn  = {
    { City = 'Saint Denis', Coords = vec3(2336.8, -1071.9, 44.3)  },
    { City = 'Valentine',   Coords = vec3(-844.4, 333.3, 95.6)    },
    { City = 'Blackwater',  Coords = vec3(-1636.3, -1111.9, 71.8) },
  },

  -- This is the song people will hear when within the cutscene
  PlaySong = true,
  Songs = {
    { Volume = 0.25, Song = 'RisingSun' },
    { Volume = 0.15, Song = 'RunHome' },
    { Volume = 0.50, Song = 'Outlaws' },
    { Volume = 0.20, Song = 'TheBomb' },
    { Volume = 0.15, Song = 'CatchYou' },
    { Volume = 0.15, Song = 'DiggingMyGrave' },
    { Volume = 0.10, Song = 'PaleRider' },
    { Volume = 0.20, Song = 'TenFeetTall' },
    { Volume = 0.10, Song = 'TheDevil' },
    { Volume = 0.20, Song = 'TheGambler' },
  }
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
