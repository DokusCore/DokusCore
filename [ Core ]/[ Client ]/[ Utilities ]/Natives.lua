--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
function PedID()                     return Citizen.InvokeNative(0x096275889B8E0EE0) end
function PlayerID()                  return Citizen.InvokeNative(0x217E9DC48139933D) end
function GetPed(Value)               return Citizen.InvokeNative(0x275F255ED201B937, Value) end
function GetServerID(Value)          return GetPlayerFromServerId(Value) end
function GetCoords(ID)               return GetEntityCoords(ID) end
function SetCoords(ID, Coords)       return Citizen.InvokeNative(0x06843DA7060A026B, ID, Coords) end
function GetHeading(ID)              return Citizen.InvokeNative(0x972CC383) end
function SetHeading(ID, Heading)     return Citizen.InvokeNative(0xCF2B9C0645C4651B, ID, Heading) end
function SetVisible(ID, Bool)        return Citizen.InvokeNative(0x1794B4FCC84D812F, ID, Bool) end
function SetInvincible(ID, Bool)     return Citizen.InvokeNative(0xFEBEEBC9CBDF4B12, ID, Bool) end
function SetFreeze(ID, Bool)         return Citizen.InvokeNative(0x7D9EFB7AD6B19754, ID, Bool) end
function UIFadeIn(Time)              return Citizen.InvokeNative(0x6A053CF596F67DF7, Time) end
function UIFadeOut(Time)             return Citizen.InvokeNative(0x40C719A5E410B9E4, Time) end
function UIFocus(B1, B2)             return Citizen.InvokeNative(0x5B98AE30, B1, B2) end
function NetworkActive()             return Citizen.InvokeNative(0xB8DFD30D6973E135, PlayerID()) end
function NetworkStarted()            return Citizen.InvokeNative(0x9DE624D2FC4B603F) end
function VisibleToNetwork(E, T)      return Citizen.InvokeNative(0xF1CA12B18AEF5298, E, T) end
function SteamName(s)                 return GetPlayerName(s) end
function ShowHud(Bool)               return Citizen.InvokeNative(0xD63FE3AF9FB3D53F, Bool) end
function ShowMap(Bool)               return Citizen.InvokeNative(0x4B8F743A4A6D2FF8, Bool) end
function GetHash(Value)              return Citizen.InvokeNative(0xFD340785ADF8CFB7, Value) end
function DisplayHudComp(Value)       return Citizen.InvokeNative(0x8BC7C1F929D07BF3, GetHash(Value)) end
function HideHudComp(Value)          return Citizen.InvokeNative(0x4CC5F2FC1332577F, GetHash(Value)) end
function Radar(Bool)                 return Citizen.InvokeNative(0x1B3DA717B9AFF828, Bool) end
function ShowCores(Bool)             return Citizen.InvokeNative(0x50C803A4CD5932C5, Bool) end
function ApplyDamage(args)           return Citizen.InvokeNative(0x697157CED63F18D4, args[1], args[2], args[3], args[4], args[5]) end
function GetPedVitals(args)          return Citizen.InvokeNative(0x36731AC041289BB1, args[1], args[2]) end
function GetTemperature(Coords)      return GetTemperatureAtCoords(Coords) end
function GetObjAtCoords(C,R,H,B)     return Citizen.InvokeNative(0xBFA48E2FF417213F, C, R, H, B) end
function IsWalking(Value)            return Citizen.InvokeNative(0xDE4C184B2B9B071A, Value) end
function IsRunning(Value)            return Citizen.InvokeNative(0xC5286FFC176F28A2, Value) end
function GetHealth(Value)            return Citizen.InvokeNative(0x82368787EA73C0F7, Value) end
function DoHealthDamage(P,V,I,B,K)   return Citizen.InvokeNative(0x697157CED63F18D4, P, V, I, B, K) end
function ResName()                   return GetCurrentResourceName() end
function NetworkGhosting(ID, Bool)   return Citizen.InvokeNative(0xF1CA12B18AEF5298, ID, Bool) end
function RenderCam(R, E, ET, p3, p4) return Citizen.InvokeNative(0x33281167E4942E4F, R, E, ET, p3, p4) end
function Cinema(Bool)                return Citizen.InvokeNative(0xCE7A90B160F75046, Bool) end
function DriveToCoords(D, IV, C, S, E, M, F, X, B) return Citizen.InvokeNative(0xE2A2AA2F659D77A7, D, IV, C, S, E, M, F, X, B) end
function GoToEntity(E, T, DU, DI, S) return Citizen.InvokeNative(0x6A071245EB0D1882, E, T, TN(DU), Round(TN(DI), 1), Round(TN(S), 1), 0, 0) end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------



























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
