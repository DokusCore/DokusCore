--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Characters
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Characters = {

  -- These are the male and female model names
  Model = { Male = 'mp_male', Female = 'mp_female' },

  -- This is the song that will be heard on fist time spawning
  -- into the character menu. You do not hear this when coming back again
  -- Song  = { Enabled = true, Volume = 0.10, Song = 'ThemeSong' },
  Song  = { Enabled = true, Volume = 0.10, Song = 'MenuSong1' },

  Camp = { -- These are the player and camera positions
    Camera = vec3(881.128, 1263.624, 236.630),
    PedPos = vec3(881.128, 1263.624, 234.630),
  },

  Spawns = { -- Spawns of the NPCs for character selection
    { Start = vec3(875.9, 1264.4, 234.3), Stop = vec3(883.9, 1267.7, 234.8), Speed = 1.00 },
    { Start = vec3(874.7, 1282.6, 232.3), Stop = vec3(883.2, 1271.9, 235.0), Speed = 1.00 },
    { Start = vec3(895.2, 1290.1, 234.2), Stop = vec3(887.4, 1275.9, 235.1), Speed = 1.75 },
  },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
