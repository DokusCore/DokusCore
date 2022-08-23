--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Clothing
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--[[
currently only the store in Saint Denis is working for clothing. More clothing
stores will be added to the plugin as soon as the plugin is tested for beta.
]]
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Clothing = {

  -- This is the chance to get a dialog while changing clothes.
  -- The number needs to be whole and goes from 1 to 100%
  -- If set to 0, no dialogs will be displayed.
  DialogChance = 80,

  -- Kicks the user out of the menu when to long no changes where made. This prevents
  -- users going AFK and no other players being able to interact with the store.
  -- When a user is AFK for x amount of seconds, the menu will close and the NPC
  -- will go back to his start position
  AntiAFK = 60,

  Dialogs = {
    { ID = 'Saint Denis', Welcome = true,  Goodbye = true  },
    { ID = 'Valentine',   Welcome = false, Goodbye = false },
    { ID = 'Blackwater',  Welcome = true,  Goodbye = true },
  },

  Zones = {
    { Enabled = true, ID = 'Saint Denis', Radius = 15.0, Coords = vector3(2554.4, -1166.9, 52.6) },
    { Enabled = true, ID = 'Valentine',   Radius = 15.0, Coords = vector3(-387.4, 665.1, 114.8)  },
    { Enabled = true, ID = 'Blackwater',  Radius = 15.0, Coords = vector3(-761.5, -1293.6, 43.8) },
  },

  Stores = {
    { Enabled = true, ID = 'Saint Denis', Radius = 7.35, Coords = vector3(2554.4, -1166.9, 52.6) },
    { Enabled = true, ID = 'Valentine',   Radius = 4.00, Coords = vector3(-387.4, 665.1, 114.8)  },
    { Enabled = true, ID = 'Blackwater',  Radius = 6.00, Coords = vector3(-761.5, -1293.6, 43.8) },
  },

  NPCs = {
    { Enabled = true, ID = 'Saint Denis', Radius = 2.2, Coords = vector3(2554.4, -1166.9, 51.6),   Heading = 161.9,  Hash = 's_m_m_tailor_01' },
    { Enabled = true, ID = 'Valentine',   Radius = 2.2, Coords = vector3(-387.4, 665.1, 113.8),    Heading = 297.7,  Hash = 's_m_m_tailor_01' },
    { Enabled = true, ID = 'Blackwater',  Radius = 2.2, Coords = vector3(-761.5, -1293.6, 42.8),   Heading = 353.9,  Hash = 's_m_m_tailor_01' },
  },

  Posing = {
    { ID = 'Saint Denis', Coords = vec3(2552.4, -1165.6, 52.6), Heading = 146.6, Camera = { 1.0, 0.3 } },
    { ID = 'Valentine',   Coords = vec3(-389.2, 655.1, 114.3),  Heading = 337.7, Camera = { 1.5, 0.3 } },
    { ID = 'Blackwater',  Coords = vec3(-765.1, -1291.4, 43.8), Heading = 267.2, Camera = { 1.2, 0.3 } },
  },

  NPCPosing = {
    { ID = 'Saint Denis', Coords = vec3(2551.8, -1163.5, 52.6), Heading = 170.0 },
    { ID = 'Valentine',   Coords = vec3(-388.3, 655.1, 113.3),  Heading = 15.4  },
    { ID = 'Blackwater',  Coords = vec3(-766.7,-1292.7, 42.8),  Heading = 294.9 },
  },

  Dressing = {
    { ID = 'Saint Denis', Fade = 5,  Coords = vec3(2551.1, -1159.8, 53.7) },
    { ID = 'Valentine',   Fade = 10, Coords = vec3(-405.0, 651.5, 114.8)  },
    { ID = 'Blackwater',  Fade = 3,  Coords = vec3(-767.8, -1292.3, 43.8) },
  },

  Labels = {
		["boot_accessories"] = "Boot Accessories",
 		["pants"] = "Pants",
 		["cloaks"] = "Cloak",
 		["hats"] = "Hat",
 		["vests"] = "Vest",
 		["chaps"] = "Chaps",
 		["shirts_full"] = "Shirt",
 		["badges"] = "Badge",
 		["masks"] = "Mask",
 		["spats"] = "Spats",
 		["neckwear"] = "Neck",
 		["boots"] = "Boots",
 		["accessories"] = "Accessories",
 		["jewelry_rings_right"] = "Jewelry Right",
 		["jewelry_rings_left"]	= "Jewelry Left",
 		["jewelry_bracelets"] = "Bracelets",
 		["gauntlets"] = "Gauntlets",
 		["neckties"] = "Necktie",
 		["holsters_knife"] = "Knife Holster",
 		["talisman_holster"] = "Talisman Holster",
 		["loadouts"] = "Loadouts",
 		["suspenders"] = "Suspenders",
 		["talisman_satchel"] = "Talisman Satchel",
 		["satchels"] = "Satchel",
 		["gunbelts"] = "Gunbelt",
 		["belts"] = "Belt",
 		["belt_buckles"] = "Belt Buckle",
 		["holsters_left"] = "Holster Left",
 		["holsters_right"] = "Holster Right",
 		["talisman_wrist"] = "Wrist Talisman",
 		["coats"] = "Coat",
 		["coats_closed"] = "Coat Closed",
 		["ponchos"] = "Poncho",
 		["eyewear"] = "Eyewear",
 		["gloves"] = "Gloves",
 		["holsters_crossdraw"] = "Crossdraw Holster",
 		["aprons"] = "Aprons",
 		["skirts"] = "Skirts",
  },

  -- Prices are not yet in use !!
  Prices = {
		["boot_accessories"] = 0.25,
 		["pants"] = 0.25,
 		["cloaks"] = 0.25,
 		["hats"] = 0.25,
 		["vests"] = 0.25,
 		["chaps"] = 0.25,
 		["shirts_full"] = 0.25,
 		["badges"] = 0.25,
 		["masks"] = 0.25,
 		["spats"] = 0.25,
 		["neckwear"] = 0.25,
 		["boots"] = 0.25,
 		["accessories"] = 0.25,
 		["jewelry_rings_right"] = 0.25,
 		["jewelry_rings_left"]	= 0.25,
 		["jewelry_bracelets"] = 0.25,
 		["gauntlets"] = 0.25,
 		["neckties"] = 0.25,
 		["holsters_knife"] = 0.25,
 		["talisman_holster"] = 0.25,
 		["loadouts"] = 0.25,
 		["suspenders"] = 0.25,
 		["talisman_satchel"] = 0.25,
 		["satchels"] = 0.25,
 		["gunbelts"] = 0.25,
 		["belts"] = 0.25,
 		["belt_buckles"] = 0.25,
 		["holsters_left"] = 0.25,
 		["holsters_right"] = 0.25,
 		["talisman_wrist"] = 0.25,
 		["coats"] = 0.25,
 		["coats_closed"] = 0.25,
 		["ponchos"] = 0.25,
 		["eyewear"] = 0.25,
 		["gloves"] = 0.25,
 		["holsters_crossdraw"] = 0.25,
 		["aprons"] = 0.25,
 		["skirts"] = 0.25,
  }
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
