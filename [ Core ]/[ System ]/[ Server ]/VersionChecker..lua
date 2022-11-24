--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SortData(Name, Data)
  local Date, Version
  for k,v in pairs(Data) do
    if (k == 'Updated') then Date = v end
    if (k == 'Version') then Version = v end
  end return { Plugin = Name, Date = Date, Version = Version }
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterServerEvent('DokusCore:Core:System:CheckUpdates')
AddEventHandler('DokusCore:Core:System:CheckUpdates', function()
  local Arr = {}
  local Plugin = nil
  local NeedsUpdating = false
  local Mod = _Modules
  local GatheringData = false
  local lastUpdated = 'WEBSITE API OFFLINE'
  local PluginN, PluginV = nil, nil

  PerformHttpRequest("http://dokuscore.com/API/Version.json", function(err, text, headers)
    if (headers['last-modified'] ~= nil) then lastUpdated = headers['last-modified'] end
    local enc = json.decode(text)
    for k,v in pairs(enc.Plugins) do table.insert(Arr, SortData(k, v)) end
    GatheringData = true
  end)

  -- Wait for data to be tabled.
  while not (GatheringData) do Wait(1) end

  print("")
  print([[^6################################################################################^0]])Wait(150)
  print([[^6#^2      ___             _                       ___                             ^6#^0]])Wait(150)
  print([[^6#^2     |   \    ___    | |__   _  _     ___    / __|    ___      _ _    ___     ^6#^0]])Wait(150)
  print([[^6#^2     | |) |  / _ \   | / /  | +| |   (_-<   | (__    / _ \    | '_|  / -_)    ^6#^0]])Wait(150)
  print([[^6#^2     |___/   \___/   |_\_\   \_,_|   /__/_   \___|   \___/   _|_|_   \___|    ^6#^0]])Wait(150)
  print([[^6#^5   _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|   ^6#^0]])Wait(150)
  print([[^6#^5   "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'   ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(150)
  print([[^6#                      ^3Checking all plugins for updates!                       ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(5000)

  -- DokusCore Framework
  for k,v in pairs(Arr) do if (v.Plugin == 'DokusCore') then Plugin = { Date = v.Date, Version = v.Version } end end
  local VersionMatch = (tostring(Plugin.Version) == tostring(__Version))
  if (not (VersionMatch)) then NeedsUpdating = true end
  if (not (VersionMatch)) then print([[^6#    ^1 DokusCore        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..__Version..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  if ((VersionMatch))     then print([[^6#    ^2 DokusCore        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..__Version..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end

  -- DokusCore Banking
  if (Mod.Banking) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Banking') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Banking') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Banking          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Banking          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Bathing
  if (Mod.Bathing) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Bathing') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Bathing') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Bathing          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Bathing          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Boats
  if (Mod.Boats) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Boats') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Boats') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Boats            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Boats            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore DataSync
  for k,v in pairs(Arr) do if (v.Plugin == 'DataSync') then Plugin = { Date = v.Date, Version = v.Version } end end
  for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--DataSync') then PluginN, PluginV = v.Name, v.Version end end
  local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
  if (not (VersionMatch)) then NeedsUpdating = true end
  if (not (VersionMatch)) then print([[^6#    ^1 DataSync         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  if ((VersionMatch))     then print([[^6#    ^2 DataSync         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end

  -- DokusCore Characters
  if (Mod.Characters) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Characters') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Characters') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Characters       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Characters       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore CoreMenu
  if (Mod.CoreMenu) then
    for k,v in pairs(Arr) do if (v.Plugin == 'CoreMenu') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--CoreMenu') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 CoreMenu         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 CoreMenu         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  --DokusCore Clothing
  if (Mod.Clothing) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Clothing') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Clothing') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Clothing         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Clothing         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  --DokusCore Customs
  if (Mod.Customs) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Customs') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Customs') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Customs        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Customs        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore FastTravel
  if (Mod.FastTravel) then
    for k,v in pairs(Arr) do if (v.Plugin == 'FastTravel') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--FastTravel') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 FastTravel       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 FastTravel       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Guidance
  if (Mod.Guidance) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Guidance') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Guidance') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Guidance         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Guidance         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore GunStore
  if (Mod.GunStore) then
    for k,v in pairs(Arr) do if (v.Plugin == 'GunStore') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--GunStore') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 GunStore         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 GunStore         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Instruments
  if (Mod.Instruments) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Instruments') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Instruments') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Instruments      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Instruments      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Inventory
  if (Mod.Inventory) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Inventory') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Inventory') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Inventory        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Inventory        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Metabolism
  if (Mod.Metabolism) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Metabolism') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Metabolism') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Metabolism       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Metabolism       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Mexico
  if (Mod.Mexico) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Mexico') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Mexico') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Mexico           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Mexico           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore NPCMenu
  if (Mod.NPCMenu) then
    for k,v in pairs(Arr) do if (v.Plugin == 'NPCMenu') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--NPCMenu') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 NPCMenu          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 NPCMenu          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore NPCInteract
  if (Mod.NPCInteract) then
    for k,v in pairs(Arr) do if (v.Plugin == 'NPCInteract') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--NPCInteract') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 NPCInteract      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 NPCInteract      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore OneFix
  if (Mod.OneFix) then
    for k,v in pairs(Arr) do if (v.Plugin == 'OneFix') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--OneFix') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 OneFix           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 OneFix           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Prospecting
  if (Mod.Prospecting) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Prospecting') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Prospecting') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Prospecting      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Prospecting      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore SafeGuard
  if (Mod.SafeGuard) then
    for k,v in pairs(Arr) do if (v.Plugin == 'SafeGuard') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--SafeGuard') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 SafeGuard        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 SafeGuard        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Scavenger
  if (Mod.Scavenger) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Scavenger') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Scavenger') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Scavenger        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Scavenger        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore ScratchCards
  if (Mod.ScratchCards) then
    for k,v in pairs(Arr) do if (v.Plugin == 'ScratchCards') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--ScratchCards') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 ScratchCards     ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 ScratchCards     ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore ScriptBundle
  local Cont = false
  for k,v in pairs(Mod.ScriptBundle) do if (v == true) then Cont = true end end
  if (Cont) then
    for k,v in pairs(Arr) do if (v.Plugin == 'ScriptBundle') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--ScriptBundle') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 ScriptBundle     ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 ScriptBundle     ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Stables
  if (Mod.Stables) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Stables') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Stables') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Stables          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Stables          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Spawner
  if (Mod.Spawner) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Spawner') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Spawner') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Spawner          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Spawner          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Skins
  if (Mod.Skins) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Skins') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Skins') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Skins            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Skins            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Stores
  if (Mod.Stores) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Stores') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Stores') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Stores           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Stores           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Telegrams
  if (Mod.Telegrams) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Telegrams') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Telegrams') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Telegrams        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Telegrams        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Trains
  if (Mod.Trains) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Trains') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Trains') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Trains           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Trains           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore UsableItems
  if (Mod.UsableItems) then
    for k,v in pairs(Arr) do if (v.Plugin == 'UsableItems') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--UsableItems') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 UsableItems      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 UsableItems      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Weapons
    if (Mod.Weapons) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Weapons') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Weapons') then PluginN, PluginV = v.Name, v.Version end end
      local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
      if (not (VersionMatch)) then NeedsUpdating = true end
      if (not (VersionMatch)) then print([[^6#    ^1 Weapons          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
      if ((VersionMatch))     then print([[^6#    ^2 Weapons          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    end

  -- DokusCore WorldEdits
  if (Mod.WorldEdits) then
    for k,v in pairs(Arr) do if (v.Plugin == 'WorldEdits') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--WorldEdits') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 WorldEdits       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 WorldEdits       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Zones
  if (Mod.Zones) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Zones') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Zones') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Zones            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Zones            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end


  print([[^6################################################################################^0]])Wait(1500)

  if (NeedsUpdating) then
    print([[^6#                           ^1Outdated Plugins Found!                            ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
    print([[^6#   ^3All plugins that are outdated are shown in red. It is recommended to       ^6#^0]])Wait(150)
    print([[^6#       ^3update these plugins via our GitHub: ^4GitHub.Com/DokusCore              ^6#^0]])Wait(150)
    print([[^6#   ^3All change notes you find at ^4Dokuscore.com/pages/InGame/Updates.html       ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
  else
    print([[^6#                           ^2All Plugins Up-To-Date!                            ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
  end

    print([[^6#           ^5Use the ^3DokusCore Help ^5or ^3Help ^5command to see all possible         ^6#^0]])Wait(150)
    print([[^6#  ^5DokusCore Framework console commands. Use any of them for more information  ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Check plugins for updates every x seconds.
RegisterServerEvent('DokusCore:Core:System:CheckUpdates:Constant')
AddEventHandler('DokusCore:Core:System:CheckUpdates:Constant', function()
  local Arr = {}
  local NeedsUpdating = false
  local Plugin = nil
  local PluginN, PluginV = nil, nil
  while true do Wait(1800000)
    PerformHttpRequest("http://dokuscore.com/API/Version.json", function(err, text, headers)
      local enc = json.decode(text)
      for k,v in pairs(enc.Plugins) do table.insert(Arr, SortData(k, v)) end
    end) Wait(5000)

    for k,v in pairs(Arr) do if (v.Plugin == 'DokusCore') then Plugin = { Date = v.Date, Version = v.Version } end end
    if ((PluginV ~= nil) and (tostring(Plugin.Version) == tostring(__Version))) then NeedsUpdating = true end

    if (_Modules.Banking) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Banking') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Banking') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Bathing) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Bathing') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Bathing') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Boats) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Boats') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Boats') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.DataSync) then
      for k,v in pairs(Arr) do if (v.Plugin == 'DataSync') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--DataSync') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Characters) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Characters') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Characters') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.CoreMenu) then
      for k,v in pairs(Arr) do if (v.Plugin == 'CoreMenu') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--CoreMenu') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Clothing) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Clothing') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Clothing') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Customs) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Customs') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Customs') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.FastTravel) then
      for k,v in pairs(Arr) do if (v.Plugin == 'FastTravel') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--FastTravel') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.GunStore) then
      for k,v in pairs(Arr) do if (v.Plugin == 'GunStore') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--GunStore') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Guidance) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Guidance') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Guidance') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Instruments) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Instruments') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Instruments') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Inventory) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Inventory') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Inventory') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Metabolism) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Metabolism') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Metabolism') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Mexico) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Mexico') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Mexico') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.NPCMenu) then
      for k,v in pairs(Arr) do if (v.Plugin == 'NPCMenu') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--NPCMenu') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.NPCInteract) then
      for k,v in pairs(Arr) do if (v.Plugin == 'NPCInteract') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--NPCInteract') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.OneFix) then
      for k,v in pairs(Arr) do if (v.Plugin == 'OneFix') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--OneFix') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Prospecting) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Prospecting') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Prospecting') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.SafeGuard) then
      for k,v in pairs(Arr) do if (v.Plugin == 'SafeGuard') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--SafeGuard') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Scavenger) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Scavenger') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Scavenger') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.ScratchCards) then
      for k,v in pairs(Arr) do if (v.Plugin == 'ScratchCards') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--ScratchCards') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.ScriptBundle) then
      for k,v in pairs(Arr) do if (v.Plugin == 'ScriptBundle') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--ScriptBundle') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Stables) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Stables') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Stables') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Spawner) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Spawner') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Spawner') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Skins) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Skins') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Skins') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Stores) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Stores') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Stores') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Telegrams) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Telegrams') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Telegrams') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Trains) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Trains') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Trains') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.UsableItems) then
      for k,v in pairs(Arr) do if (v.Plugin == 'UsableItems') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--UsableItems') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.Weapons) then
      for k,v in pairs(Arr) do if (v.Plugin == 'Weapons') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Weapons') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (_Modules.WorldEdits) then
      for k,v in pairs(Arr) do if (v.Plugin == 'WorldEdits') then Plugin = { Date = v.Date, Version = v.Version } end end
      for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--WorldEdits') then PluginN, PluginV = v.Name, v.Version end end
      if ((PluginV ~= nil) and (tostring(PluginV) ~= tostring(Plugin.Version))) then NeedsUpdating = true end
    end

    if (NeedsUpdating) then
      print("") Wait(50)
      print("") Wait(50)
      print("") Wait(50)
      print("") Wait(50)
      print([[^6################################################################################^0]])Wait(150)
      print([[^6#^2      ___             _                       ___                             ^6#^0]])Wait(150)
      print([[^6#^2     |   \    ___    | |__   _  _     ___    / __|    ___      _ _    ___     ^6#^0]])Wait(150)
      print([[^6#^2     | |) |  / _ \   | / /  | +| |   (_-<   | (__    / _ \    | '_|  / -_)    ^6#^0]])Wait(150)
      print([[^6#^2     |___/   \___/   |_\_\   \_,_|   /__/_   \___|   \___/   _|_|_   \___|    ^6#^0]])Wait(150)
      print([[^6#^5   _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|   ^6#^0]])Wait(150)
      print([[^6#^5   "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'   ^6#^0]])Wait(150)
      print([[^6################################################################################^0]])Wait(150)
      print([[^6#                              ^1Plugin Update Found!                            ^6#^0]])Wait(150)
      print([[^6################################################################################^0]])Wait(150)
      print([[^6#            ^3One of your plugins had a update! For more information            ^6#^0]])Wait(150)
      print([[^6#    ^3type: ^4Dokuscore Update ^3into your console to see what plugin is updated    ^6#^0]])Wait(150)
      print([[^6#     ^3All change notes you find at ^4Dokuscore.com/pages/InGame/Updates.html     ^6#^0]])Wait(150)
      print([[^6################################################################################^0]])Wait(150)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CreateThread(function() Wait(5000)
  local Lang = _Language.Lang
  local Arr = {}
  local Plugin = nil
  local NeedsUpdating = false
  local Mod = _Modules
  local GatheringData = false
  local License = 'OPEN (ALPHA)'
  local lastUpdated = 'WEBSITE API OFFLINE'
  local PluginN, PluginV = nil, nil

  PerformHttpRequest("http://dokuscore.com/API/Version.json", function(err, text, headers)
    if (headers['last-modified'] ~= nil) then lastUpdated = headers['last-modified'] end
    local enc = json.decode(text)
    for k,v in pairs(enc.Plugins) do table.insert(Arr, SortData(k, v)) end
    GatheringData = true
    __SystemUpdateCheckDone = true
    TriggerEvent('DokusCore:Sync:Set:SystemData', { 'SystemReady', { true } })
    TriggerEvent('DokusCore:Core:System:CheckCoreFile:Done', true)
  end)

  -- Wait for data to be tabled.
  while not (GatheringData) do Wait(1) end

  print([[^6################################################################################^0]])Wait(150)
  print([[^6#^2      ___             _                       ___                             ^6#^0]])Wait(150)
  print([[^6#^2     |   \    ___    | |__   _  _     ___    / __|    ___      _ _    ___     ^6#^0]])Wait(150)
  print([[^6#^2     | |) |  / _ \   | / /  | +| |   (_-<   | (__    / _ \    | '_|  / -_)    ^6#^0]])Wait(150)
  print([[^6#^2     |___/   \___/   |_\_\   \_,_|   /__/_   \___|   \___/   _|_|_   \___|    ^6#^0]])Wait(150)
  print([[^6#^5   _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|   ^6#^0]])Wait(150)
  print([[^6#^5   "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'   ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(150)
  print([[^6#^3               A Customizable Framework for RedM made with Love               ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(5000)
  print([[^6#^5 System Language:    ^2]]..Lang..[[ ^5              ^6#^5 Multi languages: ^2]]..tostring(_Language.Multi))
  print([[^6#^5 System Version:     ^2]]..__Version..[[ ^5           ^6#^5 License Status: ^2]]..tostring(License)..[[^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(750)
  print([[^6#^5 Server Name: ^2                        ^6# ^2]].._ServerName..[[^0]])Wait(150)
  print([[^6#^5 Discord Invite: ^2                     ^6# ^2]].._DiscordInvite..[[^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(750)
  print([[^6#                      ^3Checking all plugins for updates!                       ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(150)
  print([[^6#     ^5Plugin Name      ^6| ^5Last Updated ^6| ^5Current Version ^6|      ^5New Version     ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(150)

  -- DokusCore Framework
  for k,v in pairs(Arr) do if (v.Plugin == 'DokusCore') then Plugin = { Date = v.Date, Version = v.Version } end end
  local VersionMatch = (tostring(Plugin.Version) == tostring(__Version))
  if (not (VersionMatch)) then NeedsUpdating = true end
  if (not (VersionMatch)) then print([[^6#    ^1 DokusCore        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..__Version..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  if ((VersionMatch))     then print([[^6#    ^2 DokusCore        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..__Version..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end

  -- DokusCore Banking
  if (Mod.Banking) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Banking') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Banking') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Banking          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Banking          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Bathing
  if (Mod.Bathing) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Bathing') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Bathing') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Bathing          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Bathing          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Boats
  if (Mod.Boats) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Boats') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Boats') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Boats            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Boats            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore DataSync
  for k,v in pairs(Arr) do if (v.Plugin == 'DataSync') then Plugin = { Date = v.Date, Version = v.Version } end end
  for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--DataSync') then PluginN, PluginV = v.Name, v.Version end end
  local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
  if (not (VersionMatch)) then NeedsUpdating = true end
  if (not (VersionMatch)) then print([[^6#    ^1 DataSync         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  if ((VersionMatch))     then print([[^6#    ^2 DataSync         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end

  -- DokusCore Characters
  if (Mod.Characters) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Characters') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Characters') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Characters       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Characters       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore CoreMenu
  if (Mod.CoreMenu) then
    for k,v in pairs(Arr) do if (v.Plugin == 'CoreMenu') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--CoreMenu') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 CoreMenu         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 CoreMenu         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Clothing
  if (Mod.Clothing) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Clothing') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Clothing') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Clothing         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Clothing         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  --DokusCore Customs
  if (Mod.Customs) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Customs') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Customs') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Customs          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Customs          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore FastTravel
  if (Mod.FastTravel) then
    for k,v in pairs(Arr) do if (v.Plugin == 'FastTravel') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--FastTravel') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 FastTravel       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 FastTravel       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore GunStore
  if (Mod.GunStore) then
    for k,v in pairs(Arr) do if (v.Plugin == 'GunStore') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--GunStore') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 GunStore         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 GunStore         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Guidance
  if (Mod.Guidance) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Guidance') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Guidance') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Guidance         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Guidance         ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Instruments
  if (Mod.Instruments) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Instruments') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Instruments') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Instruments      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Instruments      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Inventory
  if (Mod.Inventory) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Inventory') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Inventory') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Inventory        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Inventory        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Metabolism
  if (Mod.Metabolism) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Metabolism') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Metabolism') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Metabolism       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Metabolism       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Mexico
  if (Mod.Mexico) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Mexico') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Mexico') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Mexico           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Mexico           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore NPCMenu
  if (Mod.NPCMenu) then
    for k,v in pairs(Arr) do if (v.Plugin == 'NPCMenu') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--NPCMenu') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 NPCMenu          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 NPCMenu          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore NPCInteract
  if (Mod.NPCInteract) then
    for k,v in pairs(Arr) do if (v.Plugin == 'NPCInteract') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--NPCInteract') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 NPCInteract      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 NPCInteract      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore OneFix
  if (Mod.OneFix) then
    for k,v in pairs(Arr) do if (v.Plugin == 'OneFix') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--OneFix') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 OneFix           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 OneFix           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Prospecting
  if (Mod.Prospecting) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Prospecting') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Prospecting') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Prospecting      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Prospecting      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore SafeGuard
  if (Mod.SafeGuard) then
    for k,v in pairs(Arr) do if (v.Plugin == 'SafeGuard') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--SafeGuard') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 SafeGuard        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 SafeGuard        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Scavenger
  if (Mod.Scavenger) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Scavenger') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Scavenger') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Scavenger        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Scavenger        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore ScratchCards
  if (Mod.ScratchCards) then
    for k,v in pairs(Arr) do if (v.Plugin == 'ScratchCards') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--ScratchCards') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 ScratchCards     ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 ScratchCards     ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  --DokusCore ScriptBundle
  local Cont = false
  for k,v in pairs(Mod.ScriptBundle) do if (v == true) then Cont = true end end
  if (Cont) then
    for k,v in pairs(Arr) do if (v.Plugin == 'ScriptBundle') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--ScriptBundle') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 ScriptBundle     ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 ScriptBundle     ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Stables
  if (Mod.Stables) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Stables') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Stables') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Stables          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Stables          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Spawner
  if (Mod.Spawner) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Spawner') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Spawner') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Spawner          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Spawner          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Skins
  if (Mod.Skins) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Skins') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Skins') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Skins            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Skins            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Stores
  if (Mod.Stores) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Stores') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Stores') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Stores           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Stores           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Telegrams
  if (Mod.Telegrams) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Telegrams') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Telegrams') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Telegrams        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Telegrams        ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Trains
  if (Mod.Trains) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Trains') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Trains') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Trains           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Trains           ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore UsableItems
  if (Mod.UsableItems) then
    for k,v in pairs(Arr) do if (v.Plugin == 'UsableItems') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--UsableItems') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 UsableItems      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 UsableItems      ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Weapons
  if (Mod.Weapons) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Weapons') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Weapons') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Weapons          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Weapons          ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore WorldEdits
  if (Mod.WorldEdits) then
    for k,v in pairs(Arr) do if (v.Plugin == 'WorldEdits') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--WorldEdits') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 WorldEdits       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 WorldEdits       ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end

  -- DokusCore Zones
  if (Mod.Zones) then
    for k,v in pairs(Arr) do if (v.Plugin == 'Zones') then Plugin = { Date = v.Date, Version = v.Version } end end
    for k,v in pairs(PluginVersions) do if (v.Name == 'DokusCore--Zones') then PluginN, PluginV = v.Name, v.Version end end
    local VersionMatch = (tostring(PluginV) == tostring(Plugin.Version))
    if (not (VersionMatch)) then NeedsUpdating = true end
    if (not (VersionMatch)) then print([[^6#    ^1 Zones            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^1]]..tostring(PluginV)..[[      ^6|         ^2]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
    if ((VersionMatch))     then print([[^6#    ^2 Zones            ^6| ^5]]..tostring(Plugin.Date)..[[ ^6|      ^5]]..tostring(PluginV)..[[      ^6|         ^5]]..tostring(Plugin.Version)..[[          ^6#^0]])Wait(150) end
  end


  print([[^6################################################################################^0]])Wait(1500)

  if (NeedsUpdating) then
    print([[^6#                           ^1Outdated Plugins Found!                            ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
    print([[^6#   ^3All plugins that are outdated are shown in red. It is recommended to       ^6#^0]])Wait(150)
    print([[^6#       ^3update these plugins via our GitHub: ^4GitHub.Com/DokusCore              ^6#^0]])Wait(150)
    print([[^6#   ^3All change notes you find at ^4Dokuscore.com/pages/InGame/Updates.html       ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
  else
    print([[^6#                           ^2All Plugins Up-To-Date!                            ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
  end

  print([[^6#           ^5Use the ^3DokusCore Help ^5or ^3Help ^5command to see all possible         ^6#^0]])Wait(150)
  print([[^6#  ^5DokusCore Framework console commands. Use any of them for more information  ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(150)

  TriggerEvent('DokusCore:Core:System:CheckUpdates:Constant')

  Wait(5000)
  print('')
  print('')
  print('')
  print([[^6################################################################################^0]])Wait(150)
  print([[^6#                                   ^1ATTENTION:                                 ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(150)
  print([[^6#    ^5Early alpha. Do you want to use it and you're not willing to spend the    ^6#^0]])Wait(150)
  print([[^6#   ^5time needed to prepair your plugins to work with our Core, it is not yet   ^6#^0]])Wait(150)
  print([[^6#  ^5recommended to use the frame for your live server. It is possible to ease   ^6#^0]])Wait(150)
  print([[^6#   ^5to make plugins made for other plugins work with DokusCore. If you do so   ^6#^0]])Wait(150)
  print([[^6#   ^5we strongly advice to keep as much a standalone until we have most of the  ^6#^0]])Wait(150)
  print([[^6#      ^5 work done on our core. We will keep you up to date on our Discord!     ^6#^0]])Wait(150)
  print([[^6################################################################################^0]])Wait(150)


  --- Loop the logo with custom text entries for the duration of running DokusCore
  local function rText()
    local TextArr = {
      [[^6#^3               A Customizable Framework for RedM made with Love               ^6#^0]],
      [[^6#^3                  You've choosen DokusCore! You are AWESOME!                  ^6#^0]],
      [[^6#^3            It's about damn time too take RedM too a whole new level          ^6#^0]],
      [[^6#^3             Did you know that you can restart almost all plugins?            ^6#^0]],
      [[^6#^3      Did you know that you can restart the framework on a running server?    ^6#^0]],
      [[^6#^3           Your Server is still running wild! Nothing to worry about          ^6#^0]],
      [[^6#^3      How do you call an idiot in Dutch? ......  Dokus  ...... Hmmmm....      ^6#^0]],
      [[^6#^3  Visit our Discord for more info, or if you need help: ^5Discord.io/DokusCore  ^6#^0]],
    }
    return TextArr[math.random(#TextArr)]
  end

  while true do Wait(900000)
    print("") Wait(100)  print("") Wait(100)  print("") Wait(100)  print("") Wait(100)  print("") Wait(100)  print("") Wait(100)  print("") Wait(100)  print("") Wait(100)  print("") Wait(100)  print("") Wait(100)
    print([[^6################################################################################^0]])Wait(150)
    print([[^6#^2      ___             _                       ___                             ^6#^0]])Wait(150)
    print([[^6#^2     |   \    ___    | |__   _  _     ___    / __|    ___      _ _    ___     ^6#^0]])Wait(150)
    print([[^6#^2     | |) |  / _ \   | / /  | +| |   (_-<   | (__    / _ \    | '_|  / -_)    ^6#^0]])Wait(150)
    print([[^6#^2     |___/   \___/   |_\_\   \_,_|   /__/_   \___|   \___/   _|_|_   \___|    ^6#^0]])Wait(150)
    print([[^6#^5   _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|   ^6#^0]])Wait(150)
    print([[^6#^5   "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'   ^6#^0]])Wait(150)
    print([[^6################################################################################^0]])Wait(150)
    print(rText())Wait(150)
    print([[^6################################################################################^0]])
  end

end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
