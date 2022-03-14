--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
function SysErr(e, Loc, Line)
  print("^6--------------------------------------------------------------------------------------------------------------------^0")
  if (e == 'SysErr_WrongFormat')       then print(Error..ErrMsg(1)..'^0') end
  if (e == 'SysErr_CatTypeMissing')    then print(Error..ErrMsg(2)..'^0') end
  if (e == 'SysErr_SteamArgsMissing')  then print(Error..ErrMsg(3)..'^0') end
  if (e == 'SysErr_CharIDArgsMissing') then print(Error..ErrMsg(4)..'^0') end
  if (e == 'SysErr_ServerIDMissing')   then print(Error..ErrMsg(5)..'^0') end
  if (e == 'SysErr_ReasonIsMissing')   then print(Error..ErrMsg(6)..'^0') end
  if (e == 'SysErr_CityNameMissing')   then print(Error..ErrMsg(7)..'^0') end
  print(Location..Loc..' | Line: '..Line..'^0')
  print("^6--------------------------------------------------------------------------------------------------------------------^0")
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function ErrMsg(nr)
  if (nr == 1) then return 'Wrong formatation, the arguments starts with { }' end
  if (nr == 2) then return 'Unable to perform this action, due to missing Category Type' end
  if (nr == 3) then return 'Unable to perform this action, due to missing SteamID' end
  if (nr == 4) then return 'Unable to perform this action, due to missing CharID' end
  if (nr == 5) then return 'Unable to perform this action, due to missing ServerID' end
  if (nr == 6) then return 'Unable to perform this action, due to missing Reason' end
  if (nr == 7) then return 'Unable to perform this action, due to missing City Name' end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
