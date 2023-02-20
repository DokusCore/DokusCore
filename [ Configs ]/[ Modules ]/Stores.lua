--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Stores
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--[[ PLUGIN RESTART!
  When this plugin is restarted, also make sure to restart
  DokusCore--Zones, or all stores in the General tab will stop
  working!!
]]
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- NOTE: This config is still in developement!
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Stores = {

  -- Default products for syncing stores.
  -- These items are synced between all stores with
  -- the same type name. With this you only have to
  -- add the items once, and they sync up with all
  -- stores connected to this table.
  ItemSync = {
    {
      Type = 'General',
      Items = {
        { Item = 'carrot',                Stock = { Limit = 30 }, Price = { Buy = { true, 0.02 },  Sell = { true, 0.01 }}  },
        { Item = 'trumpet',               Stock = { Limit = 10 }, Price = { Buy = { true, 17.75 }, Sell = { true, 9.95 }}  },
        { Item = 'whiskey',               Stock = { Limit = 30 }, Price = { Buy = { true, 0.75 },  Sell = { true, 0.35 }}  },
        { Item = 'water_clean',           Stock = { Limit = 30 }, Price = { Buy = { true, 0.32 },  Sell = { true, 0.10 }}  },
        { Item = 'horsebrush',            Stock = { Limit = 30 }, Price = { Buy = { true, 1.2 },   Sell = { true, 0.54 }}  },
        { Item = 'blueberry',             Stock = { Limit = 50 }, Price = { Buy = { true, 0.10  }, Sell = { true, 0.05 }}  },
        { Item = 'blackberry',            Stock = { Limit = 50 }, Price = { Buy = { true, 0.12  }, Sell = { true, 0.06 }}  },
        { Item = 'apple',                 Stock = { Limit = 50 }, Price = { Buy = { true, 0.08  }, Sell = { true, 0.04 }}  },
        { Item = 'orange',                Stock = { Limit = 50 }, Price = { Buy = { true, 0.08  }, Sell = { true, 0.04 }}  },
        { Item = 'wintergreen_berry',     Stock = { Limit = 50 }, Price = { Buy = { true, 0.06 },  Sell = { true, 0.03 }}  },
        { Item = 'evergreen_huckleberry', Stock = { Limit = 30 }, Price = { Buy = { true, 0.07 },  Sell = { true, 0.04 }}  },
      }
    },
    {
      Type = 'Butcher',
      Items = {
        { Item = 'meat_uncooked',         Stock = { Limit = 50 }, Price = { Buy = { true, 0.10  }, Sell = { true, 0.05  }} },
        { Item = 'meat_cooked',           Stock = { Limit = 50 }, Price = { Buy = { true, 0.25  }, Sell = { true, 0.10  }} },
      }
    },
    {
      Type = 'Herbalist',
      Items = {
        { Item = 'currant',            Stock = { Limit = 100 }, Price = { Buy = { true, 0.08  }, Sell = { true, 0.04  }} },
        { Item = 'oregano',            Stock = { Limit = 100 }, Price = { Buy = { true, 0.08  }, Sell = { true, 0.04  }} },
        { Item = 'wintergreen_berry',  Stock = { Limit = 100 }, Price = { Buy = { true, 0.08  }, Sell = { true, 0.04  }} },
      }
    },
    {
      Type = 'Tools',
      Items = {
        { Item = 'axe',               Stock = { Limit = 50 }, Price = { Buy = { true, 2.5  }, Sell = { true, 1.0  }} },
        { Item = 'pickaxe',           Stock = { Limit = 50 }, Price = { Buy = { true, 2.8  }, Sell = { true, 1.1  }} },
        { Item = 'weapon_fishingrod', Stock = { Limit = 50 }, Price = { Buy = { true, 1.5  }, Sell = { true, 0.7  }} },
        { Item = 'gold_pan',          Stock = { Limit = 50 }, Price = { Buy = { true, 3.0  }, Sell = { true, 1.2  }} },
      }
    }
  },

  -- The stores under the GENERAL tab are using the Zones plugin to catch the
  -- players position from the store. This is more complex to implement, but is
  -- better for resource performance.
  General = {
    {
      ID = 1,
      Enabled = true,
      Type = 'General',
      City = 'Valentine',
      NPCName = 'General Store',
      BlipHash = 1475879922,
      Coords = vector3(-324.3, 804.2, 116.8),
      NPC = { Heading = 272.8, Model = 'U_M_M_StrGenStoreOwner_01' },
      Items = {}
    },
    {
      ID = 2,
      Enabled = true,
      Type = 'General',
      City = 'Saint Denis',
      NPCName = 'General Store',
      BlipHash = 1475879922,
      Coords = vector3(2824.9, -1319.8, 45.7),
      NPC = { Heading = 326.5, Model = 'U_M_M_StrGenStoreOwner_01' },
      Items = {}
    },
    {
      ID = 3,
      Enabled = true,
      Type = 'General',
      City = 'Rhodes',
      NPCName = 'General Store',
      BlipHash = 1475879922,
      Coords = vector3(1329.8, -1294.2, 76.0),
      NPC = { Heading = 77.01, Model = 'U_M_M_StrGenStoreOwner_01' },
      Items = {}
    },
  },

  -- The shops within the CUSTOM tab, are stores that are using the normal
  -- distance check between the player and each store. This is easier and quiker
  -- to setup, but also slightly heavier on the resource usage.
  Custom = {

    -- Butchers
    {
      ID = 100,
      Enabled = true,
      Type = 'Butcher',
      City = 'Valentine',
      NPCName = 'Butcher',
      BlipHash = -1665418949,
      Coords = vector3(-370.1, 704.7, 116.7),
      NPC = { Heading = 36.8, Model = 'u_m_m_valbutcher_01' },
      Items = {}
    },
    {
      ID = 101,
      Enabled = true,
      Type = 'Butcher',
      City = 'Saint Denis',
      NPCName = 'Butcher',
      BlipHash = -1665418949,
      Coords = vector3(2817.6, -1323.4, 46.6),
      NPC = { Heading = 46.6, Model = 's_m_m_unibutchers_01' },
      Items = {}
    },
    {
      ID = 102,
      Enabled = true,
      Type = 'Butcher',
      City = 'Rhodes',
      NPCName = 'Butcher',
      BlipHash = -1665418949,
      Coords = vector3(1297.5, -1277.8, 75.8),
      NPC = { Heading = 146.2, Model = 'u_m_m_valbutcher_01' },
      Items = {}
    },
    {
      ID = 103,
      Enabled = true,
      Type = 'Butcher',
      City = 'Blackwater',
      NPCName = 'Butcher',
      BlipHash = -1665418949,
      Coords = vector3(-753.1, -1284.7, 43.4),
      NPC = { Heading = 260.8, Model = 'u_m_m_valbutcher_01' },
      Items = {}
    },
    {
      ID = 104,
      Enabled = true,
      Type = 'Butcher',
      City = 'Strawberry',
      NPCName = 'Butcher',
      BlipHash = -1665418949,
      Coords = vector3(-1753.1, -392.7, 156.2),
      NPC = { Heading = 192.0, Model = 's_m_m_unibutchers_01' },
      Items = {}
    },
    {
      ID = 105,
      Enabled = true,
      Type = 'Butcher',
      City = 'Tumbleweed',
      NPCName = 'Butcher',
      BlipHash = -1665418949,
      Coords = vector3(-5510.0, -2947.3, -1.9),
      NPC = { Heading = 264.4, Model = 'u_m_m_tumbutcher_01' },
      Items = {}
    },

    -- Bait Shop
    {
      ID = 106,
      Enabled = true,
      Type = nil,
      City = 'Lagras',
      NPCName = 'Bait Shop',
      BlipHash = -852241114,
      Coords = vector3(2162.2, -620.2, 42.8),
      NPC = { Heading = 44.2, Model = 'mp_dr_u_f_m_MISSINGFISHERMAN_01' },
      Items = {
        { Item = 'fishingbait', Stock = { Limit = 100 }, Price = { Buy = { true, 0.05  }, Sell = { false, 0.00  }} },
      }
    },

    -- Tools Shop
    {
      ID = 107,
      Enabled = true,
      Type = 'Tools',
      City = 'Valentine',
      NPCName = 'Tools Shop',
      BlipHash = 819673798,
      Coords = vector3(-373.6, 683.4, 117.2),
      NPC = { Heading = 68.3, Model = 'MP_U_F_M_LEGENDARYBOUNTY_001' },
      Items = {}
    },
    {
      ID = 108,
      Enabled = true,
      Type = 'Tools',
      City = 'Saint Denis',
      NPCName = 'Tools Shop',
      BlipHash = 819673798,
      Coords = vector3(2838.1, -1302.7, 46.6),
      NPC = { Heading = 4.9, Model = 'MP_U_F_M_LEGENDARYBOUNTY_001' },
      Items = {}
    },
    {
      ID = 109,
      Enabled = true,
      Type = 'Tools',
      City = 'Rhodes',
      NPCName = 'Tools Shop',
      BlipHash = 819673798,
      Coords = vector3(1398.8, -1290.8, 78.2),
      NPC = { Heading = 162.4, Model = 'MP_U_F_M_LEGENDARYBOUNTY_001' },
      Items = {}
    },
    {
      ID = 110,
      Enabled = true,
      Type = 'Tools',
      City = 'Blackwater',
      NPCName = 'Tools Shop',
      BlipHash = 819673798,
      Coords = vector3(-729.1, -1284.5, 43.5),
      NPC = { Heading = 82.8, Model = 'MP_U_F_M_LEGENDARYBOUNTY_001' },
      Items = {}
    },
    {
      ID = 111,
      Enabled = true,
      Type = 'Tools',
      City = 'Strawberry',
      NPCName = 'Tools Shop',
      BlipHash = 819673798,
      Coords = vector3(-1816.2, -423.3, 159.9),
      NPC = { Heading = 347.0, Model = 'MP_U_F_M_LEGENDARYBOUNTY_001' },
      Items = {}
    },
    {
      ID = 112,
      Enabled = true,
      Type = 'Tools',
      City = 'Tumbleweed',
      NPCName = 'Tools Shop',
      BlipHash = 819673798,
      Coords = vector3(-5501.4, -2959.3, -0.7),
      NPC = { Heading = 12.3, Model = 'MP_U_F_M_LEGENDARYBOUNTY_001' },
      Items = {}
    },

    -- Others ( WILL BE SORTED IN THE FUTURE)
    {
      ID = 1000,
      Enabled = true,
      Type = nil,
      City = 'Valentine',
      NPCName = 'Mineral Store',
      BlipHash = 819673798,
      Coords = vector3(-381.9, 683.5, 117.1),
      NPC = { Heading = 280.2, Model = 'u_m_m_bht_mineforeman' },
      Items = {
        { Item = 'mineral_copper',  Stock = { Limit = 100 }, Price = { Buy = { true, 0.10  }, Sell = { true, 0.05  }} },
        { Item = 'mineral_iron',    Stock = { Limit = 100 }, Price = { Buy = { true, 0.12  }, Sell = { true, 0.06  }} },
        { Item = 'mineral_sulfur',  Stock = { Limit = 100 }, Price = { Buy = { true, 0.08  }, Sell = { true, 0.04  }} },
      }
    },
    {
      ID = 1001,
      Enabled = true,
      Type = nil,
      City = 'Valentine',
      NPCName = 'Vegetables Store',
      BlipHash = 819673798,
      Coords = vector3(-375.5, 675.7, 116.4),
      NPC = { Heading = 36.4, Model = 'a_m_m_emrfarmhand_01' },
      Items = {
        { Item = 'blueberry',          Stock = { Limit = 100 }, Price = { Buy = { true, 0.10  }, Sell = { true, 0.05  }} },
        { Item = 'blackberry',         Stock = { Limit = 100 }, Price = { Buy = { true, 0.12  }, Sell = { true, 0.06  }} },
        { Item = 'apple',              Stock = { Limit = 100 }, Price = { Buy = { true, 0.08  }, Sell = { true, 0.04  }} },
        { Item = 'orange',             Stock = { Limit = 100 }, Price = { Buy = { true, 0.08  }, Sell = { true, 0.04  }} },
      }
    },
    {
      ID = 1002,
      Enabled = true,
      Type = nil,
      City = 'Valentine',
      NPCName = 'Lottery Store',
      BlipHash = 1838354131,
      Coords = vector3(-356.1, 726.1, 116.9),
      NPC = { Heading = 107.3, Model = 'u_m_m_nbxgeneralstoreowner_01' },
      Items = {
        { Item = 'scratchcard',          Stock = { Limit = 100 }, Price = { Buy = { true, 0.25  }, Sell = { true, 0.05  }} },
      }
    },
    {
      ID = 1003,
      Enabled = true,
      Type = 'General',
      City = 'Blackwater',
      NPCName = 'General Store',
      BlipHash = 1475879922,
      Coords = vector3(-786.0, -1322.3, 42.8),
      NPC = { Heading = 154.1, Model = 'U_M_M_StrGenStoreOwner_01' },
      Items = {}
    },
    {
      ID = 1004,
      Enabled = true,
      Type = 'General',
      City = 'Tumbleweed',
      NPCName = 'General Store',
      BlipHash = 1475879922,
      Coords = vector3(-5485.7, -2937.9, -1.4),
      NPC = { Heading = 130.1, Model = 'U_M_M_StrGenStoreOwner_01' },
      Items = {}
    },
    {
      ID = 1006,
      Enabled = true,
      Type = 'General',
      City = 'Armadillo',
      NPCName = 'General Store',
      BlipHash = 1475879922,
      Coords = vector3(-3687.4, -2623.3, -14.5),
      NPC = { Heading = 267.5, Model = 'U_M_M_StrGenStoreOwner_01' },
      Items = {}
    },
    {
      ID = 1007,
      Enabled = true,
      Type = 'General',
      City = 'Strawberry',
      NPCName = 'General Store',
      BlipHash = 1475879922,
      Coords = vector3(-1789.7, -388.1, 159.36),
      NPC = { Heading = 68.2, Model = 'U_M_M_StrGenStoreOwner_01' },
      Items = {}
    },
    {
      ID = 1008,
      Enabled = true,
      Type = 'General',
      City = 'Strawberry',
      NPCName = 'Carpenter Store',
      BlipHash = 819673798,
      Coords = vector3(-1820.4, -428.2, 159.9),
      NPC = { Heading = 80.6, Model = 'cs_cigcardguy' },
      Items = {
        { Item = 'log',     Stock = { Limit = 20 }, Price = { Buy = { false, 0.00 },  Sell = { true, 0.35 }} },
        { Item = 'treesap', Stock = { Limit = 35 }, Price = { Buy = { false, 0.00 },  Sell = { true, 0.07 }} },
      }
    },
    {
      ID = 1009,
      Enabled = true,
      Type = 'Herbalist',
      City = 'Valentine',
      NPCName = 'Herbs Store',
      BlipHash = 669307703,
      Coords = vector3(-385.0, 668.7, 115.1),
      NPC = { Heading = 250.8, Model = 'cs_herbalist' },
      Items = {}
    },
    {
      ID = 1010,
      Enabled = true,
      Type = nil,
      City = 'Valentine',
      NPCName = 'Rare Minerals',
      BlipHash = -1954662204,
      Coords = vector3(-373.1, 693.9, 117.1),
      NPC = { Heading = 69.6, Model = 'mbh_skinnersearch_males_01' },
      Items = {
        { Item = 'gold_nugget',   Stock = { Limit = 20 }, Price = { Buy = { false, 0.00 },  Sell = { true, 0.42 }} },
        { Item = 'silver_nugget', Stock = { Limit = 35 }, Price = { Buy = { false, 0.00 },  Sell = { true, 0.19 }} },
      }
    },
  }

}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
