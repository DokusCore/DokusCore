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

  Zones = {
    { Enabled = true, ID = 'Saint Denis', Radius = 15.0, Coords = vector3(2554.4, -1166.9, 52.6) },
  },

  Stores = {
    { Enabled = true, ID = 'Saint Denis', Radius = 7.35, Coords = vector3(2554.4, -1166.9, 52.6) },
  },

  NPCs = {
    { Enabled = true, ID = 'Saint Denis', Radius = 2.2, Coords = vector3(2554.4, -1166.9, 52.6),   Heading = 161.9,  Hash = 's_m_m_tailor_01' },
  },

  Posing = {
    { ID = 'Saint Denis', Coords = vec3(2552.4, -1165.6, 52.6), Heading = 146.6, Camera = { 1.0, 0.3 } }
  },

  NPCPosing = {
    { ID = 'Saint Denis', Coords = vec3(2551.8, -1163.5, 52.6), Heading = 170.0 }
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
