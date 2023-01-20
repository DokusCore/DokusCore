--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local File = '@DokusCore/[ Core ]/[ Server ]/[ Events ]/[ Callbacks ]/[ Database ]/_Data.lua'
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Data:Skins', function(source, args)
  local Type1, Type2, Exist, Result = args[1], args[2], false, {}
  if (Low(Type1) == 'male') then
    if (Low(Type2) == 'all') then
      local X = DBGet(DB.Data.Skin.GetAllMale, {})
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end

  if (Low(Type1) == 'female') then
    if (Low(Type2) == 'all') then
      local X = DBGet(DB.Data.Skin.GetAllFemale, {})
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Data:Clothing', function(source, args)
  local Type1, Type2, Exist, Result = args[1], args[2], false, {}
  if (Low(Type1) == 'male') then
    if (Low(Type2) == 'all') then
      local X = DBGet(DB.Data.Clothing.GetAllMale, {})
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end

  if (Low(Type1) == 'female') then
    if (Low(Type2) == 'all') then
      local X = DBGet(DB.Data.Clothing.GetAllFemale, {})
      if (X[1] ~= nil) then Exist = true Result = X end
      return { Exist = Exist, Result = Result }
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:DBGet:Data:System', function(source, args)
  local X = DBGet(DB.System.GetAll, {})
  if (X[1] ~= nil) then Exist = true Result = X end
  return { Exist = Exist, Result = Result }
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------






















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
