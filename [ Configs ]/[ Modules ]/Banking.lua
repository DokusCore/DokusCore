--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Banking
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Banking = {

  -- Fees will later go to the banks vault what increases the cities wealth.
  -- The fees will also be used to pay out the employees (Players).
  -- Account Creation is in dollars, the rest is in percentage of the total amount
  -- NOTE: Temporarily out of use
  Fees = {
    AccountCreation = 1.0, -- Amount in $
  --   Transaction     = { Money = 2.5, Gold = 5.0 }, -- Percentage % of total
  --   Deposit         = { Money = 5,   Gold = 15  }, -- Percentage % of total
  --   Withdraw        = { Money = 5,   Gold = 15  }, -- Percentage % of total
  },

  Zones = {
    { ID = 'Valentine',   cRadius = 0.0, aRadius = 0.0, Coords = vector3(-308.57,775.95,117.7)   },
    { ID = 'Rhodes',      cRadius = 0.0, aRadius = 0.0, Coords = vector3(1292.48,-1301.67,77.04) },
    { ID = 'SaintDenis',  cRadius = 0.0, aRadius = 0.0, Coords = vector3(2644.23,-1292.61,52.25) },
    { ID = 'BlackWater',  cRadius = 0.0, aRadius = 0.0, Coords = vector3(-812.18,-1277.26,43.64) },
  },

  NPCs = {
    { ID = 'Valentine',    Hash = 'S_M_M_BankClerk_01', ActRadius = 2.5, Coords = vector3(-308.1, 774.0, 117.7),  Heading = 13.4  },
    { ID = 'Rhodes',       Hash = 'S_M_M_BankClerk_01', ActRadius = 2.4, Coords = vector3(1291.2, -1303.4, 76.0), Heading = 332.9 },
    { ID = 'SaintDenis',   Hash = 'S_M_M_BankClerk_01', ActRadius = 2.1, Coords = vector3(2645.0, -1294.0, 51.2), Heading = 26.5  },
    { ID = 'Blackwater',   Hash = 'S_M_M_BankClerk_01', ActRadius = 2.4, Coords = vector3(-813.3, -1275.4, 42.6), Heading = 180.3 },
  }
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
