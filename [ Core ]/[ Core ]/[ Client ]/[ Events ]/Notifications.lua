--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:ShowNote')
AddEventHandler('DokusCore:C:Core:ShowNote', function(Msg, Loc)
  exports.DokusCore:ShowNote(tostring(Msg), tostring(Loc))
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:ShowTip')
AddEventHandler('DokusCore:C:Core:ShowTip', function(Msg, Time)
  exports.DokusCore:ShowTip(tostring(Msg), tonumber(Time))
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
