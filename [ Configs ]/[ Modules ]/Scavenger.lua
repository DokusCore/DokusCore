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
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'BlueBerry', Item = 'blueberry' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Blackberry', Item = 'blackberry' },
      { ID = 'Chan', Amount = Random(0, 5), Type = 'Consumable', Name = 'Chanterelles', Item = 'chanterelles' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Currant', Item = 'currant' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Huckleberry', Item = 'evergreen_huckleberry' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Oregano', Item = 'oregano' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Vanilla Flower', Item = 'vanilla_flower' },
      { ID = 'Bush', Amount = Random(0, 5), Type = 'Consumable', Name = 'Wintergreen Berry', Item = 'wintergreen_berry' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Peach', Item = 'peach' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Pear', Item = 'pear' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Orange', Item = 'orange' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Apple', Item = 'apple' },
      { ID = 'Tree', Amount = Random(0, 5), Type = 'Consumable', Name = 'Tobacco', Item = 'tobacco' },
    }
  },

  GoldPanning = {
    Rivers = {
      { ID = 'Lake',  Hash = -247856387,  Name = 'Sea of Coronado' },
      { ID = 'River', Hash = -1504425495, Name = 'San Luis River' },
      { ID = 'Lake',  Hash = -1369817450, Name = 'Lake Don Julio' },
      { ID = 'Lake',  Hash = -1356490953, Name = 'Flat Iron Lake' },
      { ID = 'River', Hash = -1781130443, Name = 'Upper Montana River', },
      { ID = 'River', Hash = -1300497193, Name = 'Owanjila' },
      { ID = 'River', Hash = -1276586360, Name = 'HawkEye Creek' },
      { ID = 'River', Hash = -1410384421, Name = 'Little Creek River' },
      { ID = 'River', Hash = 370072007,   Name = 'Dakota River' },
      { ID = 'River', Hash = 650214731,   Name = 'Beartooth Beck' },
      { ID = 'Lake',  Hash = 592454541,   Name = 'Lake Isabella' },
      { ID = 'Lake',  Hash = -804804953,  Name = 'Cattail Pond' },
      { ID = 'River', Hash = 1245451421,  Name = 'Deadboot Creek' },
      { ID = 'River', Hash = -218679770,  Name = 'Spider Gorge' },
      { ID = 'Lake',  Hash = -1817904483, Name = "O'Creagh's Run" },
      { ID = 'Lake',  Hash = -811730579,  Name = 'Moonstone Pond' },
      { ID = 'River', Hash = -1229593481, Name = 'Roanoke Valley' },
      { ID = 'Lake',  Hash = -105598602,  Name = 'Elysian Pool' },
      { ID = 'Swamp', Hash = 1755369577,  Name = 'Heartland Overflow' },
      { ID = 'Swamp', Hash = -557290573,  Name = 'Lagras' },
      { ID = 'River', Hash = -2040708515, Name = 'Lannahechee River' },
      { ID = 'River', Hash = 370072007,   Name = 'Dakota River' },
      { ID = 'River', Hash = 231313522,   Name = 'No Name' },
      { ID = 'River', Hash = 2005774838,  Name = 'No Name' },
      { ID = 'River', Hash = -1287619521, Name = 'No Name' },
      { ID = 'River', Hash = -1308233316, Name = 'No Name' },
      { ID = 'River', Hash = -196675805,  Name = 'No Name' },
    }
  }
}










--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
