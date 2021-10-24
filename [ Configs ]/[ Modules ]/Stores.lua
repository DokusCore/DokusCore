--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Banking
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Stores = {

  -- Future feature
  --[[
  --------------------------------------------------------
  -- IDEA FEATURE:
  -- When cities itself become richer, the prices of the products go up.
  -- When cities become poor, prices for items will drop. This simulates
  -- real life and users will be moving around to get the best bang for their
  -- buck. So now poor places become richer and so it balances again.
  -- This way it depends on the amount of players active in the same city
  -- will make cost of rent and items also more expensive. Eventually to
  -- expensive for some, thus diverting to a new city. This decreases the
  -- city income and inceases the new city income, balancing the system
  -- once again.
  --------------------------------------------------------
  ]]
  Management = {
    Taxes = {
      Cities = {
        { Enabled = true, ID = 'Valentine',  OnRent = 5, OnIncome = 10 },
        { Enabled = true, ID = 'SaintDenis', OnRent = 5, OnIncome = 10 },
        { Enabled = true, ID = 'BlackWater', OnRent = 5, OnIncome = 10 },
        { Enabled = true, ID = 'Tumbleweed', OnRent = 5, OnIncome = 10 },
        { Enabled = true, ID = 'Rhodes',     OnRent = 5, OnIncome = 10 },
        { Enabled = true, ID = 'Armadillo',  OnRent = 5, OnIncome = 10 },
        { Enabled = true, ID = 'Strawberry', OnRent = 5, OnIncome = 10 },
      },

      Employees = {
        { Enabled = true, ID = 'Valentine',  OnIncome = 10, OnSalaries = 5 },
        { Enabled = true, ID = 'SaintDenis', OnIncome = 10, OnSalaries = 5 },
        { Enabled = true, ID = 'BlackWater', OnIncome = 10, OnSalaries = 5 },
        { Enabled = true, ID = 'Tumbleweed', OnIncome = 10, OnSalaries = 5 },
        { Enabled = true, ID = 'Rhodes',     OnIncome = 10, OnSalaries = 5 },
        { Enabled = true, ID = 'Armadillo',  OnIncome = 10, OnSalaries = 5 },
        { Enabled = true, ID = 'Strawberry', OnIncome = 10, OnSalaries = 5 },
      }
    },

    Salaries = {
      -- NOT IN USE YET-- When true you enforce auto payments to employees.
      -- When false, players are depending on manual salary by the store owner.
      Enforce = true,

      -- Static Salaries are given every x amount of minutes defined by the
      -- PayCheck system. The type can be Bank or Wallet.
      Static = {
        { Enabled = true, ID = 'Valentine',  Type = 'Bank', Amount = 2.0 },
        { Enabled = true, ID = 'SaintDenis', Type = 'Bank', Amount = 2.0 },
        { Enabled = true, ID = 'BlackWater', Type = 'Bank', Amount = 2.0 },
        { Enabled = true, ID = 'Tumbleweed', Type = 'Bank', Amount = 2.0 },
        { Enabled = true, ID = 'Rhodes',     Type = 'Bank', Amount = 2.0 },
        { Enabled = true, ID = 'Armadillo',  Type = 'Bank', Amount = 2.0 },
        { Enabled = true, ID = 'Strawberry', Type = 'Bank', Amount = 2.0 }
      },

      -- The bonus is a percentage of each item sold in the store. The more the
      -- store sells, the higher the em
      Bonus = {
        { Enabled = true, ID = 'Valentine',  OnSell = 20, OnDeliver = 30 },
        { Enabled = true, ID = 'SaintDenis', OnSell = 20, OnDeliver = 30 },
        { Enabled = true, ID = 'BlackWater', OnSell = 20, OnDeliver = 30 },
        { Enabled = true, ID = 'Tumbleweed', OnSell = 20, OnDeliver = 30 },
        { Enabled = true, ID = 'Rhodes',     OnSell = 20, OnDeliver = 30 },
        { Enabled = true, ID = 'Armadillo',  OnSell = 20, OnDeliver = 30 },
        { Enabled = true, ID = 'Strawberry', OnSell = 20, OnDeliver = 30 },
      }


    }
  },

  Zones = {
    { Enabled = true, ID = 'Valentine' ,   RentPrice = 10, Coords = vector3(-322.0, 803.4, 117.8)    },
    { Enabled = true, ID = 'SaintDenis' ,  RentPrice = 10, Coords = vector3(2826.1, -1317.9, 45.7)   },
    { Enabled = true, ID = 'BlackWater' ,  RentPrice = 10, Coords = vector3(-784.8, -1323.9, 43.8)   },
    { Enabled = true, ID = 'Tumbleweed' ,  RentPrice = 10, Coords = vector3(-5487.6, -2938.9, -0.4)  },
    { Enabled = true, ID = 'Rhodes' ,      RentPrice = 10, Coords = vector3(1328.2, -1293.5, 77.0)   },
    { Enabled = true, ID = 'Armadillo' ,   RentPrice = 10, Coords = vector3(-3685.6, -2623.5, -13.5) },
    { Enabled = true, ID = 'Strawberry' ,  RentPrice = 10, Coords = vector3(-1791.3, -387.2, 160.3)  },
  },

  NPCs = {
    { Enabled = true, ID = 'Valentine',  ActRadius = 2.5, Coords = vector3(-324.3, 804.2, 116.8),    Heading = 236.01, Hash = 'U_M_M_StrGenStoreOwner_01' },
    { Enabled = true, ID = 'SaintDenis', ActRadius = 1.2, Coords = vector3(2824.9, -1319.8, 45.7),   Heading = 326.5,  Hash = 'U_M_M_StrGenStoreOwner_01' },
    { Enabled = true, ID = 'BlackWater', ActRadius = 1.2, Coords = vector3(-786.0, -1322.3, 42.8),   Heading = 154.1,  Hash = 'U_M_M_StrGenStoreOwner_01' },
    { Enabled = true, ID = 'Tumbleweed', ActRadius = 1.2, Coords = vector3(-5485.7, -2937.9, -1.4),  Heading = 130.1,  Hash = 'U_M_M_StrGenStoreOwner_01' },
    { Enabled = true, ID = 'Rhodes',     ActRadius = 1.2, Coords = vector3(1329.8, -1294.2, 76.0),   Heading = 77.01,  Hash = 'U_M_M_StrGenStoreOwner_01' },
    { Enabled = true, ID = 'Armadillo',  ActRadius = 1.2, Coords = vector3(-3687.4, -2623.3, -14.5), Heading = 267.5,  Hash = 'U_M_M_StrGenStoreOwner_01' },
    { Enabled = true, ID = 'Strawberry', ActRadius = 1.2, Coords = vector3(-1789.7, -388.1, 159.36), Heading = 68.2,   Hash = 'U_M_M_StrGenStoreOwner_01' },
  }

}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
