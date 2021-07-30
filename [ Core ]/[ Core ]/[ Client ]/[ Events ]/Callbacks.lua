--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:C:Core:GetUserIDs', function(args)
  local Data = TSC('DokusCore:S:Core:GetUserIDs')
	return Data
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:C:Core:DB:GetViaSteam', function(args)
	if (args == nil) then return end
  local Data = TSC('DokusCore:S:Core:DB:GetViaSteam', {args[1], args[2]})
	return Data
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:C:Core:DB:GetViaIP', function(args)
	if (args == nil) then return end
  local Data = TSC('DokusCore:S:Core:DB:GetViaIP', {args[1], args[2]})
	return Data
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:C:Core:DB:Update', function(args)
	if (args == nil) then return end
  local Data = TSC('DokusCore:S:Core:DB:Update', {args[1], args[2]})
	return Data
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:C:Core:GetCoreConfig', function(...)
	local Config = {
		_Language = { Lang = _Language.Lang, Multi = _Language.Multi },
		_ServerName = _ServerName,
		_DiscordInvite  = _DiscordInvite,
		_Moderation     = { SuperAdmin = _Moderation.SuperAdmin, Admin = _Moderation.Admin, Users = _Moderation.Users },
		_StartWealth    = { Money = _StartWealth.Money, Gold = _StartWealth.Gold, BankMoney = _StartWealth.BankMoney, BankGold = _StartWealth.BankGold },
		_StartJob       = { Name = _StartJob.Name, Grade = _StartJob.Grade },
		_AntiAFK        = { Enabled = _AntiAFK.Enabled, MaxTime = _AntiAFK.MaxTime },
		_EnablePVP      = _EnablePVP,
		_ShowMap        = _ShowMap,

		_Modules = {
			MultiCharacters = MultiCharacters,
		},

		_Commands = {
		  -- Information Commands
		  Help        = { Users = _Commands.Help.Users, Admins = _Commands.Help.Admins, SuperAdmin = _Commands.Help.SuperAdmin },
		  Discord     = { Users = _Commands.Discord.Users, Admins = _Commands.Discord.Admins, SuperAdmin = _Commands.Discord.SuperAdmin },
		  InfoChar    = { Users = _Commands.InfoChar.Users, Admins = _Commands.InfoChar.Admins, SuperAdmin = _Commands.InfoChar.SuperAdmin },
		  InfoAcc     = { Users = _Commands.InfoAcc.Users, Admins = _Commands.InfoAcc.Admins, SuperAdmin = _Commands.InfoAcc.SuperAdmin },
		  Coords      = { Users = _Commands.Coords.Users, Admins = _Commands.Coords.Admins, SuperAdmin = _Commands.Coords.SuperAdmin },

		  -- User Settings Commands
		  SetCharName = { Users = _Commands.SetCharName.Users, Admins = _Commands.SetCharName.Admins, SuperAdmin = _Commands.SetCharName.SuperAdmin },
		  Language    = { Users = _Commands.Language.Users, Admins = _Commands.Language.Admins,  SuperAdmin = _Commands.Language.SuperAdmin },

		  -- Admin Commands
		  AddMoney    = { Users = _Commands.AddMoney.Users, Admins = _Commands.AddMoney.Admins, SuperAdmin = _Commands.AddMoney.SuperAdmin },
		  AddGold     = { Users = _Commands.AddGold.Users, Admins = _Commands.AddGold.Admins, SuperAdmin = _Commands.AddGold.SuperAdmin },
		}
	}
	return Config
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:C:Core:DB:DelViaSteamAndCharID', function(args)
	TSC('DokusCore:S:Core:DB:DelViaSteamAndCharID', {args[1], args[2], args[3]})
	return
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:C:Core:GetCoreUserData', function(args) return User end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RCC('DokusCore:C:Core:UpdateCoreUserData', function(args)
	local Type, Value = args[1], args[2]
	if (Type == 'CharID') then User.CharID = Value end
	if (Type == 'Coords') then User.Coords = Value end
	return
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------



























-------------------------------------------------------------------------------
