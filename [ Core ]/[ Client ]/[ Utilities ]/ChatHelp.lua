--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Information
TriggerEvent('chat:addSuggestion', '/help', 'Show all chat commands', {})
TriggerEvent('chat:addSuggestion', '/infochar', 'Show your character specific information', {})
TriggerEvent('chat:addSuggestion', '/infoacc', 'Show your account specific information', {})
TriggerEvent('chat:addSuggestion', '/discord', "Show this server's Discord invite", {})

TriggerEvent('chat:addSuggestion', '/music', "Set the system music on or off", {
  { name = "Value",       help = "true | false" },
})

TriggerEvent('chat:addSuggestion', '/hud', "Users HUD Options", {
  { name = "Type",       help = "Update | Show | Hide" },
})

TriggerEvent('chat:addSuggestion', '/skin', "Users skin options", {
  { name = "Type",       help = "Menu | Load | close" },
})
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Admin Commands
TriggerEvent('chat:addSuggestion', '/tpm', "Teleport to a map marker", {})
TriggerEvent('chat:addSuggestion', '/addgold', 'Add gold to a users account', {
  { name = "ID",       help = "Enter the ID of the user" },
  { name = "Type",     help = "Wallet or Money ?" },
  { name = "Amount",   help = "Enter the amount you want to add" },
})

TriggerEvent('chat:addSuggestion', '/addmoney', 'Add money to a users account', {
  { name = "ID",       help = "Enter the ID of the user" },
  { name = "Type",     help = "Wallet or Money ?" },
  { name = "Amount",   help = "Enter the amount you want to add" },
})

TriggerEvent('chat:addSuggestion', '/blacklist add', 'Add or Remove users on/from the blacklist', {
  { name = "ID",       help = "Enter the ID of the user" },
  { name = "Time",     help = "Time in minutes OPTIONAL [ -1 = Permanent ]" },
  { name = "Reason",   help = "Enter a reason OPTIONAL" },
})

TriggerEvent('chat:addSuggestion', '/blacklist remove', 'Removing users from the blacklist', {
  { name = 'Type',     help = "Via IP or SteamID ?" },
  { name = "IP | SteamID",       help = "Enter the IP or SteamID of the user" }
})

TriggerEvent('chat:addSuggestion', '/language', 'Set your personal client language', {
  { name = "Language",     help = "en es ru pt fr de it nl pl gr dk bg" },
})

TriggerEvent('chat:addSuggestion', '/setcharname', 'Set your current character name', {
  { name = "First Name",     help = "Enter in your First Name" },
  { name = "Last Name",      help = "Enter in your Last Name" },
})
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
