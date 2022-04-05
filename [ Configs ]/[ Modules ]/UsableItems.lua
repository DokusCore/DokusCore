--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--UsableItems
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_UsableItems = {

  IntObj = {
    {
      ID = 'campfire',   -- Item ID
      ExpTime = 30,      -- Expiration Time in minutes
      Options = {        -- Item Options
        { Option = 'destroy',  Action = 'Destroy Campfire'                          },
        { Option = 'putout',   Action = 'Put Out Campfire'                          },
        { Option = 'charcoal', Action = 'Take Charcoal'                             },
        { Option = 'addwood',  Action = 'Add lumber to extend campfire duration'    },
      }
    }
  }

}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
