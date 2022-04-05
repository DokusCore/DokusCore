--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--MultiCharacters
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_MultiCharacters = {

  --StartRandom = true, -- Not implemented yet
  GiveStartItems = true,
  IntroSong = { Enabled = true, Volume = 0.10 },

  StartPositions = {
    { ID = 'Valentine', Type = 'Train', Coords = vector3(-167.9, 629.1, 114.0), Heading = 270.1 },
    -- { ID = 'Saint Denise', Type = 'Boat', Coords = vector3(-167.9, 629.1, 114.0), Heading = 270.1 },
  },

  StartItems = {
    { Item = 'Coffee',   Amount = 5,  Type = 'Consumable' },
    { Item = 'Carrot',   Amount = 10, Type = 'Consumable' },
    { Item = 'Campfire', Amount = 1,  Type = 'Deployable' },
    { Item = 'Whiskey',  Amount = 3,  Type = 'Consumable' }
  }
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Right now you simply spawn at the Valentine train station.
-- The randomness will be implemented at a later stage
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- StartRandom: If set to true, the player will start at a random position
--              with the coords listed in StartPositions. Whenever this option
--              is false, the player always starts on the first StartPositions
--              entry. If you want to change this, simply shuffle the order and
--              set the coords you like to start at on top.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- StartPositions: These are the locations a player can start at when creating
--                 a new character. When StartRandom is set to true, a random
--                 start position will be picked from the list. All start
--                 positions are located at a train station.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
