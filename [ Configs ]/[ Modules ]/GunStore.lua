--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--GunStore
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_GunStore = {

  BlipName = 'Gun Store',
  CatalogHash = 'mp001_s_mp_catalogue01x',

  Dialogs = {
    { ID = 'Valentine', Welcome = true, Goodbye = true }, -- Currently not fully implemented!
  },

  Blips = {
    { ID = 'Valentine', Coords = vec3(-281.4, 778.9, 118.5) },
    { ID = 'Saint Denis', Coords = vec3(2717.2, -1286.9, 48.6) },
    { ID = 'Tumbleweed', Coords = vec3(-5506.6, -2963.9, -1.7) },
  },

  NPCs = {
    { ID = 'Valentine', Coords = vec3(-281.4, 778.9, 119.5), Heading = 7.2, Hash = 'amsp_robsdgunsmith_males_01' },
    { ID = 'Saint Denis', Coords = vec3(2717.2, -1286.9, 48.6), Heading = 7.2, Hash = 'amsp_robsdgunsmith_males_01' },
    { ID = 'Tumbleweed', Coords = vec3(-5506.6, -2963.9, -1.7), Heading = 90.1, Hash = 'amsp_robsdgunsmith_males_01' },
  },

  Catalogs = {
    { ID = 'Valentine', Coords = vec3(-281.25, 780.03, 119.553), Heading = 5.86 },
    { ID = 'Saint Denis', Coords = vec3(2716.972, -1286.010, 49.686), Heading = 40.09 },
    { ID = 'Tumbleweed', Coords = vec3(-5507.428, -2964.109, -0.578), Heading = 93.4 }
  },

  Weapons = {
    ['WEAPON_REPEATER_CARBINE']         = { Price = 15.75, Type = 'Primary',   Name = 'Carbine Repeater'       },
    ['WEAPON_REPEATER_WINCHESTER']      = { Price = 10.50, Type = 'Primary',   Name = 'Winchester Model 1866'  },
    ['WEAPON_REPEATER_EVANS']           = { Price = 09.25, Type = 'Primary',   Name = 'Evans Repeating Rifle'  },
    ['WEAPON_REPEATER_HENRY']           = { Price = 17.25, Type = 'Primary',   Name = 'Henry Repeating Rifle'  },
    ['WEAPON_RIFLE_VARMINT']            = { Price = 07.75, Type = 'Primary',   Name = 'Varmint Rifle'          },
    ['WEAPON_RIFLE_SPRINGFIELD']        = { Price = 19.30, Type = 'Primary',   Name = 'Springfield Rifle'      },
    ['WEAPON_RIFLE_BOLTACTION']         = { Price = 20.00, Type = 'Primary',   Name = 'Bolt-Action Rifle'      },
    ['WEAPON_SNIPERRIFLE_ROLLINGBLOCK'] = { Price = 22.25, Type = 'Primary',   Name = 'Rolling-Block Rifle'    },
    ['WEAPON_SNIPERRIFLE_CARCANO']      = { Price = 25.75, Type = 'Primary',   Name = 'Carcano Rifle'          },
    ['WEAPON_SHOTGUN_SAWEDOFF']         = { Price = 15.00, Type = 'Primary',   Name = 'Sawed-Off Shotgun'      },
    ['WEAPON_SHOTGUN_DOUBLEBARREL']     = { Price = 17.00, Type = 'Primary',   Name = 'Double-Barrel Shotgun'  },
    ['WEAPON_SHOTGUN_PUMP']             = { Price = 21.25, Type = 'Primary',   Name = 'Pump-Action Shotgun'    },
    ['WEAPON_SHOTGUN_REPEATING']        = { Price = 21.75, Type = 'Primary',   Name = 'Repeating Shotgun'      },
    ['WEAPON_SHOTGUN_SEMIAUTO']         = { Price = 20.30, Type = 'Primary',   Name = 'Semi-Automatic Shotgun' },
    ['WEAPON_BOW']                      = { Price = 03.15, Type = 'Primary',   Name = 'Hunting Bow'            },
    ['WEAPON_REVOLVER_DOUBLEACTION']    = { Price = 05.35, Type = 'Secondary', Name = 'Double-Action Revolver' },
    ['WEAPON_REVOLVER_CATTLEMAN']       = { Price = 06.75, Type = 'Secondary', Name = 'Cattleman Revolver'     },
    ['WEAPON_REVOLVER_SCHOFIELD']       = { Price = 07.70, Type = 'Secondary', Name = 'Schofield Revolver'     },
    ['WEAPON_REVOLVER_LEMAT']           = { Price = 10.17, Type = 'Secondary', Name = 'LeMat Revolver'         },
    ['WEAPON_PISTOL_VOLCANIC']          = { Price = 08.75, Type = 'Secondary', Name = 'Volcanic Pistol'        },
    ['WEAPON_PISTOL_SEMIAUTO']          = { Price = 06.75, Type = 'Secondary', Name = 'Semi-Automatic Pistol'  },
    ['WEAPON_PISTOL_MAUSER']            = { Price = 07.55, Type = 'Secondary', Name = 'Mauser Pistol'          },
    ['WEAPON_MELEE_BROKEN_SWORD']       = { Price = 02.35, Type = 'Melee',     Name = 'Antique Sword'          },
    ['WEAPON_MELEE_LANTERN']            = { Price = 01.20, Type = 'Melee',     Name = 'Lantern'                },
    ['WEAPON_MELEE_HATCHET']            = { Price = 01.25, Type = 'Melee',     Name = 'Hatchet'                },
    ['WEAPON_MELEE_KNIFE']              = { Price = 01.15, Type = 'Melee',     Name = 'Hunting Knife'          },
    ['WEAPON_MELEE_MACHETE']            = { Price = 02.75, Type = 'Melee',     Name = 'Machete'                },
    ['WEAPON_LASSO']                    = { Price = 00.70, Type = 'Throwable', Name = 'Lasso'                  },
    ['WEAPON_THROWN_THROWING_KNIVES']   = { Price = 01.50, Type = 'Throwable', Name = 'Throwing Knives'        },
    ['WEAPON_THROWN_TOMAHAWK']          = { Price = 02.55, Type = 'Throwable', Name = 'Tomahawk'               },
    ['WEAPON_THROWN_DYNAMITE']          = { Price = 03.00, Type = 'Throwable', Name = 'Dynamite Sticks'        },
    ['WEAPON_THROWN_MOLOTOV']           = { Price = 02.15, Type = 'Throwable', Name = 'Fire Bottles'           },
  },

  Ammo = {
    ['WEAPON_REVOLVER_CATTLEMAN']       = { Price = 1.25, Amount = 25 },
    ['WEAPON_REVOLVER_DOUBLEACTION']    = { Price = 1.25, Amount = 25 },
    ['WEAPON_REPEATER_CARBINE']         = { Price = 1.25, Amount = 25 },
    ['WEAPON_REVOLVER_SCHOFIELD']       = { Price = 1.25, Amount = 25 },
    ['WEAPON_REVOLVER_LEMAT']           = { Price = 1.25, Amount = 25 },
    ['WEAPON_PISTOL_VOLCANIC']          = { Price = 1.25, Amount = 25 },
    ['WEAPON_PISTOL_SEMIAUTO']          = { Price = 1.25, Amount = 25 },
    ['WEAPON_PISTOL_MAUSER']            = { Price = 1.25, Amount = 25 },
    ['WEAPON_REPEATER_WINCHESTER']      = { Price = 1.25, Amount = 25 },
    ['WEAPON_REPEATER_EVANS']           = { Price = 1.25, Amount = 25 },
    ['WEAPON_REPEATER_HENRY']           = { Price = 1.25, Amount = 25 },
    ['WEAPON_RIFLE_VARMINT']            = { Price = 1.25, Amount = 25 },
    ['WEAPON_RIFLE_SPRINGFIELD']        = { Price = 1.25, Amount = 25 },
    ['WEAPON_RIFLE_BOLTACTION']         = { Price = 1.25, Amount = 25 },
    ['WEAPON_SNIPERRIFLE_ROLLINGBLOCK'] = { Price = 1.25, Amount = 25 },
    ['WEAPON_SNIPERRIFLE_CARCANO']      = { Price = 1.25, Amount = 25 },
    ['WEAPON_SHOTGUN_SAWEDOFF']         = { Price = 1.25, Amount = 25 },
    ['WEAPON_SHOTGUN_DOUBLEBARREL']     = { Price = 1.25, Amount = 25 },
    ['WEAPON_SHOTGUN_PUMP']             = { Price = 1.25, Amount = 25 },
    ['WEAPON_SHOTGUN_REPEATING']        = { Price = 1.25, Amount = 25 },
    ['WEAPON_SHOTGUN_SEMIAUTO']         = { Price = 1.25, Amount = 25 },
    ['WEAPON_BOW']                      = { Price = 1.25, Amount = 25 },
    ['WEAPON_LASSO']                    = { Price = 1.25, Amount = 25 },
    ['WEAPON_MELEE_BROKEN_SWORD']       = { Price = 1.25, Amount = 25 },
    ['WEAPON_MELEE_LANTERN']            = { Price = 1.25, Amount = 25 },
    ['WEAPON_MELEE_HATCHET']            = { Price = 1.25, Amount = 25 },
    ['WEAPON_MELEE_KNIFE']              = { Price = 1.25, Amount = 25 },
    ['WEAPON_THROWN_THROWING_KNIVES']   = { Price = 00.0, Amount = 0  },
    ['WEAPON_MELEE_MACHETE']            = { Price = 00.0, Amount = 0  },
    ['WEAPON_THROWN_TOMAHAWK']          = { Price = 00.0, Amount = 0  },
    ['WEAPON_THROWN_DYNAMITE']          = { Price = 00.0, Amount = 0  },
    ['WEAPON_THROWN_MOLOTOV']           = { Price = 00.0, Amount = 0  },
  }
}






































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
