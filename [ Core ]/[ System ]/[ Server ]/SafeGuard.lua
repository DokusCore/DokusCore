--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Check if all modules are running
--------------------------------------------------------------------------------
CreateThread(function()
  if not (_Modules.Characters) then print(Error.."^1Plugin DokusCore--Characters is Mandatory! ^0") end --Wait(1000) os.exit() end
  if not (_Modules.CoreMenu) then print(Error.."^1Plugin DokusCore--CoreMenu is Mandatory! ^0") end -- os.exit() end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
