--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
User = {
	Groups = nil, Language = nil, CharID = 1, Coords = nil, Job = nil,
	JobGrade = 0, Steam  = nil, sName = nil, Music = true
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:C:Core:System:LoadUser')
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
AddEventHandler('DokusCore:C:Core:System:LoadUser', function(sName)
	local Steam = TSC('DokusCore:S:Core:GetUserIDs')[1]
	User.Steam = Steam

	-- Check if a new user or not.
	local Table = DB.Users.GetViaSteam
	local Exists = TSC('DokusCore:S:Core:DB:DoesUserExists', {Table, Steam})
	if not Exists then TSC('DokusCore:S:Core:DB:CreateNewUser', {sName, PlayerPedId()}) end

	-- Set Users language if this is universal
	local Data = TSC('DokusCore:S:Core:DB:GetViaSteam', {Table, Steam})
	User.Language = Data[1].Language
	User.sName = Data[1].sName

	-- Set The Users Group
	local Table = DB.Characters.GetViaSteam
	local Data = TSC('DokusCore:S:Core:DB:GetViaSteam', {Table, Steam})
	if (Data ~= nil) then User.Groups = Data[1].Groups end
	if (Data ~= nil) then User.Job = Data[1].JobName end

	-- Set User Settings

	local Table = DB.Settings.GetViaSteam
	local Data = TSC('DokusCore:S:Core:DB:GetViaSteam', {Table, Steam})
	if ((Data[1] ~= nil) and (Data[1].Music == 1)) then User.Music = true end
	if ((Data[1] ~= nil) and (Data[1].Music == 0)) then User.Music = false end

	-- Setup the users hud
	if _Modules.MultiCharacters then TriggerEvent('DokusCore:MultiChar:C:GetCharID') end
	if not _Modules.MultiCharacters then TriggerEvent('DokusCore:C:Core:Hud:Initiate', User) end
	if _Modules.MultiCharacters then TriggerEvent('DokusCore:C:Core:Hud:Toggle', false) end
end)



















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
