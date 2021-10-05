Lang["en"] = {

  ---- [ Core ] Keys
  ["Key_E"]               = "press ~e~E~q~",
  ["Key_F"]               = "press ~e~F~q~",
  ["Key_G"]               = "press ~e~G~q~",
  ["Key_H"]               = "press ~e~H~q~",
  ["Key_I"]               = "press ~e~I~q~",
  ["Key_L"]               = "press ~e~L~q~",
  ["Key_ALT"]             = "press ~e~ALT~q~",
  ["Key_ENTER"]           = "press ~e~ENTER~q~",

  ---- [ Core ] Information
  ["MoreInfoDiscord"]     = "For more information visit our Discord ".._DiscordInvite.."",
  ["NoReason"]            = "No Reason Supplied",
  ["Language"]            = "Language",
  ["LanguageSetTo"]       = "Client language set to",
  ["MusicNote"]           = "NOTE: This only counts for music that is not playing yet. \nMusic that is already playing can not be switched off!",
  ["CharNameSaved"]       = "Character Name Saved",
  ["WLRequestNote"]       = "There are pending whitelist requests. Amount = ",

  ---- [ Core ] Security
  ["Con_SteamIDCheck"]    = "Checking SteamID",
  ["Con_FailSteamCheck"]  = "You dont have Steam open, please start Steam and restart RedM!",
  ["Con_BLCheck"]         = "Checking Blacklist",
  ["Con_YourAreBL"]       = "You've been banned from this server.",
  ["Con_WLCheck"]         = "Checking Whitelist",
  ["Con_WLMade1"]         = "To access this server you need to be whitelisted.",
  ["Con_WLMade2"]         = "The whitelist request has automatically been made and is now pending.",
  ["Con_WLDenied"]        = "Your whitelist request has been denied with reason:",
  ["Con_WLPending"]       = "Your whitelist request is still pending...",

  ---- [ Core ] Help Command
  ["CMD_Help_SetCharName"] = "^3  Set your characters name^0",
  ["CMD_Help_Discord"] = "^3   Get the Discord invite link from this server^0",
  ["CMD_Help_InfoChar"] = "^3     Display your character information on the screen^0",
  ["CMD_Help_Help"] = "^3         Display the F8 Help / Command menu^0",
  ["CMD_Help_AddCurrency"] = "^4   CMD ^3| ^4ID ^3| ^4Wallet ^3or ^4Bank ^3| ^4Amount^0",
  ["CMD_Help_InfoAcc"] = "^3      Display your account information on the screen^0",
  ["CMD_Help_Language"] = "^3     Set your own client language [ ^4CMD ^3| ^4ID ^3]^0",
  ["CMD_Help_Coords"] = "^3       Show your current coordinates next to the minimap^0",
  ["CMD_Help_Hud"] = "^3       Update, Show or hide the Hud^0",

  ---- [ Core ] Admin Commands
  ["Err_AddGoldID"] = "Enter the ID of the user you would like to give gold to.",
  ["Err_AddGoldType"] = "Does this need to go to a wallet or the bank account?",
  ["Err_AddMoneyID"] = "Enter the ID of the user you would like to give money to.",
  ["Err_AddMoneyType"] = "Does this need to go to a wallet or the bank account?",
  ["Err_AddGoldAmount"] = "How much gold do you want to add?",
  ["Err_AddMoneyAmount"] = "How much money do you want to add?",
  ["Usage_AddGold"] = "/addgold ID [ wallet | bank ] amount",
  ["Usage_AddMoney"] = "/addgold ID [ wallet | bank ] amount",

  ---- [ Core ] Errors
  ["Err_NoLangEntered"] = "Unable to set the client language, no language value inserted at args 1",
  ["Err_LangNotSupported1"] = "This language is not supported by DokusCore. Please select one of the supported Languages!",
  ["Err_LangNotSupported2"] = "Supported Languages: en | es | ru | pt | fr | de | it | nl | pl | gr | dk | bg",
  ["Err_CMDMusicNoValue"] = "No value set, value needs to be true or false at args 1",

  ---- [ Core ] Blacklist
  ["BL"] = "Blacklist",
  ["BLBannedUser"] = "You have banned a player",
  ["BLNoUserWithID"] = "No user online with server ID",
  ["BLSuccess"] = "The users is sucessfully kicked from your server.",
  ["Err_BLID"] = "What user ID to put on the Blacklist?",
  ["Err_BLType"] = "Adding or removing the user?",
  ["Err_BLTime"] = "Supply a time in minutes or use -1 to ban the user permanent",
  ["Err_BLIP"] = "The value entered is not a valid IP Address!",
  ["Err_BLName"] = "What user ID to put on the Blacklist?",
  ["Err_BLNotOnList"] = "User is not on the blacklist!",
  ["Err_DBIDNotANR"] = "The CharID is not a number!",
  ["Err_BLReason"] = "Please supply a reason for this ban so that other admins know why, when looking back it at a later time.",
  ["Usage_BL"] = "/blacklist ADD | REMOVE",
  ["Usage_BLAdd"] = "/blacklist ADD ID [Minutes] [Reason]",
  ["Usage_BLRemove"] = "/blacklist REMOVE IP",

  ---- [ Banking ]
  ["Banking_Title"] = "Banking",
  ["Banking_MenuText"] = "Use the bank",
}
