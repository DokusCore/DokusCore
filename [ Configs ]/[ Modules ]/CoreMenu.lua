--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
_CoreMenu = {

  UserMenu = {
    Name = 'UserMenu',
    Options = {
      { Type = 'Menu', Option = 'InfoMenu',      Title = '[ Q ] Information Menu'  },
      { Type = 'Menu', Option = 'CharacterMenu', Title = '[ W ] Character Options' },
      { Type = 'Menu', Option = 'SettingsMenu',  Title = '[ E ] Settings Menu'     },
      { Type = 'Menu', Option = 'MusicMenu',     Title = '[ A ] Music Menu'        },
    }
  },

  InfoMenu = {
    Name = 'InfoMenu',
    Options = {
      { Type = 'Option', Option = 'Discord', Title = '[ Q ] Discord' },
      { Type = 'Option', Option = 'GuideUp', Title = '[ W ] Updates & Guidelines' },
    }
  },

  AdminMenu = {
    Name = 'AdminMenu',
    Options = {
      { Type = 'Menu',   Option = 'TeleportMenu',    Title = '[ Q ] Teleport Menu'     },
      { Type = 'Option', Option = 'WeatherSyncMenu', Title = '[ W ] Weather Sync Menu' },
      { Type = 'Menu',   Option = 'ModuleSyncMenu',  Title = '[ E ] Modules Sync Menu' },
      { Type = 'Option', Option = 'GodeMode',        Title = '[ A ] Toggle Godmode' },
    }
  },

  TeleportMenu = {
    Name = 'TeleportMenu',
    Options = {
      { Type = 'Option', Option = 'TPM', Title = '[ Q ] Teleport To Marker' },
      { Type = 'Option', Option = 'TTC', Title = '[ W ] Teleport to Coords' },
    }
  },

  ModuleSyncMenu = {
    Name = 'ModuleSyncMenu',
    Options = {
      { Type = 'Option', Option = 'SyncUsableItems',   Title = '[ Q ] Sync UsableItems' },
      { Type = 'Option', Option = 'SyncStoreItems',    Title = '[ W ] Sync Store Items' },
    }
  },

  CharacterMenu = {
    Name = 'CharacterMenu',
    Options = {
      { Type = 'Option', Option = 'Logout',      Title = '[ Q ] Logout'                },
      { Type = 'Option', Option = 'SaveCoords',  Title = '[ W ] Save Location'         },
      { Type = 'Menu',   Option = 'SkinMenu',    Title = '[ E ] Skin Menu'             },
      { Type = 'Menu',   Option = 'DelCharacter',Title = '[ A ] Delete This Character' },
    }
  },

  DelCharacter = {
    Name = 'DelCharacter',
    Options = {
      { Type = 'Option', Option = 'DelYes', Title = '[ Q ] Yes' },
      { Type = 'Option', Option = 'DelNo',  Title = '[ W ] No'  },
    }
  },

  SkinMenu = {
    Name = 'SkinMenu',
    Options = {
      { Type = 'Option', Option = 'Menu', Title = '[ Q ] Open Menu' },
      { Type = 'Option', Option = 'Load', Title = '[ W ] Load Skin' },
    }
  },

  SettingsMenu = {
    Name = 'SettingsMenu',
    Options = {
      { Type = 'Menu',   Option = 'LanguageMenu', Title = '[ Q ] Change Language' },
      { Type = 'Option', Option = 'ToggleMusic',  Title = '[ W ] Toggle Music' },
    }
  },

  LangList1 = {
    Name = 'LangList1',
    Options = {
      { Type = 'Option', Option = 'English', Title = '[ Q ] English' },
      { Type = 'Option', Option = 'German',  Title = '[ W ] German'  },
      { Type = 'Option', Option = 'Italian', Title = '[ E ] Italian' },
      { Type = 'Option', Option = 'Russian', Title = '[ A ] Russian' },
      { Type = 'Option', Option = 'France',  Title = '[ S ] France'  },
      { Type = 'Option', Option = 'Spanish', Title = '[ D ] Spanish' },
    }
  },

  LangList2 = {
    Name = 'LangList2',
    Options = {
      { Type = 'Option', Option = 'Bulgarian',  Title = '[ Q ] Bulgarian'  },
      { Type = 'Option', Option = 'Danish',     Title = '[ W ] Danish'     },
      { Type = 'Option', Option = 'Greek',      Title = '[ E ] Greek'      },
      { Type = 'Option', Option = 'Dutch',      Title = '[ A ] Dutch'      },
      { Type = 'Option', Option = 'Polish',     Title = '[ S ] Polish'     },
      { Type = 'Option', Option = 'Portuguese', Title = '[ D ] Portuguese' },
    }
  },

  LangList3 = {
    Name = 'LangList3',
    Options = {
      { Type = 'Option', Option = 'Finnish',  Title = '[ Q ] Finnish'  },
    }
  },

  MusicMenu = {
    Name = 'MusicMenu',
    Options = {
      { Type = 'Option', Option = 'StopMusic', Title = '[ Q ] Stop Music' },
      { Type = 'menu',   Option = 'AutoPlay',  Title = '[ W ] Auto Play'  },
      { Type = 'Menu',   Option = 'Volume',    Title = '[ E ] Volume'     },
      { Type = 'Menu',   Option = 'Playlist',  Title = '[ A ] Playlist'   },
    }
  },

  Playlist = {
    Name = 'Playlist',
    Options = {
      { Type = 'Menu', Option = 'ModernMusicMenu',  Title = '[ Q ] Modern Music'  },
      { Type = 'Menu', Option = 'WesternMusicMenu', Title = '[ W ] Western Music' },
    }
  },

  ModernMusicMenu = {
    Name = 'ModernMusicMenu',
    Options = {
      { Type = 'Menu', Option = 'BobMarley',        Title = '[ Q ] Bob Marley'  },
      { Type = 'Menu', Option = 'TheScore',         Title = '[ W ] The Score'   },
      { Type = 'Menu', Option = 'ModernOtherMusic', Title = '[ E ] Other Music' },
    }
  },

  WesternMusicMenu = {
    Name = 'WesternMusicMenu',
    Options = {
      { Type = 'Menu', Option = 'WesternRDR1', Title = '[ Q ] Western Themed' },
    }
  },

  Volume = {
    Name = 'Volume',
    Options = {
      { Type = 'Option', Option = '5',  Title = '[ Q ]  5%'  },
      { Type = 'Option', Option = '10', Title = '[ W ]  10%' },
      { Type = 'Option', Option = '15', Title = '[ E ]  15%' },
      { Type = 'Option', Option = '20', Title = '[ A ]  20%' },
      { Type = 'Option', Option = '25', Title = '[ S ]  25%' },
      { Type = 'Option', Option = '30', Title = '[ D ]  30%' },
    }
  },

  Volume2 = {
    Name = 'Volume2',
    Options = {
      { Type = 'Option', Option = '35', Title = '[ Q ]  35%'  },
      { Type = 'Option', Option = '40', Title = '[ W ]  40%' },
      { Type = 'Option', Option = '45', Title = '[ E ]  45%' },
      { Type = 'Option', Option = '50', Title = '[ A ]  50%' },
      { Type = 'Option', Option = '55', Title = '[ S ]  55%' },
      { Type = 'Option', Option = '60', Title = '[ D ]  60%' },
    }
  },

  Volume3 = {
    Name = 'Volume3',
    Options = {
      { Type = 'Option', Option = '65', Title = '[ Q ]  65%'  },
      { Type = 'Option', Option = '70', Title = '[ W ]  70%' },
      { Type = 'Option', Option = '75', Title = '[ E ]  75%' },
      { Type = 'Option', Option = '80', Title = '[ A ]  80%' },
      { Type = 'Option', Option = '85', Title = '[ S ]  85%' },
      { Type = 'Option', Option = '90', Title = '[ D ]  90%' },
    }
  },

  Volume4 = {
    Name = 'Volume4',
    Options = {
      { Type = 'Option', Option = '95',  Title = '[ Q ]  95%'  },
      { Type = 'Option', Option = '100', Title = '[ W ]  100%' },
    }
  },

  -- AutoPlayMenu = {
  --   Name = 'AutoPlayMenu',
  --   Options = {
  --     { Type = 'Menu', Option = 'TheScore',   Title = '[ Q ] The Score'   },
  --     { Type = 'Menu', Option = 'WesternRDR', Title = '[ W ] Western RDR' },
  --     { Type = 'Menu', Option = 'Others',     Title = '[ E ] Others'      },
  --   }
  -- },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

















































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
