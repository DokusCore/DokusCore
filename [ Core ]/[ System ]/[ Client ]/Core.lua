--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
	while true do
		SetDiscordAppId(970960339363590166)
		SetDiscordRichPresenceAsset('logo_name')
    SetDiscordRichPresenceAssetText('DokusCore - The RedM Framework for quality with love :)')
    SetDiscordRichPresenceAssetSmall('logo_name')
    SetDiscordRichPresenceAssetSmallText('Join our discord!')
    SetDiscordRichPresenceAction(0, "Website!", "https://dokuscore.com/")
    SetDiscordRichPresenceAction(1, "Discord!", "https://discord.io/dokuscore")
		Wait(60000)
	end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
