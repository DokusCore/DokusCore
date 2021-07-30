--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local _ = 'DokusCore:Core:Callback' __ = _
local function ErrEvent() return 'Invalid Lua type at argument #1, expected string, got ' end
local function ErrFunc() return 'Invalid Lua type at argument #2, expected function, got ' end
local function ErrSource() return 'Invalid Lua type at argument #1, expected string, got ' end
--------------------------------------------------------------------------------
-- NOTE: Callback Triggers
--------------------------------------------------------------------------------
_G.TCC = function(source, Event, ...)
  assert(type(source) == 'number', ErrSource()..type(source))
  assert(type(Event) == 'string', ErrEvent()..type(Event))
  local promise = promise.new()
  RegisterNetEvent(_..':server:'..Event)
  local Handler = AddEventHandler(_..':server:'..Event, function(...)
    local s = source if source == s then promise:resolve({...}) end
  end)
  TriggerClientEvent(_..':client', source, Event, ...)
  local result = Citizen.Await(promise)
  RemoveEventHandler(Handler)
  return table.unpack(result)
end

_G.TSC = function(Event, ...)
  assert(type(Event) == 'string', ErrEvent()..type(Event))
  local promise, T = promise.new(), GetGameTimer()
  RegisterNetEvent((_..':client:%s:%s'):format(Event, T))
  local Handler = AddEventHandler((_..':client:%s:%s'):format(Event, T), function(...) promise:resolve({...}) end)
  TriggerServerEvent(_..':server', Event, T, ...)
  local result = Citizen.Await(promise)
  RemoveEventHandler(Handler)
  return table.unpack(result)
end

_G.RCC = function(Event, Func)
  assert(type(Event) == 'string', ErrEvent()..type(Event))
  assert(type(Func) == 'function', ErrFunc()..type(Func))
  AddEventHandler((_..':C:%s'):format(Event), function(CB, ...) CB(Func(...)) end)
end

_G.RSC = function(Event, Func)
  assert(type(Event) == 'string', ErrEvent()..type(Event))
  assert(type(Func) == 'function', ErrFunc()..type(Func))
  AddEventHandler((_..':S:%s'):format(Event), function(CB, s, ...)
    local result = {Func(s, ...)} CB(table.unpack(result))
  end)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
