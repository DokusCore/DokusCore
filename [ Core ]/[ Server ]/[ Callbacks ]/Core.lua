--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Low = string.lower
--------------------------------------------------------------------------------
-- Return the users identifiers of the source given
--------------------------------------------------------------------------------
RSC('DokusCore:Core:GetUserIDs', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoCatType') end
  local G = GetPlayerIdentifier

  if (Low(args[1]) == 'user') then
    local S, L, I = G(source, 0), G(source, 1), GetPlayerEndpoint(source)
    local X, M = G(source, 2), G(source, 3)
    return {S, L, I, X, M}
  end

  if (Low(args[1]) == 'source') then
    if (args[2] == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
    if (args[2][1] == nil) then return ErrorMsg('Err_NoUserServerID') end
    local S, L, I = G(args[2][1], 0), G(args[2][1], 1), GetPlayerEndpoint(args[2][1])
    local X, M = G(args[2][1], 2), G(args[2][1], 3)
    return {S, L, I, X, M}
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:System:Time', function(source, args)
  local Hour, Minute = GetTime().h, GetTime().m
  return { Hour, Minute }
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:KickPlayer', function(source, args)
  if (args == nil) then return ErrorMsg('Err_WrongCallbackFormat') end
  if (args[1] == nil) then return ErrorMsg('Err_NoUserServerID') end
  if (args[2] == nil) then return ErrorMsg('Err_NoReason') end
  DropPlayer(args[1], args[2])
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:SetCoreUserData', function(source, args) return TCC(-1, 'DokusCore:Core:SetCoreUserData', args) end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:System:IsCoreReady', function(source, args) return __CoreReady end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RSC('DokusCore:Core:GetCoreUserData', function(source, args) return TCC(-1, 'DokusCore:Core:GetCoreUserData', args) end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
