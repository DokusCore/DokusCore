Lang['en'] = {

  ["System"] = {
    ["Yes"]             = { Gender = false, Time = false, MSG = "Yes" },
    ["No"]              = { Gender = false, Time = false, MSG = "No" },
    ["Error"]           = { Gender = false, Time = false, MSG = "ERROR" },
    ["System"]          = { Gender = false, Time = false, MSG = "System" },
    ["Success"]         = { Gender = false, Time = false, MSG = "Success" },
    ["BLCheck"]         = { Gender = false, Time = false, MSG = "Checking Blacklist" },
    ["WLCheck"]         = { Gender = false, Time = false, MSG = "Checking Whitelist" },
    ["SteamCheck"]      = { Gender = false, Time = false, MSG = "Checking Steam Identification" },
    ["SteamConFail"]    = { Gender = false, Time = false, MSG = "We're unable to connect to the Steam API, make sure you had Steam open before opening RedM!" },
    ["UserBanned"]      = { Gender = false, Time = false, MSG = "You've been banned from this server." },
    ["InfoDiscord"]     = { Gender = false, Time = false, MSG = "For more information visit our Discord ".._DiscordInvite.."" },
    ["NoBanReason"]     = { Gender = false, Time = false, MSG = "No Reason Supplied" },
    ["WLPending"]       = { Gender = false, Time = false, MSG = "Your whitelist request is still pending..." },
    ["WLDenied"]        = { Gender = false, Time = false, MSG = "Your whitelist request has been denied with reason:" },
    ["WLMade1"]         = { Gender = false, Time = false, MSG = "To access this server you need to be whitelisted." },
    ["WLMade2"]         = { Gender = false, Time = false, MSG = "The whitelist request has automatically been made and is now pending." },
    ["NoCharFound"]     = { Gender = false, Time = false, MSG = "Unable to perform this action, no character found!" },
    ["Language"]        = { Gender = false, Time = false, MSG = "Language" },
    ["LangNotEnter"]    = { Gender = false, Time = false, MSG = "The language parameter was empty!" },
    ["LanguageSetTo"]   = { Gender = false, Time = false, MSG = "Client language is set to " },
    ["LangNoSupport"]   = { Gender = false, Time = 5.0,   MSG = "This language is not supported!" },
    ["WelcomeTo"]       = { Gender = false, Time = false, MSG = "Welcome to:" },
    ["InProgress"]      = { Gender = false, Time = false, MSG = "In Progress" },
    ["OpenMenu"]        = { Gender = false, Time = false, MSG = "Open Menu" },

    ["InDevelopment"]   = { Gender = false, Time = 5.0,   MSG = "This feature is in development!" },

    -- Cities
    ["Guarma"]          = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"]          = { Gender = false, Time = false, MSG = "Sisika Jail" },
    ["SaintDenis"]      = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"]         = { Gender = false, Time = false, MSG = "Banking" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Bankier Worker" },
    ["NPCBusy"]      = { Gender = false, Time = 3.5, MSG = "I'am is currently busy with another citizen, one moment please!" },
    ["NoAccount"]    = { Gender = false, Time = 3.5, MSG = "I'am sorry, but we have no bank account registered in our logs. You fitst need to open a bank account before you can use one!" },
    ["UseBankKey"]   = { Gender = false, Time = 3.5, MSG = "Use The Bank" },
    ["AlAccount"]    = { Gender = false, Time = 3.5, MSG = "You already have an bank account at this bank!" },
    ["AcCreation"]   = { Gender = false, Time = 3.5, MSG = "You've paid your account fee, account getting created!" },
    ["AcCreated"]    = { Gender = false, Time = 3.5, MSG = "Your bank account has been made! You can now open your bank account." },
    ["NoDepMoney"]   = { Gender = false, Time = 3.5, MSG = "You've not enough money to make this deposit!" },
    ["NoDepGold"]    = { Gender = false, Time = 3.5, MSG = "You've not enough gold to make this deposit!" },
    ["NoWitMoney"]   = { Gender = false, Time = 3.5, MSG = "You've not enough money to make this withdraw!" },
    ["NoWitGold"]    = { Gender = false, Time = 3.5, MSG = "You've not enough gold to make this withdraw!" },
    ["DepMinMoney"]  = { Gender = false, Time = 3.5, MSG = "The deposit amount needs to be bigger then $0.01 cent!" },
    ["DepMinGold"]   = { Gender = false, Time = 3.5, MSG = "The deposit amount needs to be bigger then 0.01 gold!" },
    ["WitMinMoney"]  = { Gender = false, Time = 3.5, MSG = "The deposit amount needs to be bigger then $0.01 cent!" },
    ["WitMinGold"]   = { Gender = false, Time = 3.5, MSG = "The deposit amount needs to be bigger then 0.01 gold!" },
    ["ToFast"]       = { Gender = false, Time = 3.5, MSG = "I'am sorry, but I can only do 1 transaction at a time. One moment please!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5, MSG = "You've done a deposit of $" },
    ["DepDoneGold"]  = { Gender = false, Time = 3.5, MSG = "You've done a deposit of " },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5, MSG = "You've done a withdraw of $" },
    ["WitDoneGold"]  = { Gender = false, Time = 3.5, MSG = "You've done a withdraw of " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Welcome to our bank, how may I be of service?" },
      { Gender = false, Time = false, MSG = "Welcome, how may I help you?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Thanks for stopping by, have a wonderful day!" },
      { Gender = false, Time = false, MSG = "I was my please to help you today, until next time!" },
      { Gender = false, Time = false, MSG = "If there is anything I can still help you with, just let me know!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0,   MSG = "No character selected!" },
  },

  ["Clothing"] = {
    ["Name"]          = { Gender = false, Time = false, MSG = "Clothing Store" },
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Tailor" },
    ["NPCBusy"]       = { Gender = false, Time = 3.5,   MSG = "I'm currently busy with another customer, hold on for one moment. I'll be with you as soon as possible!" },
    ["NeedToGo"]      = { Gender = false, Time = 3.5,   MSG = "I've more to do and more customers to attend to, let me know when you need some more help" },
    ["DressingRoom"]  = { Gender = false, Time = false, MSG = "Dressing Room" },
    ["Confirmation"]  = { Gender = false, Time = false, MSG = "Confirmation" },
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5,   MSG = "Do you want to switch clothing?" },
    ["Pay"]           = { Gender = false, Time = false, MSG = "Pay" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Open Menu" },
    ["Outfits"]       = { Gender = false, Time = false, MSG = "Outfits" },

    ['EnterStore'] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Welcome, I hope you set into my store with clean shoes!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Yeee boy, welcome to my store sir, I am glad to see you!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Oh look at that, hallo there. How is your day today sir?" },
      { Gender = 'Female', Time = 3.5, MSG = "Welcome, I hope you set into my store with clean shoes!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee boy, welcome to my store!. Oh, excuse me my lady, I was over existed." },
      { Gender = 'Female', Time = 3.5, MSG = "Oh look at that, hallo there. How is your day today my lady?" },
    },

    ['ExitStore'] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Thanks for your visit! Safe Travels my friend!" },
      { Gender = 'Male',   Time = 3.5, MSG = "I wish you a well day, may you enjoy your day sir!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Enjoy your day sir, thanks for your visit." },
      { Gender = 'Male',   Time = 3.5, MSG = "Good travels my friend, thanks for your visit" },
      { Gender = 'Female', Time = 3.5, MSG = "Thanks for your visit! Safe Travels my lady!" },
      { Gender = 'Female', Time = 3.5, MSG = "I wish you a well day, may you enjoy your day Ma'am!" },
      { Gender = 'Female', Time = 3.5, MSG = "Enjoy your day Ma'am, thanks for your visit." },
      { Gender = 'Female', Time = 3.5, MSG = "Good travels my lady, thanks for your visit" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3, MSG = "How may I help you good sir?" },
      { Gender = 'Female', Time = 3, MSG = "How may I help you my lady?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Of cause I'll be able to help you good sir. Please walk to the side of the counter, and Ill be with you as soon as possible." },
      { Gender = 'Male',   Time = 3.5, MSG = "Ahh yes, clothing. Sir, you came to the right place, please follow me." },
      { Gender = 'Female', Time = 3.5, MSG = "As you please my lady, I shall help you with much pleasure!" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Ahh yes, clothing. Ma'am, you came to the right place, please follow me." },
    },

    ["Reactions"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "That fits you well sir" },
      { Gender = 'Male',   Time = 5.0, MSG = "Oh look at that, seeing you like that makes me jealous." },
      { Gender = 'Male',   Time = 5.0, MSG = "Oh boy, look at that, it's marvelous." },
      { Gender = 'Male',   Time = 5.0, MSG = "It's the finest we have in town, you do not find better anywhere else!" },
      { Gender = 'Male',   Time = 5.0, MSG = "So beautiful, so special, and I am the one able to make it for you, if you like of cause." },
      { Gender = 'Male',   Time = 5.0, MSG = "That fits you marvelous" },
      { Gender = 'Male',   Time = 5.0, MSG = "My gosh, as it was made specially for you!" },
      { Gender = 'Female', Time = 5.0, MSG = "That fits you well sir" },
      { Gender = 'Female', Time = 5.0, MSG = "Oh look at that, seeing you like that makes me jealous." },
      { Gender = 'Female', Time = 5.0, MSG = "Oh boy, look at that, it's marvelous." },
      { Gender = 'Female', Time = 5.0, MSG = "It's the finest we have in town, you do not find better anywhere else!" },
      { Gender = 'Female', Time = 5.0, MSG = "So beautiful, so special, and I am the one able to make it for you, if you like of cause." },
      { Gender = 'Female', Time = 5.0, MSG = "That fits you marvelous" },
      { Gender = 'Female', Time = 5.0, MSG = "My gosh, as it was made specially for you!" },
    }
  },

  ["Skins"] = {
    ['Male']      = { Gender = false, Time = false, MSG = "Male"                                        },
    ['Female']    = { Gender = false, Time = false, MSG = "Female"                                      },
    ['Select']    = { Gender = false, Time = false, MSG = "Select"                                      },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Choose Gender"                               },
    ["ErrAge"]    = { Gender = false, Time = 3.0,   MSG = "You've not set your characters age!"         },
    ["ErrName"]   = { Gender = false, Time = 3.0,   MSG = "You've not set your characters name!"        },
    ["ErrNatio"]  = { Gender = false, Time = 3.0,   MSG = "You've not set your characters nationality!" },
    ["ErrTorso"]  = { Gender = false, Time = 3.0,   MSG = "You've not set your characters torso type!"  },
    ["ErrLegs"]   = { Gender = false, Time = 3.0,   MSG = "You've not set your characters legs type!"   },
    ["ErrHead"]   = { Gender = false, Time = 3.0,   MSG = "You've not set your characters head type!"   },
    ["ErrEyes"]   = { Gender = false, Time = 3.0,   MSG = "You've not set your characters eyes type!"   },
    ["ErrHair"]   = { Gender = false, Time = 3.0,   MSG = "You've not set your characters hair type!"   },
  },

  ["Spawner"] = {
    ['Cutscene']    = { Gender = false, Time = false, MSG = "Cutscene" },
    ["DriverName"]  = { Gender = false, Time = false, MSG = "StageCoach Driver" },
    ["MusicOn"]     = { Gender = false, Time = 5.0,   MSG = "You turned the music off" },
    ["MusicOff"]    = { Gender = false, Time = 5.0,   MSG = "You turned the music on" },
    ["ErrStepOut"]  = { Gender = false, Time = 5.0,   MSG = "You can't step out in the cut scene." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Stop | Start Music" },
    ["StepOut"]     = { Gender = false, Time = false, MSG = "Step Out" },
    ["Cinema"]      = { Gender = false, Time = false, MSG = "Cinema" },

    ['Welcome'] = {
      { Gender = false, Time = 5.0,   MSG = "Welcome to our county, may you enjoy your stay!" },
      { Gender = false, Time = 5.0,   MSG = "I cen tell that you're smart, because you choose for this county! Haha, welcome my friend!" },
    },

    ["Advice"] = {
       { Gender = false, Time = 5.0,   MSG = "I'll be bringing you to a fine Tailor that could help you out on some new clothing" },
       { Gender = false, Time = 5.0,   MSG = "After such long journey a fine Tailor is what you need. Let me do the honor and bring you to one." },
    },

    ["Tailor"] = {
       { Gender = false, Time = 5.0,   MSG = "There is a Tailor close by, I would consider getting some new clothing." },
       { Gender = false, Time = 5.0,   MSG = "You'll find a Tailor around the corner, I would consider getting some new clothing." },
    },

    ["Goodbye"] = {
       { Gender = false, Time = 5.0,   MSG = "Goodbye my friend, it was nice meeting you! Enjoy your stay!" },
       { Gender = false, Time = 5.0,   MSG = "It was wonderful to meet you, may you enjoy your stay!" },
       { Gender = false, Time = 5.0,   MSG = "That is then $12.25... hah just kidding, enjoy your stay my friend!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0,   MSG = "It's a nice county that you've arived in, there is lots to do in the city, you might like it." },
      { Gender = false, Time = 7.0,   MSG = "Isn't it funny how the weather can be sometimes, it can switch around like crazy! You seriously do not want to be cought up in one of those storms i'll tell ya." },
      { Gender = false, Time = 5.0,   MSG = "It look's like you've been traveling for quite some time. I hope your journey was without any troubles." },
      { Gender = false, Time = 5.0,   MSG = "Ain't it just me, or is it very smelly our here." },
      { Gender = false, Time = 5.0,   MSG = "Look at that weather, ain't it beautiful" },
      { Gender = false, Time = 5.0,   MSG = "We're almost at our destination. I hope you're enjoying the ride so far." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"]     = { Gender = false, Time = false,  MSG = "Open Menu" },
    ["Inventory"]    = { Gender = false, Time = false,  MSG = "Inventory" },
    ["AdminMenu"]    = { Gender = false, Time = false,  MSG = "Admin Menu" },
    ["Zoning"]       = { Gender = false, Time = false,  MSG = "Zoning" },
    ["AutoMove"]     = { Gender = false, Time = false,  MSG = "Start Auto Move" },
    ["StopMove"]     = { Gender = false, Time = false,  MSG = "Stop Auto Move" },
    ["Unequipt"]     = { Gender = false, Time = false,  MSG = "Unequipt Weapon" },
    ["Error"]        = { Gender = false, Time = false,  MSG = "Error" },
    ["System"]       = { Gender = false, Time = false,  MSG = "System" },
    ["Initialize"]   = { Gender = false, Time = 3.0,    MSG = "Setting Menu Initialized!" },
    ["Initialize2"]  = { Gender = false, Time = 5.0,    MSG = "You can now open the settings menu with the left alt key!" },
    ["NoNextPage"]   = { Gender = false, Time = 3.0,    MSG = "No next page at the moment" },
    ["NoBackPage"]   = { Gender = false, Time = 3.0,    MSG = "No back page at the moment" },
    ["CoordsSave"]   = { Gender = false, Time = 5.0,    MSG = "You've saved your coordinates!" },
    ["ErrSkin"]      = { Gender = false, Time = 5.0,    MSG = "You've no skin to load! Please create a skin first!" },
    ["LogOut"]       = { Gender = false, Time = 5.0,    MSG = "Logging Out" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0,    MSG = "Saving your character's position" },
    ["MusicOn"]      = { Gender = false, Time = 5.0,    MSG = "All in game music has turned on!" },
    ["MusicOff"]     = { Gender = false, Time = 5.0,    MSG = "All in game music has turned off!" },
    ["MusicUnable"]  = { Gender = false, Time = 5.0,    MSG = "You've toggled music off in settings, unable to play music!" },
    ["VolSet"]       = { Gender = false, Time = 5.0,    MSG = "Volume set to %" },
    ["VolSet2"]      = { Gender = false, Time = 5.0,    MSG = "The volume will take effect on the next song!" },
    ["CharDel"]      = { Gender = false, Time = 10.0,   MSG = "Character deletion in progress" },
    ["DelDone"]      = { Gender = false, Time = 5.0,    MSG = "All character information is purged, we are bringing you back to the character selection menu" },
  },

  ["FastTravel"] = {
    ["ZoneName"]    = { Gender = false, Time = false,  MSG = "Fast Travel" },
    ["NPCName"]     = { Gender = false, Time = false,  MSG = "Dokus Travel Agency" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0,    MSG = "Have a pleasant trip, and thanks for traveling Dokus Industries" },
      { Gender = false, Time = 5.0,    MSG = "We hope you'll enjoy your trip, safe travels" },
      { Gender = false, Time = 5.0,    MSG = "We are glad you're choosing Dokus Industries to travel!" },
      { Gender = false, Time = 5.0,    MSG = "You can enter the boat at the dock, safe travels" },
    }

  },

  ["GunStore"] = {
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Arms Dealer" },
    ["BlipName"]      = { Gender = false, Time = false, MSG = "Gun Store" },
    ["NoMoney"]       = { Gender = false, Time = 3.0,   MSG = "You've not enough money!" },
    ["BoughtAmmo1"]   = { Gender = false, Time = 3.0,   MSG = "You've bought " },
    ["BoughtAmmo2"]   = { Gender = false, Time = 3.0,   MSG = " Ammo!" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Open Menu" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0,   MSG = "This item is currently not working as expected, and is not sold at the moment!" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Welcome, I hope you set into my store with clean shoes!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Yeee boy, welcome to my store, do I got some horses for you sir!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Oh look at that, hallo there. How is your day today sir?" },
      { Gender = 'Female', Time = 3.5, MSG = "Welcome, I hope you set into my store with clean shoes!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee boy, welcome to my store!. Oh, excuse me my lady, I was over existed." },
      { Gender = 'Female', Time = 3.5, MSG = "Oh look at that, hallo there. How is your day today my lady?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Thanks for your visit! Safe Travels my friend!" },
      { Gender = 'Male',   Time = 3.5, MSG = "I wish you a well day, may you enjoy your day sir!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Enjoy your day sir, thanks for your visit." },
      { Gender = 'Male',   Time = 3.5, MSG = "Good travels my friend, thanks for your visit" },
      { Gender = 'Female', Time = 3.5, MSG = "Thanks for your visit! Safe Travels my lady!" },
      { Gender = 'Female', Time = 3.5, MSG = "I wish you a well day, may you enjoy your day Ma'am!" },
      { Gender = 'Female', Time = 3.5, MSG = "Enjoy your day Ma'am, thanks for your visit." },
      { Gender = 'Female', Time = 3.5, MSG = "Good travels my lady, thanks for your visit" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "How may I help you good sir?" },
      { Gender = 'FeMale', Time = 3.5, MSG = "How may I help you my lady?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"]      = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"]      = { Gender = false, Time = false, MSG = "Loot Box" },
    ["OpenBox"]      = { Gender = false, Time = false, MSG = "Press ~color_green~E~q~ to open" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "You have no item selected to drop on the ground! First select an item!" },
    ["NotEnough"]    = { Gender = false, Time = false, MSG = "You do not have enough of this item in your inventory!" },
    ["NoAmount"]     = { Gender = false, Time = false, MSG = "You have no amount set in the amount parameter. Unable to drop your item!" },
    ["ToClose"]      = { Gender = false, Time = 5.0,   MSG = "You're to close to a different DropBox. Get closer or further away!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "I'am getting hungry, I need something to eat" },
      { Gender = false, Time = 5.0, MSG = "I'am so hungry, I really need something to eat" },
      { Gender = false, Time = 5.0, MSG = "I am feeling light headed, I need something to eat" },
      { Gender = false, Time = 5.0, MSG = "Oh my stomach hurts, I have not eaten yet" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "I'am so thirsty, I need something to drink" },
      { Gender = false, Time = 5.0, MSG = "My mouth feels dry, I need some water" },
      { Gender = false, Time = 5.0, MSG = "Uhg, if I do not drink soon, I might pass out" },
      { Gender = false, Time = 5.0, MSG = "Never in my life I felt this thirsty" },
    }
  },

  ["Scavenger"] = {
    ["Name"]        = { Gender = false, Time = false, MSG = "Scavenger"  },
    ["Rewards"]     = { Gender = false, Time = 3.0,   MSG = "You've have harvested"  },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0,   MSG = "This bush has already been harvested" },
    ["PromptHarv"]  = { Gender = false, Time = false, MSG = "Harvest" },
  },

  ["ScratchCards"] = {
    ["NPCName"]     = { Gender = false, Time = false, MSG = "Bank Worker"  },
    ["NoTickets"]   = { Gender = false, Time = 5.0,   MSG = "You've no lottery tickets in your possession!"  },
    ["WonCard"]     = { Gender = false, Time = 5.0,   MSG = "You've Won $" },
    ["WonTotal"]    = { Gender = false, Time = 5.0,   MSG = "You've won a grand total of $" },
    ["PromptHarv"]  = { Gender = false, Time = false, MSG = "Harvest" },
    ["BetterLuck"]  = { Gender = false, Time = false, MSG = "Better luck next time" },
    ["NoWin"]       = { Gender = false, Time = 5.0,   MSG = "Sadly you've not won anything this time" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"]    = { Gender = false, Time = false, MSG = "Dance" },
    ["MenuStop"]     = { Gender = false, Time = false, MSG = "Stop" },
    ["MenuNext"]     = { Gender = false, Time = false, MSG = "Next" },
    ["MenuBack"]     = { Gender = false, Time = false, MSG = "Back" },
    ["ShowFear"]     = { Gender = false, Time = false, MSG = "Show / Expres Fear" },
    ["StopTrumpet"]  = { Gender = false, Time = 5.0,   MSG = "You can stop playing by pressing Backspace - Spacebar or X"  },
    ["TrumpWarning"] = { Gender = false, Time = 5.0,   MSG = "If the trumpet stays stuck in your hand, reload your skin via the menu to fix it"  },
    ["ScenarioStop"] = { Gender = false, Time = 5.0,   MSG = "You can stop the scenario via typing [ /scenario stop ] in the chat" },
    ["SetStatus"]    = { Gender = false, Time = false, MSG = "Set your status!" },
  },

  ["Stables"] = {
    ["BlipName"]     = { Gender = false, Time = false, MSG = "Stable" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Stable Attendant" },
    ["HorseNamed"]   = { Gender = false, Time = 3.5,   MSG = "You've named your horse: " },
    ["HorseBought"]  = { Gender = false, Time = 5.0,   MSG = "Your horse is now ready! It was a pleasure doing business with you." },
    ["HorseStored"]  = { Gender = false, Time = 5.0,   MSG = "Your horse is stored, we will take great care of it!" },
    ["NameHorse"]    = { Gender = false, Time = false, MSG = "Name your horse" },
    ["NoMoney"]      = { Gender = false, Time = 3.5,   MSG = "You've not enough money to buy this horse I am afraid!" },
    ["HorseReady"]   = { Gender = false, Time = 5.0,   MSG = "You're horse is ready at his stable!" },
    ["FetchHorse"]   = { Gender = false, Time = 5.0,   MSG = "Sure thing, one moment let me get your horse!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0,   MSG = "Here you go sir, as healthy as it ever was!" },
    ["OpenMenu"]     = { Gender = false, Time = false, MSG = "Open Menu" },
    ["StoreHorse"]   = { Gender = false, Time = false, MSG = "Store Horse" },
    ["NoHorseName"]  = { Gender = false, Time = 5.0,   MSG = "Sorry, but you need to give your horse a name" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Welcome, I hope you set into my store with clean shoes!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Yeee boy, welcome to my store, do I got some horses for you sir!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Oh look at that, hallo there. How is your day today sir?" },
      { Gender = 'Female', Time = 5.0, MSG = "Welcome, I hope you set into my store with clean shoes!" },
      { Gender = 'Female', Time = 5.0, MSG = "Yeee boy, welcome to my store!. Oh, excuse me my lady, I was over existed." },
      { Gender = 'Female', Time = 5.0, MSG = "Oh look at that, hallo there. How is your day today my lady?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',     Time = 5.0, MSG = "Thanks for your visit! Safe Travels my friend!" },
      { Gender = 'Male',     Time = 5.0, MSG = "I wish you a well day, may you enjoy your day sir!" },
      { Gender = 'Male',     Time = 5.0, MSG = "Enjoy your day sir, thanks for your visit." },
      { Gender = 'Male',     Time = 5.0, MSG = "Good travels my friend, thanks for your visit" },
      { Gender = 'Female',   Time = 5.0, MSG = "Thanks for your visit! Safe Travels my lady!" },
      { Gender = 'Female',   Time = 5.0, MSG = "I wish you a well day, may you enjoy your day Ma'am!" },
      { Gender = 'Female',   Time = 5.0, MSG = "Enjoy your day Ma'am, thanks for your visit." },
      { Gender = 'Female',   Time = 5.0, MSG = "Good travels my lady, thanks for your visit" },
    }
  },

  ["Stores"] = {
    ["BlipName"]     = { Gender = false, Time = false, MSG = "General Store" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "General Store Worker" },
    ["MenuBuy"]      = { Gender = false, Time = false, MSG = "General Store (Buy)" },
    ["MenuSell"]     = { Gender = false, Time = false, MSG = "Inventory (Sell)" },
    ["ButtonBuy"]    = { Gender = false, Time = false, MSG = "Buy" },
    ["ButtonSell"]   = { Gender = false, Time = false, MSG = "Sell" },
    ["ButtonMan"]    = { Gender = false, Time = false, MSG = "Manage" },
    ["NotInInvent"]  = { Gender = false, Time = 3.5,   MSG = "You do not have this much in your inventory!" },
    ["Bought"]       = { Gender = false, Time = 3.5,   MSG = "You've bought " },
    ["Sold"]         = { Gender = false, Time = 3.5,   MSG = "You've sold " },
    ["NoMoney"]      = { Gender = false, Time = 3.5,   MSG = "You've not enough money to buys this / these amount of items!" },
    ["NoItem"]       = { Gender = false, Time = false, MSG = "You've have not selected an item yet!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Welcome, I hope you set into my store with clean shoes!" },
      { Gender = false, Time = 5.0, MSG = "Hey a customer, this is F**** awesome!" },
      { Gender = false, Time = 5.0, MSG = "Oh look at that, hallo there." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Thanks for your visit! Safe Travels!" },
      { Gender = false, Time = 5.0, MSG = "I wish you a well day, may you enjoy!" },
      { Gender = false, Time = 5.0, MSG = "Enjoy your day, thanks for your visit." },
      { Gender = false, Time = 5.0, MSG = "Good travels my friend, thanks for your visit" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "How may I help you?" },
      { Gender = false, Time = 2.5, MSG = "Ah you want to buy something huh?" },
      { Gender = false, Time = 2.5, MSG = "Is it something special you're looking for?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "How may I help you?" },
      { Gender = false, Time = 2.5, MSG = "I'm gonna pop some tags only got twenty dollars in my pocket!" },
      { Gender = false, Time = 2.5, MSG = "Ah you want to sell something huh?" },
      { Gender = false, Time = 2.5, MSG = "I take everthing from fish to bread, from bread to coffee. You name it!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "It was a pleasure to do business with you!" },
      { Gender = false, Time = 5.0, MSG = "I am glad I could have been of your service!" },
      { Gender = false, Time = 5.0, MSG = "I am glad that I was able to help you" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Interactable" }
  },

  ["WorldEdits"] = {
    ["GuarmaFishBar"] = { Gender = false, Time = false, MSG = "Guarma Fishers Bar" },
    ["GuarmaHideout"] = { Gender = false, Time = false, MSG = "Guarma Hideout" },
    ["GuarmaArena"]   = { Gender = false, Time = false, MSG = "Gladiator Arena" },
    ["MexicoBridge1"] = { Gender = false, Time = false, MSG = "The Mexico Bridge" },
    ["HangingBridge"] = { Gender = false, Time = false, MSG = "The Hanging Bridge" },
    ["NakotaNatCamp"] = { Gender = false, Time = false, MSG = "Nakota Native Camp" },
    ["ApacheNatCamp"] = { Gender = false, Time = false, MSG = "Apache Native Camp" },
    ["LakotaNatCamp"] = { Gender = false, Time = false, MSG = "Lakota Native Camp" },
    ["ArthurGraveSt"] = { Gender = false, Time = false, MSG = "Arthur's Gravestone" },
  },























}
