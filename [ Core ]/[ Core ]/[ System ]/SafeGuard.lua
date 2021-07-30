--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  if _Time.TimeSync and _Time.FixedTime[1] then
    _StartError_ = true
    Responce(1)
  end

  -- Check the AFK Settings
  if _AntiAFK.Enabled then
    local Time = _AntiAFK.MaxTime
    local min5 = (Time <= 5)
    local min15 = ((Time > 5) and (Time <= 14))
    if min5 then _StartError_ = true Responce(2)
    elseif min15 then Responce(3) end
  end

  -- Check the settings with string inputs
  local Discord = _Commands.Discord
  local IsDiscord = (Discord.Users or Discord.Admins or Discord.SuperAdmin)
  if IsEmpty(_ServerName) then _StartError_ = true Responce(4) end
  if IsEmpty(_DiscordInvite) and IsDiscord then _StartError_ = true Responce(5) end
  if IsEmpty(_Moderation.Users) then _StartError_ = true Responce(6) end
  if IsEmpty(_Moderation.Admin) then _StartError_ = true Responce(7) end
  if IsEmpty(_Moderation.SuperAdmin) then _StartError_ = true Responce(8) end
  if IsEmpty(_StartJob.Name) then _StartError_ = true Responce(9) end
  if _PayCheck.Enabled and _PayCheck.Jobs[1] == nil then _StartError_ = true Responce(10) end

  for k,v in pairs(_PayCheck.Jobs) do
    for k,v in pairs(v) do
      if (k == 'Name') then
        if IsEmpty(v) then Responce(11) end
      end
    end
  end
end)


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function IsEmpty(s) return s == nil or s == '' or s == ' ' end
function Responce(Nr)
  print([[^6################################################################################^0]])
  if (Nr == 1) then
    print(Error.. 'The Time Settings in the config are incorrect!')
    print(Error.. "^1TimeSync^3 and ^1FixedTime^3 can't be enabled at the same time")
    print(Error.. "Please turn one of the two off, and restart DokusCore")
  elseif (Nr == 2) then
    print(Error.. 'ANTI AFK online turned on but the ^1MaxTime ^3is less then 5')
    print(Error.. "minutes!!! Please give your players some time to go to")
    print(Error.. "the toilet, or to get something to drink. Give your")
    print(Error.. "players more then 5 minutes!")
  elseif (Nr == 3) then
    print(Warn.. 'ANTI AFK online turned on but the ^1MaxTime ^3is less then 15')
    print(Warn.. "minutes! This is not an error, but for user friendliness")
    print(Warn.. "we would advice an AFK time of at least 15 minutes.")
  elseif (Nr == 4) then
    print(Error.. "The ^1ServerName ^3is empty! Please set a server")
    print(Error.. "name in the config and restart DokusCore")
  elseif (Nr == 5) then
    print(Error.. "The ^1DiscordInvite ^3is empty, but you have not turned it")
    print(Error.. "off in the ^1_Commands ^3settings. Either turn on the Discord")
    print(Error.. "command, or fill in a Discord Invite link")
  elseif (Nr == 6) then
    print(Error.. "You have not set the users group name, DokusCore will be")
    print(Error.. "unable to assign the players role. Please set a name")
    print(Error.. "in the ^1_Moderation.Users^3, and restart DokusCore")
  elseif (Nr == 7) then
    print(Error.. "You have not set the admins group name, DokusCore will be")
    print(Error.. "unable to assign the players role. Please set a name")
    print(Error.. "in the ^1_Moderation.Admin^3, and restart DokusCore")
  elseif (Nr == 8) then
    print(Error.. "You have not set the SuperAdmins group name, DokusCore will be")
    print(Error.. "unable to assign the players role. Please set a name")
    print(Error.. "in the ^1_Moderation.SuperAdmin^3, and restart DokusCore")
  elseif (Nr == 9) then
    print(Error.. "You have not set the name of the job the users get at the")
    print(Error.. "start of a new characters life. Without this many features")
    print(Error.. "will break in DokusCore. Please set a name ^1_StartJob.Name")
  elseif (Nr == 10) then
    print(Error.. "You have no jobs listed for the paychecks, yet the paycheck")
    print(Error.. "is enabled. Please disable the paycheck, or add jobs on the list")
  elseif (Nr == 11) then
    print(Error.. "You have paycheck enabled, but one of your job names")
    print(Error.. "is empty! Please check the jobs in the paycheck list")
  end
  print([[^6################################################################################^0]])
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
