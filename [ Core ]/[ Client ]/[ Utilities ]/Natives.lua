--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
function PedID()                 return Citizen.InvokeNative(0x096275889B8E0EE0) end
function PlayerID()              return Citizen.InvokeNative(0x217E9DC48139933D) end
function GetPed(Value)           return Citizen.InvokeNative(0x275F255ED201B937, Value) end
function GetCoords(ID)           return Citizen.InvokeNative(0xA86D5F069399F44D, ID) end
function SetCoords(ID, Coords)   return Citizen.InvokeNative(0x06843DA7060A026B, ID, Coords) end
function SetHeading(ID, Bool)    return Citizen.InvokeNative(0xCF2B9C0645C4651B, ID, Heading) end
function SetVisible(ID, Bool)    return Citizen.InvokeNative(0x1794B4FCC84D812F, ID, Bool) end
function SetFreeze(ID, Bool)     return Citizen.InvokeNative(0x7D9EFB7AD6B19754, ID, Bool) end
function UIFadeIn(Time)          return Citizen.InvokeNative(0x6A053CF596F67DF7, Time) end
function UIFadeOut(Time)         return Citizen.InvokeNative(0x40C719A5E410B9E4, Time) end
function UIFocus(B1, B2)         return Citizen.InvokeNative(0x5B98AE30, B1, B2) end
function GetCoords(ID)           return GetEntityCoords(ID) end
function Network()               return Citizen.InvokeNative(0xB8DFD30D6973E135, PlayerID()) end
function SteamName()             return GetPlayerName() end
function ShowHud(Bool)           return Citizen.InvokeNative(0xD63FE3AF9FB3D53F, Bool) end
function ShowMap(Bool)           return Citizen.InvokeNative(0x4B8F743A4A6D2FF8, Bool) end
function GetHash(Value)          return Citizen.InvokeNative(0xFD340785ADF8CFB7, Value) end
function DisplayHudComp(Value)   return Citizen.InvokeNative(0x8BC7C1F929D07BF3, GetHash(Value)) end
function HideHudComp(Value)      return Citizen.InvokeNative(0x4CC5F2FC1332577F, GetHash(Value)) end
function Radar(Bool)             return Citizen.InvokeNative(0x1B3DA717B9AFF828, Bool) end
function ShowCores(Bool)         return Citizen.InvokeNative(0x50C803A4CD5932C5, Bool) end
function ApplyDamage(args)       return Citizen.InvokeNative(0x697157CED63F18D4, args[1], args[2], args[3], args[4], args[5]) end
function GetPedVitals(args)      return Citizen.InvokeNative(0x36731AC041289BB1, args[1], args[2]) end
function GetTemperature(Coords)  return GetTemperatureAtCoords(Coords) end


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function EnablePVP()
  Citizen.InvokeNative(0xF808475FA571D823, true)
  Citizen.InvokeNative(0xBF25EB89375A37AD, 5, `PLAYER`, `PLAYER`)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SetBlip(Coords, Hash, Radius)
  local blip = N_0x554d9d53f696d002(1664425300, Coords)
  SetBlipSprite(blip, Hash, 1)
  SetBlipScale(blip, Radius)
  Citizen.InvokeNative(0x9CB1A1623062F402, blip, 'Bank')
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------




























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
