--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
-- -- https://github.com/DokusCore/DokusCore--Skins
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Skins = {

  Light = { -- The lights to see the character if it is dark
    { Coords = vec3(-559.59, -3780.757, 238.59), Rot = 50.0, Fov = 50.0  },
    { Coords = vec3(-562.59, -3775.757, 238.59), Rot = 150.0, Fov = 50.0  },
  },

  PEDs = { -- The male and female ped variations
    { Gender = "mp_male", x = -558.9098, y = -3775.616, z = (238.59 - 0.5), h = 137.98  },
    { Gender = "mp_female", x = -558.9098, y = -3776.978, z = (238.59 - 0.5), h = 47.11 }
  },

  Cams = { -- Camera offset positions for the body parts.
    { name = "Selection", x=-1.0, y=0.0, z=0.5 },
    { name = "Rosto",     x=-0.5, y=0.0, z=0.6 },
    { name = "Corpo",     x=-1.3, y=0.0, z=0.4 },
  },

  Looks = {
    Faces = { -- These are all the dirrent face features.
      0x84D6, 0x3303, 0x2FF9, 0x4AD1, 0xC04F, 0xB6CE, 0x2844, 0xED30, 0x6A0B, 0xABCF,
      0x358D, 0x8D0A, 0xEBAE, 0x1DF6, 0x3C0F, 0xC3B2, 0xE323, 0x8B2B, 0x1B6B, 0xEE44,
      0xD266, 0xA54E, 0xDDFB, 0x6E7F, 0x3471, 0x03F5, 0x34B1, 0xF156, 0x561E, 0xF065,
      0xAA69, 0x7AC3, 0x410D, 0x1A00, 0x91C1, 0xC375, 0xBB4D, 0xB0B0, 0x5D16
    },

    Waists = { -- These are all the different waists types
      -2045421226, -1745814259, -325933489, -1065791927, -844699484, -1273449080,
      927185840, 149872391, 399015098, -644349862, 1745919061, 1004225511, 1278600348,
      502499352, -2093198664, -1837436619, 1736416063, 2040610690, -1173634986,
      -867801909, 1960266524
    },

    Default = { -- This is the default skin the character reverts to once the menu opens.
      Male   = { ["eyes"] = 642477207, ["BODIES_UPPER"] = 4132004136, ["BODIES_LOWER"] = 174153218, ["heads"] = 4042989040 },
      Female = { ["eyes"] = 928002221, ["BODIES_UPPER"] = 2458758467, ["BODIES_LOWER"] = 4040004332, ["heads"] = 2636455686 }
    },
  },

  -- These are random outfits the NPCs will have when choosing a gender
  -- This it is diabled, both characters will have outfit number 17
  Outfits = {
    Enabled = true,
    Female = { 3, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83 },
    Male = { 3, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48 }
  },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
