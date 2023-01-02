--------------------------------------------------------------------------------
############################ [ DokusCore Updates ] #############################
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v0.6.9
--------------------------------------------------------------------------------
- Added: GodMode will now make a database log entry.
- Added: Admin Teleport will make a database log entry.
- Added: function `CreateLog` created for easy database logging.
- Added: API function for getting current time and date.
- Added: API function for getting current Unix time.
- Added: API logics for handling object database data.
- Added: API logics for handling logs database data.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v0.6.8
--------------------------------------------------------------------------------
- Added: API for the new log system
- Added: function for grabbing the time and dates correctly formatted.
- Added: SafeGuard back on the modules and config lists.
- Reworked: The blacklist system for the SafeGuard plugin.
- Changed: The DropPlayer function now automatically takes the players source id
  if this was not specified by the developer.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v0.6.72
--------------------------------------------------------------------------------
- Added: Module switch for the new plugin LumberJack
- Added: Config for the LumberJack
- Added: LumberJack to the version checker module.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v0.6.71
--------------------------------------------------------------------------------
- Fixed: The cancel button for teleporting to coords, it was not showing.
- Added: God mode for admins.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v0.6.7
--------------------------------------------------------------------------------
- Added config for stables to DokusCore configs.
- Added data file to DokusCore containing variable data that is used by plugins
- Changed the value for IsNetwork on SpawnNPC to true, they should be cross visible.
- Added DC native for TaskGoToEntity can now be called by GoToEntity()
- API Calls added for setting horse InUse and IsStored
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
# Update v0.6.6-1
--------------------------------------------------------------------------------
- Language Finnish added with thanks to [ @Prefo ] for creating this file!
- Disabled the version checking loop as this results in a false positive.
  Will be re-enabled once it is fixed.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
