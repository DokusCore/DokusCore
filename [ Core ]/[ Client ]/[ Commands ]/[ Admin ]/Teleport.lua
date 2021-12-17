--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Admin:Commands:TPM')
AddEventHandler('DokusCore:Core:Admin:Commands:TPM', function()
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Teleport.Users) then IsForUsers = true end
  if (_Commands.Teleport.Admins) then IsForAdmins = true end
  if (_Commands.Teleport.SuperAdmins) then IsForOwners = true end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  -- Check if user is admin or superadmin
  local Group, Cmds, CMD = GetUserGroup(), {}, _Commands
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.User) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  local function DoThis()
    local Ped = PlayerPedId()
    local Exists = DoesEntityExist(Ped)
    if Exists then
      local WP = GetWaypointCoords()
      if ((WP.x == 0) and (WP.y == 0) and (WP.z == 0)) then Notify("You've no waypoint set!") return end
      local height = 1
      for height = 1, 1000 do
        SetEntityCoords(Ped, WP.x, WP.y, (height - 50) + 0.0)
        local foundground, groundZ, normal = GetGroundZAndNormalFor_3dCoord(WP.x, WP.y, (height - 50) + 0.0)
        if foundground then
          SetEntityCoords(Ped, WP.x, WP.y, (height - 50) + 0.0)
          break
        end
        Wait(25)
      end
    end
  end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
  if IsForUsers and IsUser then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------







































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
