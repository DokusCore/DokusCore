--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:ShowTopNote')
AddEventHandler('DokusCore:Core:ShowTopNote', function(Msg, Loc)
  exports.DokusCore:ShowTopNote(tostring(Msg), tostring(Loc))
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:ShowTip')
AddEventHandler('DokusCore:Core:ShowTip', function(Msg, Time)
  exports.DokusCore:ShowTip(tostring(Msg), tonumber(Time))
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Notify')
AddEventHandler('DokusCore:Core:Notify', function(txt, pos, time) Notify(txt, pos, time) end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
