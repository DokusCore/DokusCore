--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Spawner
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Spawner = {

  StartPosition   = 'Saint Denis', -- The place to start a new character
  StartRandomizer = false,         -- Randomize the start location
  StartCutScene   = true,          -- Direct spawn or cutscene ?

  -- These are the start items the user receives in his/her inventory.
  GiveStartItems = true,
  StartItems = {
    { Item = 'Coffee',   Amount = 5,  Type = 'Consumable' },
    { Item = 'Carrot',   Amount = 10, Type = 'Consumable' },
    { Item = 'Campfire', Amount = 1,  Type = 'Deployable' },
    { Item = 'Whiskey',  Amount = 3,  Type = 'Consumable' },
    { Item = 'Trumpet',  Amount = 1,  Type = 'Instrument' }
  },

  Cutscenes    = {
    {
      ID = 'Saint Denis',
      Coords = {
        Heading = 175.0, -- 365.0 ( for shorter trip )
        Start = vec3(2063.4, -1131.5, 41.9),  --2412.0, -1199.6, 45.6 ( for shorter trip )
        End = vec3(2535.8, -1147.1, 50.0)
      }
    },
  },

  -- This is the positions of the clothing stores in the cites.
  Tailor      = {
    { ID = 'Saint Denis', Coords = vec3(2551.3, -1169.7, 53.6) },
  },

  -- This is the point that the vehicle drives to despawn
  VehDespawn  = {
    { ID = 'Saint Denis', Coords = vec3(2336.8, -1071.9, 44.3) },
  },

  -- This is the song people will hear when within the cutscene
  Song = { Enabled = true, Volume = 0.07, Song = 'RunHome' },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
