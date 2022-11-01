--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- https://github.com/DokusCore/DokusCore--Scavenger
local Random = math.random
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Scavenger = {
  BushHarvest = {
    Types = {
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
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'BlueBerry',         Item = 'blueberry'  },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Blackberry',        Item = 'blackberry' },
      { ID = 'Chan', Amount = Random(0, 5), Type = 'Consumable', Name = 'Chanterelles',      Item = 'chanterelles' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Currant',           Item = 'currant' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Huckleberry',       Item = 'evergreen_huckleberry' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Oregano',           Item = 'oregano' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Vanilla Flower',    Item = 'vanilla_flower' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Wintergreen Berry', Item = 'wintergreen_berry' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Peach',             Item = 'peach' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Pear',              Item = 'pear' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Orange',            Item = 'orange' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Apple',             Item = 'apple' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Tobacco',           Item = 'tobacco' },
    }
  }
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
