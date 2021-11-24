--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Low = string.lower
--------------------------------------------------------------------------------
-- Check if the core is ready so the plugins can start up
--------------------------------------------------------------------------------
RCC('DokusCore:Core:System:IsCoreReady', function(args) return TSC('DokusCore:Core:System:IsCoreReady', args) end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Return the users identifiers of the source given
--------------------------------------------------------------------------------
RCC('DokusCore:Core:GetUserIDs', function(args) return TSC('DokusCore:Core:GetUserIDs', args) end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Grab the core user data from the client side.
--------------------------------------------------------------------------------
RCC('DokusCore:Core:GetCoreUserData', function(args) return UserData end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Grab the players blacklist information
--------------------------------------------------------------------------------
RCC('DokusCore:Core:DBGet:Blacklist', function(args) return TSC('DokusCore:Core:DBGet:Blacklist', args) end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Update Core User Data
--------------------------------------------------------------------------------
RCC('DokusCore:Core:SetCoreUserData', function(args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end

  if (Low(args[1]) == 'charid') then
    if (args[2][1] == nil) then return ErrorMsg('Err_NoCharID') end
    UserData.CharID = args[2][1]
  end

  if (Low(args[1]) == 'steam') then
    if (args[2][1] == nil) then return ErrorMsg('Err_NoArgsSteam') end
    UserData.Steam = args[2][1]
  end

  if (Low(args[1]) == 'coords') then
    if (args[2][1] == nil) then return ErrorMsg('Err_NoCoords') end
    UserData.Coords = args[2][1]
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------




























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
