--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
----------------------- I feel a disturbance in the force ----------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--ScriptBundle
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_ScriptBundle = {
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Force players into first person when aiming a gun
--------------------------------------------------------------------------------
  ForceFPS = true,
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- The viewing distance of the player text status set to their character
--------------------------------------------------------------------------------
  Status = { ViewDist = 3.0 },
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Harvesting bushes for fruits, Bush Hashes and what you can pick from them.
--------------------------------------------------------------------------------
  BushHarvest = {
    Bushes = {
      { ID = 'Bush', Hash = 'rdr_bush_neat_bb_sim'},
      { ID = 'Bush', Hash = 'rdr_bush_neat_aa_sim'},
      { ID = 'Bush', Hash = 'rdr_bush_ficus_aa_sim'},
      { ID = 'Bush', Hash = 'rdr_bush_sumac_aa_sim'},
      { ID = 'Bush', Hash = 's_inv_huckleberry01x'},
      { ID = 'Bush', Hash = 's_inv_raspberry01x'},
      { ID = 'Bush', Hash = 's_inv_oregano01dx'},
      { ID = 'Bush', Hash = 'rdr_bush_leafy_aa_sim'},
      { ID = 'Bush', Hash = 's_indiantobaccopicked01'},
      { ID = 'Bush', Hash = 'rdr2_bush_snakeweedflower'},
      { ID = 'Chan', Hash = 's_inv_chanterelles'},
      { ID = 'Tree', Hash = 'p_tree_orange_01'},
      { ID = 'Tree', Hash = 'p_tree_maple_s_04'},
    },

    Items = {
      { ID = 'Bush', Min = 0, Max = 5, Item = 'blueberry',  Name = 'BlueBerry',  Type = 'Consumable' },
      { ID = 'Bush', Min = 0, Max = 5, Item = 'blackberry', Name = 'Blackberry', Type = 'Consumable' },
      { ID = 'Tree', Min = 0, Max = 2, Item = 'orange',     Name = 'Orange',     Type = 'Consumable' },
      { ID = 'Tree', Min = 0, Max = 2, Item = 'apple',      Name = 'Apple',      Type = 'Consumable' },
    }
  }
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
