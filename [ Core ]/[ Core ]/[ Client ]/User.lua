--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
User = {
	Groups = nil, Language = nil, CharID = 1, Coords = nil, Job = nil,
	JobGrade = 0, Steam  = nil, Music = false
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
	User.Music = Data[1].Music

	-- Set The Users Group
	local Table = DB.Characters.GetViaSteam
	local Data = TSC('DokusCore:S:Core:DB:GetViaSteam', {Table, Steam})
	if (Data ~= nil) then User.Groups = Data[1].Groups end
	if (Data ~= nil) then User.Job = Data[1].JobName end
end)



































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
