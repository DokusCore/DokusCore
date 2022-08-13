--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
Tabi    = table.insert
Low     = string.lower
Up      = string.upper
Decoded = json.decode
Encoded = json.encode
Floor   = math.floor
Match   = string.match
TS      = tostring
TN      = tonumber
Random  = math.random
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function ShowTopNote(msg, loc) TriggerEvent('DokusCore:Core:ShowTopNote', msg, loc) end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function Notify(txt, pos, time)
  TriggerEvent("pNotify:SendNotification", {
    text = "<height='40' width='40' style='float:left; margin-bottom:10px; margin-left:20px;' />"..txt,
    type = "success", timeout = time, layout = pos, queue = "right"
  })
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function Round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function GetUserGroup(S,C)
  if not ((S == nil) or (C == nil)) then
    local Data = TSC('DokusCore:Core:DBGet:Characters', { 'user', 'single', { S, C } })
    if (Data.Exist) then return Data.Result[1].Group end
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function DrawCoords(text, x, y, size)
  local xc = x / 1.0;
  local yc = y / 1.0;
  SetScriptGfxDrawOrder(3)
  SetTextScale(size, size)
  SetTextCentre(true)
  SetTextColor(255, 255, 255, 100)
  SetTextFontForCurrentCommand(6)
  DisplayText(CreateVarString(10, 'LITERAL_STRING', text), xc, yc)
  SetScriptGfxDrawOrder(3)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function DrawInfo(text, x, y, size)
  local xc = x / 1.0;
  local yc = y / 1.0;
  SetScriptGfxDrawOrder(3)
  SetTextScale(size, size)
  SetTextCentre(true)
  SetTextColor(255, 255, 255, 100)
  SetTextFontForCurrentCommand(6)
  DisplayText(CreateVarString(10, 'LITERAL_STRING', text), xc, yc)
  SetScriptGfxDrawOrder(3)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function DrawText3D(x, y, z, f, text)
  local onScreen,_x,_y = GetScreenCoordFromWorldCoord(x, y, z)
  local px,py,pz=table.unpack(GetGameplayCamCoord())
  SetTextScale(0.25, 0.25)
  SetTextFontForCurrentCommand(1)
  SetTextColor(255, 255, 255, 215)
  local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
  SetTextCentre(1)
  DisplayText(str,_x,_y)
  local factor = (string.len(text)) / f
  DrawSprite("generic_textures", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 100, 1, 1, 190, 0)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function IsIpAddress(ip)
  if not ip then return false end
  local a, b, c, d = ip:match("^(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)$")
  a = tonumber(a)
  b = tonumber(b)
  c = tonumber(c)
  d = tonumber(d)
  if not a or not b or not c or not d then return false end
  if a < 0 or 255 < a then return false end
  if b < 0 or 255 < b then return false end
  if c < 0 or 255 < c then return false end
  if d < 0 or 255 < d then return false end
  return true
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SpawnNPC(_, Coords, Heading)
  local _ = GetHashKey(_)
  while not HasModelLoaded(_) do RequestModel(_) Wait(1) end
  local SpawnNPCs = Citizen.InvokeNative(0xD49F9B0955C367DE, _, Coords, Heading, 0, 0, 0, Citizen.ResultAsInteger())
  Citizen.InvokeNative(0x1794B4FCC84D812F, SpawnNPCs, 1) -- SetEntityVisible
  Citizen.InvokeNative(0x0DF7692B1D9E7BA7, SpawnNPCs, 255, false) -- SetEntityAlpha
  Citizen.InvokeNative(0x283978A15512B2FE, SpawnNPCs, true) -- SetRandomOutfitVariation
  Citizen.InvokeNative(0x9587913B9E772D29, SpawnNPCs, true) -- PlaceEntityOnGroundProperly
  Citizen.InvokeNative(0x7D9EFB7AD6B19754, SpawnNPCs, true) -- FreezeEntityPosition
  Citizen.InvokeNative(0xDC19C288082E586E, SpawnNPCs, 1, 1) --SetEntityAsMissionEntity
  Citizen.InvokeNative(0x919BE13EED931959, SpawnNPCs, - 1) -- TaskStandStill
  Citizen.InvokeNative(0xC80A74AC829DDD92, SpawnNPCs, _) -- SET_PED_RELATIONSHIP_GROUP_HASH
  Citizen.InvokeNative(0x4AD96EF928BD4F9A, SpawnNPCs) -- SetModelAsNoLongerNeeded
  return SpawnNPCs
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SpawnVehicle(_, Coords, Heading)
  local _ = GetHashKey(_)
  while not HasModelLoaded(_) do RequestModel(_) Wait(1) end
  local SpawnVeh = Citizen.InvokeNative(0xAF35D0D2583051B0, _, Coords, Heading, 1, 0, 0, Citizen.ResultAsInteger())
  return SpawnVeh
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function RandomDialog(PedID, Dialog)
  local Txt = {}
  local Gender = IsPedMale(PedID)
  for k,v in pairs(Dialog) do
    local Male = ((Low(v.Gender) == 'male') and (Gender == 1))
    local Female = ((Low(v.Gender) == 'female') and not (Gender))
    if (Male) then Tabi(Txt, v) end
    if (Female) then Tabi(Txt, v) end
  end return Txt
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function GetDistance(Coords)
  local Ped = PedID()
  local pCoords = GetCoords(Ped)
  local Dist = Vdist(pCoords, Coords)
  return Dist
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function GetDistanceEnt(Position, Coords)
  local Dist = Vdist(Position, Coords)
  return Dist
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function Animation(PedID, Ani, Pause)
  RequestAnimDict(Ani)
  while not HasAnimDictLoaded(Ani) do Wait(10) end
  TaskPlayAnim(PedID, Ani, "exit_front", 1.0, 8.0, -1, 1, 0, false, false, false)
  Wait(Pause)
  ClearPedTasks(PedID)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function PlaySound(A1, A2) PlaySoundFrontend(A1, A2, true, 1) end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function LoadModel(pHash)
  local Hash = GetHashKey(Up(pHash))
  if (IsModelValid(Hash)) then
    if (not (HasModelLoaded(Hash))) then
      RequestModel(Hash)
      while (not (HasModelLoaded(Hash))) do Wait(10) end
    end
  end Wait(100)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function UnloadModel(pHash)
  local Hash = GetHashKey(Up(pHash))
  Citizen.InvokeNative(0x4AD96EF928BD4F9A, pHash)
  Citizen.InvokeNative(0x4AD96EF928BD4F9A, Hash)
  Wait(100)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SetModel(ID, Hash)
  LoadModel(Hash)
  Citizen.InvokeNative(0xED40380076A31506, Hash, true)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function UserData()
  local Data = TCTCC('DokusCore:Sync:Get:UserData')
  return Data
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Adds a text entry box and returns the inserted value
--------------------------------------------------------------------------------
function TextEntry(Title, Type, Event, Data)
  AddTextEntry('FMMC_MPM_NA', Title)
  DisplayOnscreenKeyboard(0, "FMMC_MPM_NA", "", "", "", "", "", 50)
  while (UpdateOnscreenKeyboard() == 0) do Wait(5) DisableAllControlActions(0) end
  if (GetOnscreenKeyboardResult()) then
    local Res = GetOnscreenKeyboardResult()
    if (Low(Type) == 'client') then TriggerEvent(Event, { Result = Res, Data = Data }) end
    if (Low(Type) == 'server') then TriggerServerEvent(Event, { Result = Res, Data = Data }) end
    CancelOnscreenKeyboard()
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Adds a number entry box and returns the inserted value
--------------------------------------------------------------------------------
function NREntry(Title, Type, Event, Data)
  AddTextEntry('FMMC_MPM_NA', Title)
  DisplayOnscreenKeyboard(0, "FMMC_MPM_NA", "", "", "", "", "", 50)
  while (UpdateOnscreenKeyboard() == 0) do Wait(5) DisableAllControlActions(0) end
  if (GetOnscreenKeyboardResult()) then
    local Res = GetOnscreenKeyboardResult()
    if (Low(Type) == 'client') then TriggerEvent(Event, { Result = Res, Data = Data }) end
    if (Low(Type) == 'server') then TriggerServerEvent(Event, { Result = Res, Data = Data }) end
    CancelOnscreenKeyboard()
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- NEED TO MAKE THE NPC OF THE TRAIN STATIC SO THAT PEOPLE CAN NOT REMOVE THEM
function SpawnTrain(Model, Coords, Heading)
  local Hash = tonumber(Model)
  local Wagons = N_0x635423d55ca84fc8(Hash)

  -- Spawn the wagons
  for Index = 0, Wagons - 1 do
    local TrainModel = N_0x8df5f6a19f99f0d5(Hash, Index)
    while not HasModelLoaded(TrainModel) do
      Citizen.InvokeNative(0xFA28FE3A6246FC30, TrainModel, 1)
      Citizen.Wait(100)
    end
  end

  -- Spawn the train
  local Train = N_0xc239dbd9a57d2a71(Hash, Coords, Heading, 0, 1, 1)
  SetTrainSpeed(Train, 0.0)
  SetTrainCruiseSpeed(Train, 0.0)
  Citizen.InvokeNative(0xDC19C288082E586E, Train, 1, 1) --SetEntityAsMissionEntity
  Citizen.InvokeNative(0x4AD96EF928BD4F9A, Train) -- SetModelAsNoLongerNeeded
  return Train
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function EnablePVP()
  Citizen.InvokeNative(0xF808475FA571D823, true)
  Citizen.InvokeNative(0xBF25EB89375A37AD, 5, `PLAYER`, `PLAYER`)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function SetBlip(Coords, Hash, Radius, Title)
  local blip = N_0x554d9d53f696d002(1664425300, Coords)
  SetBlipSprite(blip, Hash, 1)
  SetBlipScale(blip, Radius)
  Citizen.InvokeNative(0x9CB1A1623062F402, blip, Title)
  return blip
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function ArrayContains(Arr, Value)
  for i,v in ipairs(Arr) do if v == Value then return true end end
  return false
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function NoteTopCenter(Text, Loc) TriggerEvent('DokusCore:Core:ShowTopNote', Text, Loc) end
function NoteLeft(Title, Text, Type, Time) TriggerEvent('DokusCore:Core:ShowLeftNote', Title, Text, Type, Time) Wait(Time) end
function NoteTopLeft(Text, Time) TriggerEvent('DokusCore:Core:ShowTip', Text, Time) Wait(Time) end
function NoteObjective(Title, Text, Type, Time) TriggerEvent('DokusCore:Core:NoteObjective', Title, Text, Type, Time) Wait(Time) end
function NoteNPCTalk(Title, Text, mWait, Time) TriggerEvent('DokusCore:Core:NoteObjective', Title, Text, 'NPC', Time) if (mWait) then Wait(Time) end end
function ShowtextRight(Text, Time) TriggerEvent('DokusCore:Core:ShowtextRight', Text, Time) Wait(Time) end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------














--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
