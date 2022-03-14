--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Check if all modules are running
--------------------------------------------------------------------------------
CreateThread(function()
  if not (_Modules.MultiCharacters) then print(Error.."^1Plugin DokusCore--MultiCharacters is Mandatory! ^0") end --Wait(1000) os.exit() end
  if not (_Modules.SettingsMenu) then print(Error.."^1Plugin DokusCore--CoreMenu is Mandatory! ^0") end -- os.exit() end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
