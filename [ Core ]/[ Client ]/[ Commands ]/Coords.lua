--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local SC = false
ShowCoords = {
  FontSize = 0.60,
  PosX = { Horizon = 0.185, Vertical = 0.77 },
  PosY = { Horizon = 0.189, Vertical = 0.82 },
  PosZ = { Horizon = 0.189, Vertical = 0.87 },
  PosH = { Horizon = 0.179, Vertical = 0.92 }
}

RegisterCommand("coords", function(source, args, rawCommand)
  -- Check if command can be used by users or admins
  local IsForUsers, IsForAdmins, IsForOwners = false, false, false
  if (_Commands.Coords.Users) then IsForUsers = true end
  if (_Commands.Coords.Admins) then IsForAdmins = true end
  if (_Commands.Coords.SuperAdmins) then IsForOwners = true end

  -- Check if user is admin or superadmin
  local Group, Cmds, CMD, Lang = GetUserGroup(), {}, _Commands, _Language.Lang
  local Mod, IsUser, IsAdmin, IsOwner = _Moderation, true, true, true
  if (Group ~= Mod.User) then IsUser = false end
  if (Group ~= Mod.Admin) then IsAdmin = false end
  if (Group ~= Mod.SuperAdmin) then IsOwner = false end

  local function DoThis()
    SC = not SC
    while SC do Wait(1)
      local ped = GetPlayerPed(source)
      local coords = GetEntityCoords(ped)
      local head = GetEntityHeading(ped)
      local X = ('~e~X~q~ '..(math.floor(coords.x * 10) / 10))
      local Y = ('~e~Y~q~ '..(math.floor(coords.y * 10) / 10))
      local Z = ('~e~Z~q~ '..(math.floor(coords.z * 10) / 10))
      local H = ('~e~H~q~ '..(math.floor(head * 10) / 10))
      local s = ShowCoords
      DrawCoords(X, s.PosX.Horizon, s.PosX.Vertical, s.FontSize)
      DrawCoords(Y, s.PosY.Horizon, s.PosY.Vertical, s.FontSize)
      DrawCoords(Z, s.PosZ.Horizon, s.PosZ.Vertical, s.FontSize)
      DrawCoords(H, s.PosH.Horizon, s.PosH.Vertical, s.FontSize)
    end
  end

  if IsForUsers and IsUser then DoThis() end
  if IsForAdmins and IsAdmin then DoThis() end
  if IsForOwners and IsOwner then DoThis() end
end, false)
