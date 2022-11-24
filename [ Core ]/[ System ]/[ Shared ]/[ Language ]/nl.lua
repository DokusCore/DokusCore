Lang['nl'] = {

  ["System"] = {
    ["Yes"]           = { Gender = false, Time = false, MSG = "Ja" },
    ["No"]            = { Gender = false, Time = false, MSG = "Nee" },
    ["Error"]         = { Gender = false, Time = false, MSG = "ERROR" },
    ["System"]        = { Gender = false, Time = false, MSG = "Systeem" },
    ["Success"]       = { Gender = false, Time = false, MSG = "Succes" },
    ["BLCheck"]       = { Gender = false, Time = false, MSG = "Blacklist controleren" },
    ["WLCheck"]       = { Gender = false, Time = false, MSG = "Witte lijst controleren" },
    ["SteamCheck"]    = { Gender = false, Time = false, MSG = "Stoomidentificatie controleren" },
    ["SteamConFail"]  = { Gender = false, Time = false, MSG = "We kunnen geen verbinding maken met de Steam API, zorg ervoor dat je Steam open had staan ​​voordat je RedM opende!" },
    ["UserBanned"]    = { Gender = false, Time = false, MSG = "Je bent verbannen van deze server." },
    ["InfoDiscord"]   = { Gender = false, Time = false, MSG = "Ga voor meer informatie naar onze Discord ".._DiscordInvite.."" },
    ["NoBanReason"]   = { Gender = false, Time = false, MSG = "Geen reden opgegeven" },
    ["WLPending"]     = { Gender = false, Time = false, MSG = "Your whitelist request is still pending..." },
    ["WLDenied"]      = { Gender = false, Time = false, MSG = "Uw whitelist-verzoek is geweigerd met reden:" },
    ["WLMade1"]       = { Gender = false, Time = false, MSG = "Om toegang te krijgen tot deze server moet je op de witte lijst staan." },
    ["WLMade2"]       = { Gender = false, Time = false, MSG = "Het verzoek op de witte lijst is automatisch gemaakt en is nu in behandeling." },
    ["NoCharFound"]   = { Gender = false, Time = false, MSG = "Kan deze actie niet uitvoeren, geen teken gevonden!" },
    ["Language"]      = { Gender = false, Time = false, MSG = "Taal" },
    ["LangNotEnter"]  = { Gender = false, Time = false, MSG = "De taalparameter was leeg!" },
    ["LanguageSetTo"] = { Gender = false, Time = false, MSG = "Klanttaal is ingesteld op " },
    ["LangNoSupport"] = { Gender = false, Time = 5.0,   MSG = "Deze taal wordt niet ondersteund!" },
    ["WelcomeTo"]     = { Gender = false, Time = false, MSG = "Welkom bij:" },
    ["InProgress"]    = { Gender = false, Time = false, MSG = "In uitvoering" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Open Menu" },
    ["InDevelopment"] = { Gender = false, Time = 5.0,   MSG = "Deze functie is in ontwikkeling!" },

    -- Steden
    ["Guarma"] = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"] = { Gender = false, Time = false, MSG = "Sisika Gevangenis" },
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"]          = { Gender = false, Time = false, MSG = "Bankieren" },
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Bankier Worker" },
    ["NPCBusy"]       = { Gender = false, Time = 3.5,   MSG = "Ik ben momenteel bezig met een andere burger, een moment alstublieft!" },
    ["NoAccount"]     = { Gender = false, Time = 3.5,   MSG = "Het spijt me, maar we hebben geen bankrekening geregistreerd in onze logboeken. U moet eerst een bankrekening openen voordat u er een kunt gebruiken!" },
    ["UseBankKey"]    = { Gender = false, Time = 3.5,   MSG = "Gebruik de bank" },
    ["AlAccount"]     = { Gender = false, Time = 3.5,   MSG = "U heeft al een bankrekening bij deze bank!" },
    ["AcCreation"]    = { Gender = false, Time = 3.5,   MSG = "U heeft uw accountkosten betaald, account wordt aangemaakt!" },
    ["AcCreated"]     = { Gender = false, Time = 3.5,   MSG = "Uw bankrekening is aangemaakt! U kunt nu uw bankrekening openen." },
    ["NoDepMoney"]     = { Gender = false, Time = 3.5,   MSG = "Je hebt niet genoeg geld om deze storting te doen!" },
    ["NoDepGold"]     = { Gender = false, Time = 3.5,   MSG = "Je hebt niet genoeg goud om deze storting te doen!" },
    ["NoWitMoney"]    = { Gender = false, Time = 3.5,   MSG = "Je hebt niet genoeg geld om dit op te nemen!" },
    ["NoWitGold"]      = { Gender = false, Time = 3.5,   MSG = "Je hebt niet genoeg goud om dit te laten opnemen!" },
    ["DepMinMoney"]   = { Gender = false, Time = 3.5,   MSG = "Het stortingsbedrag moet hoger zijn dan $0,01 cent!" },
    ["DepMinGold"]    = { Gender = false, Time = 3.5,   MSG = "Het stortingsbedrag moet groter zijn dan 0,01 goud!" },
    ["WitMinMoney"]   = { Gender = false, Time = 3.5,   MSG = "Het stortingsbedrag moet hoger zijn dan $0,01 cent!" },
    ["WitMinGold"]    = { Gender = false, Time = 3.5,   MSG = "Het stortingsbedrag moet groter zijn dan 0,01 goud!" },
    ["ToFast"]        = { Gender = false, Time = 3.5,   MSG = "Het spijt me, maar ik kan maar 1 transactie tegelijk doen. Een moment alstublieft!" },
    ["DepDoneMoney"]  = { Gender = false, Time = 3.5,   MSG = "U heeft een storting gedaan van $" },
    ["DepDoneGold"]   = { Gender = false, Time = 3.5,   MSG = "U heeft een aanbetaling gedaan van " },
    ["WitDoneMoney"]  = { Gender = false, Time = 3.5,   MSG = "U heeft een geldopname gedaan van $" },
    ["WitDoneGold"]   = { Gender = false, Time = 3.5,   MSG = "U heeft een opname gedaan van " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Welkom bij onze bank, waarmee kan ik u van dienst zijn?" },
      { Gender = false, Time = false, MSG = "Welkom, hoe kan ik u helpen?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Bedankt voor het langskomen, een fijne dag verder!" },
      { Gender = false, Time = false, MSG = "Ik wilde je graag helpen vandaag, tot de volgende keer!" },
      { Gender = false, Time = false, MSG = "Als ik je nog ergens mee kan helpen, laat het me weten!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0, MSG = "Geen teken geselecteerd!" },
  },

  ["Clothing"] = {
    ["Name"]           = { Gender = false, Time = false, MSG = "Kledingwinkel" },
    ["NPCName"]        = { Gender = false, Time = false, MSG = "Kleermaker" },
    ["NPCBusy"]        = { Gender = false, Time = 3.5,   MSG = "Ik ben momenteel bezig met een andere klant, wacht even. Ik kom zo snel mogelijk bij u!" },
    ["NeedToGo"]       = { Gender = false, Time = 3.5,   MSG = "Ik heb meer te doen en meer klanten te bedienen, laat het me weten als je meer hulp nodig hebt" },
    ["DressingRoom"]   = { Gender = false, Time = false, MSG = "Kleedkamer" },
    ["Confirmation"]   = { Gender = false, Time = false, MSG = "Bevestiging" },
    ["ConfirmSwitch"]  = { Gender = false, Time = 3.5,   MSG = "Wilt u van kleding wisselen?" },
    ["Pay"]            = { Gender = false, Time = false, MSG = "Betalen" },
    ["OpenMenu"]       = { Gender = false, Time = false, MSG = "Open Menu" },
    ["Outfits"]        = { Gender = false, Time = false, MSG = "Outfits" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Welkom, ik hoop dat je mijn winkel binnengaat met schone schoenen!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Yeee jongen, welkom in mijn winkel meneer, ik ben blij je te zien!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Oh kijk eens, hallo daar. Hoe is uw dag vandaag meneer?" },
      { Gender = 'Female', Time = 3.5, MSG = "Welkom, ik hoop dat je mijn winkel binnengaat met schone schoenen!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee jongen, welkom in mijn winkel! Oh, excuseer me, mijn dame, ik was te oud." },
      { Gender = 'Female', Time = 3.5, MSG = "Oh kijk eens, hallo daar. Hoe is je dag vandaag, mijn dame?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Bedankt voor uw bezoek! Veilig reizen mijn vriend!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Ik wens u een fijne dag, geniet van uw dag meneer!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Geniet van uw dag meneer, bedankt voor uw bezoek." },
      { Gender = 'Male',   Time = 3.5, MSG = "Goede reis mijn vriend, bedankt voor uw bezoek" },
      { Gender = 'Female', Time = 3.5, MSG = "Bedankt voor uw bezoek! Veilige reis mijn dame!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ik wens u een fijne dag, geniet van uw dag meFemale!" },
      { Gender = 'Female', Time = 3.5, MSG = "Geniet van uw dag meFemale, bedankt voor uw bezoek." },
      { Gender = 'Female', Time = 3.5, MSG = "Goede reis, meFemale, bedankt voor uw bezoek" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3, MSG = "Hoe kan ik u helpen meneer?" },
      { Gender = 'Female', Time = 3, MSG = "Hoe kan ik u helpen meFemale?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Natuurlijk kan ik u helpen, beste meneer. Loop alstublieft naar de zijkant van de toonbank en ik zal zo snel mogelijk bij u zijn." },
      { Gender = 'Male',   Time = 3.5, MSG = "Ah ja, kleding. Meneer, u bent hier aan het juiste adres, volg mij alstublieft." },
      { Gender = 'Female', Time = 3.5, MSG = "Zoals u wilt, meFemale, zal ik u met veel plezier helpen!" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Ah ja, kleding. MeFemale, u bent hier aan het juiste adres, volg mij alstublieft." },
    },

    ["Reactions"] = {
      { Gender = 'Male',   Time = 5.0,  MSG = "Dat past goed meneer" },
      { Gender = 'Male',   Time = 5.0,  MSG = "Oh kijk eens, je zo zien maakt me jaloers." },
      { Gender = 'Male',   Time = 5.0,  MSG = "Oh jongen, kijk eens, het is geweldig." },
      { Gender = 'Male',   Time = 5.0,  MSG = "Het is het beste wat we in de stad hebben, beter vind je nergens anders!" },
      { Gender = 'Male',   Time = 5.0,  MSG = "Zo mooi, zo speciaal, en ik ben degene die het voor je kan maken, als je dat wilt." },
      { Gender = 'Male',   Time = 5.0,  MSG = "Dat staat je geweldig" },
      { Gender = 'Male',   Time = 5.0,  MSG = "Mijn god, want het is speciaal voor jou gemaakt!" },
      { Gender = 'Female', Time = 5.0,  MSG = "Dat past goed bij u meneer" },
      { Gender = 'Female', Time = 5.0,  MSG = "Oh kijk eens, je zo zien maakt me jaloers." },
      { Gender = 'Female', Time = 5.0,  MSG = "Oh jongen, kijk eens, het is geweldig." },
      { Gender = 'Female', Time = 5.0,  MSG = "Het is de beste die we in de stad hebben, beter vind je nergens anders!" },
      { Gender = 'Female', Time = 5.0,  MSG = "Zo mooi, zo speciaal, en ik ben degene die het voor je kan maken, als je dat wilt." },
      { Gender = 'Female', Time = 5.0,  MSG = "Dat staat je geweldig" },
      { Gender = 'Female', Time = 5.0,  MSG = "Mijn god, want het is speciaal voor jou gemaakt!" },
    }
  },

  ["Skins"] = {
    ['Male']       = { Gender = false, Time = false, MSG = "Male" },
    ['Female']     = { Gender = false, Time = false, MSG = "Female" },
    ['Select']     = { Gender = false, Time = false, MSG = "Select" },
    ["SetGender"]  = { Gender = false, Time = false, MSG = "Kies Gender" },
    ["ErrAge"]     = { Gender = false, Time = 3.0,   MSG = "Je hebt de leefTime van je personages niet ingesteld!" },
    ["ErrName"]    = { Gender = false, Time = 3.0,   MSG = "Je hebt de naam van je personage niet ingesteld!" },
    ["ErrNatio"]   = { Gender = false, Time = 3.0,   MSG = "Je hebt de nationaliteit van je karakters niet ingesteld!" },
    ["ErrTorso"]   = { Gender = false, Time = 3.0,   MSG = "Je hebt het torsotype van je personage niet ingesteld!" },
    ["ErrLegs"]    = { Gender = false, Time = 3.0,   MSG = "Je hebt het legtype van je personage niet ingesteld!" },
    ["ErrHead"]    = { Gender = false, Time = 3.0,   MSG = "Je hebt het hoofdtype van je personage niet ingesteld!" },
    ["ErrEyes"]    = { Gender = false, Time = 3.0,   MSG = "Je hebt het oogtype van je personage niet ingesteld!" },
    ["ErrHair"]    = { Gender = false, Time = 3.0,   MSG = "Je hebt het haartype van je personage niet ingesteld!" },
  },

  ["Spawner"] = {
    ['Cutscene']    = { Gender = false, Time = false, MSG = "Cutscene" },
    ["DriverName"]  = { Gender = false, Time = false, MSG = "StageCoach Driver" },
    ["MusicOn"]     = { Gender = false, Time = 5.0,   MSG = "Je hebt de muziek uitgezet" },
    ["MusicOff"]    = { Gender = false, Time = 5.0,   MSG = "Je hebt de muziek aangezet" },
    ["ErrStepOut"]  = { Gender = false, Time = 5.0,   MSG = "Je kunt niet naar buiten stappen in de cutscene." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Stop | Start muziek" },
    ["StepOut"]     = { Gender = false, Time = false, MSG = "Stap uit"},
    ["Cinema"]      = { Gender = false, Time = false, MSG = "Bioscoop" },

    ["Welcome"] = {
      { Gender = false, Time = 5.0,   MSG = "Welkom in ons graafschap, veel plezier met je verblijf!" },
      { Gender = false, Time = 5.0,   MSG = "Ik weet zeker dat je slim bent, omdat je voor deze provincie kiest! Haha, welkom mijn vriend!" },
    },

    ["Advice"] = {
      { Gender = false, Time = 5.0,   MSG = "Ik breng je naar een fijne kleermaker die je aan nieuwe kleding kan helpen" },
      { Gender = false, Time = 5.0,   MSG = "Na zo'n lange reis is een fijne kleermaker precies wat je nodig hebt. Laat mij de eer op je nemen en je naar een kleermaker brengen." },
    },

    ["Tailor"] = {
      { Gender = false, Time = 5.0,   MSG = "Er is een kleermaker in de buurt, ik zou overwegen nieuwe kleding te kopen." },
      { Gender = false, Time = 5.0,   MSG = "Je vindt een kleermaker om de hoek, ik zou overwegen nieuwe kleding te kopen." },
    },

    ["Goodbye"] = {
      { Gender = false, Time = 5.0,   MSG = "Tot ziens mijn vriend, het was leuk je te ontmoeten! Geniet van je verblijf!" },
      { Gender = false, Time = 5.0,   MSG = "Het was geweldig je te ontmoeten, veel plezier met je verblijf!" },
      { Gender = false, Time = 5.0,   MSG = "Dat is dan $ 12,25... hah grapje, geniet van je verblijf mijn vriend!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0,   MSG = "Het is een leuk graafschap waar je bent aangekomen, er is veel te doen in de stad, misschien vind je het leuk." },
      { Gender = false, Time = 7.0, MSG = "Is het niet grappig hoe het weer soms kan zijn, het kan als een gek omslaan! Je wilt echt niet worden opgehoest in een van die stormen, dat zeg ik je ." },
      { Gender = false, Time = 5.0,   MSG = "Het lijkt erop dat je al geruime Time op reis bent. Ik hoop dat je reis zonder problemen is verlopen." },
      { Gender = false, Time = 5.0,   MSG = "Ben ik het niet alleen, of stinkt het erg hier." },
      { Gender = false, Time = 5.0,   MSG = "Kijk eens naar dat weer, is het niet prachtig" },
      { Gender = false, Time = 5.0,   MSG = "We zijn bijna op onze bestemming. Ik hoop dat je tot nu toe geniet van de rit." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"]     = { Gender = false, Time = false, MSG = "Open Menu" },
    ["Inventory"]    = { Gender = false, Time = false, MSG = "Voorraad" },
    ["AdminMenu"]    = { Gender = false, Time = false, MSG = "Admin Menu" },
    ["Zoning"]       = { Gender = false, Time = false, MSG = "Zoning" },
    ["AutoMove"]     = { Gender = false, Time = false, MSG = "Start Auto Move" },
    ["StopMove"]     = { Gender = false, Time = false, MSG = "Stop Auto Move" },
    ["Unequipt"]     = { Gender = false, Time = false, MSG = "Niet uitgerust wapen" },
    ["Error"]        = { Gender = false, Time = false, MSG = "Fout" },
    ["System"]       = { Gender = false, Time = false, MSG = "Systeem" },
    ["Initialize"]   = { Gender = false, Time = 3.0, MSG = "Instellingenmenu geïnitialiseerd!" },
    ["Initialize2"]  = { Gender = false, Time = 5.0,   MSG = "U kunt nu het instellingenmenu openen met de linker alt-toets!" },
    ["NoNextPage"]   = { Gender = false, Time = 3.0, MSG = "No next page at the moment" },
    ["NoBackPage"]   = { Gender = false, Time = 3.0, MSG = "No back page at the moment" },
    ["CoordsSave"]   = { Gender = false, Time = 5.0,   MSG = "Je hebt je coördinaten opgeslagen!" },
    ["ErrSkin"]      = { Gender = false, Time = 5.0,   MSG = "Je hebt geen skin om te laden! Maak eerst een skin!" },
    ["LogOut"]       = { Gender = false, Time = 5.0,   MSG = "Uitloggen" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0,   MSG = "De positie van je personage opslaan" },
    ["MusicOn"]      = { Gender = false, Time = 5.0,   MSG = "Alle muziek in het spel is ingeschakeld!" },
    ["MusicOff"]     = { Gender = false, Time = 5.0,   MSG = "Alle muziek in het spel is uitgeschakeld!" },
    ["MusicUnable"]  = { Gender = false, Time = 5.0,   MSG = "Je hebt muziek uitgeschakeld in de instellingen, kan geen muziek afspelen!" },
    ["VolSet"]       = { Gender = false, Time = 5.0,   MSG = "Volume ingesteld op %" },
    ["VolSet2"]      = { Gender = false, Time = 5.0,   MSG = "Het volume gaat in bij het volgende nummer!" },
    ["CharDel"]      = { Gender = false, Time = 10.0, MSG = "Tekenverwijdering bezig" },
    ["DelDone"]      = { Gender = false, Time = 5.0,   MSG = "Alle karakterinformatie is gewist, we brengen je terug naar het karakterselectiemenu" },
  },

  ["FastTravel"] = {
    ["ZoneName"]     = { Gender = false, Time = false, MSG = "Fast Travel" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Dokus Travel Agency" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0,   MSG = "Prettige reis en bedankt voor het reizen Dokus Industries" },
      { Gender = false, Time = 5.0,   MSG = "We hope you'll enjoy your trip, safe travels" },
      { Gender = false, Time = 5.0,   MSG = "We zijn blij dat je voor Dokus Industries kiest om te reizen!" },
      { Gender = false, Time = 5.0,   MSG = "U kunt de boot betreden bij de kade, veilige reis" },
    }

  },

  ["GunStore"] = {
    ["NPCName"]        = { Gender = false, Time = false, MSG = "Wapenhandelaar" },
    ["BlipName"]       = { Gender = false, Time = false, MSG = "Gun Store" },
    ["NoMoney"]        = { Gender = false, Time = 3.0, MSG = "Je hebt niet genoeg geld!" },
    ["BoughtAmmo1"]    = { Gender = false, Time = 3.0, MSG = "Je hebt gekocht " },
    ["BoughtAmmo2"]    = { Gender = false, Time = 3.0, MSG = "Ammo!" },
    ["OpenMenu"]       = { Gender = false, Time = false, MSG = "Open Menu" },
    ['ErrNotWorking']  = { Gender = false, Time = 5.0,   MSG = "Dit artikel werkt momenteel niet zoals verwacht en wordt momenteel niet verkocht!" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Welkom, ik hoop dat je mijn winkel binnengaat met schone schoenen!" },
      { Gender = 'Male', Time = 3.5, MSG = "Yeee jongen, welkom in mijn winkel meneer!" },
      { Gender = 'Male', Time = 3.5, MSG = "Oh kijk eens, hallo daar. Hoe is uw dag vandaag meneer?" },
      { Gender = 'Female', Time = 3.5, MSG = "Welkom, ik hoop dat je mijn winkel binnengaat met schone schoenen!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee jongen, welkom in mijn winkel! Oh, excuseer me, mijn dame, ik was te oud." },
      { Gender = 'Female', Time = 3.5, MSG = "Oh kijk eens, hallo daar. Hoe is je dag vandaag, mijn dame?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Bedankt voor uw bezoek! Veilig reizen mijn vriend!" },
      { Gender = 'Male', Time = 3.5, MSG = "Ik wens u een fijne dag, geniet van uw dag meneer!" },
      { Gender = 'Male', Time = 3.5, MSG = "Geniet van uw dag meneer, bedankt voor uw bezoek." },
      { Gender = 'Male', Time = 3.5, MSG = "Goede reis mijn vriend, bedankt voor uw bezoek" },
      { Gender = 'Female', Time = 3.5, MSG = "Bedankt voor uw bezoek! Veilige reis mijn dame!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ik wens u een fijne dag, geniet van uw dag meFemale!" },
      { Gender = 'Female', Time = 3.5, MSG = "Geniet van uw dag meFemale, bedankt voor uw bezoek." },
      { Gender = 'Female', Time = 3.5, MSG = "Goede reis, meFemale, bedankt voor uw bezoek" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Waar kan ik u mee helpen meneer?" },
      { Gender = 'Female', Time = 3.5, MSG = "Hoe kan ik u helpen meFemale?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"]       = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"]       = { Gender = false, Time = false, MSG = "Loot Box" },
    ["OpenBox"]       = { Gender = false, Time = false, MSG = "Druk op ~color_green~E~q~ om te openen" },
    ["NoSelectDrop"]  = { Gender = false, Time = false, MSG = "Je hebt geen item geselecteerd om op de grond te laten vallen! Selecteer eerst een item!" },
    ["NotEnough"]     = { Gender = false, Time = false, MSG = "Je hebt niet genoeg van dit item in je inventaris!" },
    ["NoAmount"]      = { Gender = false, Time = false, MSG = "U heeft geen bedrag ingesteld in de parameter voor het bedrag. Kan uw item niet laten vallen!" },
    ["ToClose"]       = { Gender = false, Time = 5.0,   MSG = "Je staat te dicht bij een andere DropBox. Ga dichterbij of verder weg!" },
  },

  ["Metabolism"] = {
    ["HungerTxt"] = {
      { Gender = false, Time = 5.0,   MSG = "Ik krijg honger, ik heb iets te eten nodig" },
      { Gender = false, Time = 5.0,   MSG = "Ik heb zo'n honger, ik heb echt iets te eten nodig" },
      { Gender = false, Time = 5.0,   MSG = "Ik voel me licht in het hoofd, ik heb iets te eten nodig" },
      { Gender = false, Time = 5.0,   MSG = "Oh mijn buik doet pijn, ik heb nog niet gegeten" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0,   MSG = "Ik heb zo'n dorst, ik heb iets te drinken nodig" },
      { Gender = false, Time = 5.0,   MSG = "Mijn mond voelt droog aan, ik heb wat water nodig" },
      { Gender = false, Time = 5.0,   MSG = "Uhg, als ik niet snel drink, val ik misschien flauw" },
      { Gender = false, Time = 5.0,   MSG = "Nooit in mijn leven heb ik zoveel dorst gevoeld" },
    }
  },

  ["Scavenger"] = {
    ["Name"]         = { Gender = false, Time = false, MSG = "Scavenger" },
    ["Rewards"]      = { Gender = false, Time = 3.0, MSG = "Je hebt geoogst" },
    ["AlreadyHarv"]  = { Gender = false, Time = 3.0, MSG = "Deze struik is al geoogst" },
    ["PromptHarv"]   = { Gender = false, Time = false, MSG = "Oogst" },
  },

  ["ScratchCards"] = {
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Bankmedewerker"},
    ["NoTickets"]    = { Gender = false, Time = 5.0,   MSG = "U heeft geen loten in uw bezit!" },
    ["WonCard"]      = { Gender = false, Time = 5.0,   MSG = "You've Won $" },
    ["WonTotal"]     = { Gender = false, Time = 5.0,   MSG = "Je hebt een eindtotaal van $ gewonnen" },
    ["PromptHarv"]   = { Gender = false, Time = false, MSG = "Oogst" },
    ["BetterLuck"]   = { Gender = false, Time = false, MSG = "Volgende keer meer geluk" },
    ["NoWin"]        = { Gender = false, Time = 5.0,   MSG = "Helaas heb je deze keer niets gewonnen" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"]     = { Gender = false, Time = false, MSG = "Dans" },
    ["MenuStop"]      = { Gender = false, Time = false, MSG = "Stop" },
    ["MenuNext"]      = { Gender = false, Time = false, MSG = "Volgende" },
    ["MenuBack"]      = { Gender = false, Time = false, MSG = "Terug" },
    ["ShowFear"]      = { Gender = false, Time = false, MSG = "Laat zien / spreek angst uit" },
    ["StopTrumpet"]   = { Gender = false, Time = 5.0,   MSG = "Je kunt stoppen met spelen door op Backspace - Spatiebalk of X te drukken" },
    ["TrumpWarning"]  = { Gender = false, Time = 5.0,   MSG = "Als de trompet in je hand blijft steken, herlaad dan je skin via het menu om hem te repareren" },
    ["ScenarioStop"]  = { Gender = false, Time = 5.0,   MSG = "Je kunt het scenario stoppen door [ /scenario stop ] in de chat te typen" },
    ["SetStatus"]     = { Gender = false, Time = false, MSG = "Stel uw status in!" },
  },

  ["Stables"] = {
    ["BlipName"]      = { Gender = false, Time = false, MSG = "Stabiel" },
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Stable Attendant" },
    ["HorseNamed"]    = { Gender = false, Time = 3.5, MSG = "Je hebt je paard een naam gegeven: " },
    ["HorseBought"]   = { Gender = false, Time = 5.0,   MSG = "Je paard is nu klaar! Het was een genoegen om zaken met je te doen." },
    ["HorseStored"]   = { Gender = false, Time = 5.0,   MSG = "Uw paard is gestald, wij zullen er goed voor zorgen!" },
    ["NameHorse"]     = { Gender = false, Time = false, MSG = "Geef je paard een naam" },
    ["NoMoney"]       = { Gender = false, Time = 3.5, MSG = "Je hebt niet genoeg geld om dit paard te kopen, vrees ik!" },
    ["HorseReady"]    = { Gender = false, Time = 5.0,   MSG = "Je paard staat klaar op stal!" },
    ["FetchHorse"]    = { Gender = false, Time = 5.0,   MSG = "Zeker, een moment laat me je paard halen!" },
    ["HorseFetched"]  = { Gender = false, Time = 5.0,   MSG = "Alsjeblieft meneer, zo gezond als het ooit was!" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Open Menu" },
    ["StoreHorse"]    = { Gender = false, Time = false, MSG = "Store Horse" },
    ["NoHorseName"]   = { Gender = false, Time = 5.0,   MSG = "Sorry, maar je moet je paard een naam geven" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 5.0,   MSG = "Welkom, ik hoop dat je met schone schoenen mijn winkel binnenstapt!" },
      { Gender = 'Male', Time = 5.0,   MSG = "Yeee jongen, welkom in mijn winkel, heb ik wat paarden voor u meneer!" },
      { Gender = 'Male', Time = 5.0,   MSG = "Oh kijk eens, hallo daar. Hoe is uw dag vandaag meneer?" },
      { Gender = 'Female', Time = 5.0,   MSG = "Welkom, ik hoop dat je met schone schoenen mijn winkel binnenstapt!" },
      { Gender = 'Female', Time = 5.0,   MSG = "Yeee jongen, welkom in mijn winkel! Oh, neem me niet kwalijk, meFemale, ik was te oud." },
      { Gender = 'Female', Time = 5.0,   MSG = "Oh kijk eens, hallo daar. Hoe is je dag vandaag, mijn dame?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 5.0,   MSG = "Bedankt voor uw bezoek! Veilig reizen mijn vriend!" },
      { Gender = 'Male', Time = 5.0,   MSG = "Ik wens u een fijne dag, geniet van uw dag meneer!" },
      { Gender = 'Male', Time = 5.0,   MSG = "Geniet van uw dag meneer, bedankt voor uw bezoek." },
      { Gender = 'Male', Time = 5.0,   MSG = "Goede reis mijn vriend, bedankt voor uw bezoek" },
      { Gender = 'Female', Time = 5.0,   MSG = "Bedankt voor uw bezoek! Safe Travels my lady!" },
      { Gender = 'Female', Time = 5.0,   MSG = "Ik wens u een fijne dag, geniet van uw dag meFemale!" },
      { Gender = 'Female', Time = 5.0,   MSG = "Geniet van uw dag meFemale, bedankt voor uw bezoek." },
      { Gender = 'Female', Time = 5.0,   MSG = "Goede reis, meFemale, bedankt voor uw bezoek" },
    }
  },

  ["Stores"] = {
    ["BlipName"]      = { Gender = false, Time = false, MSG = "Algemene winkel" },
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Algemene winkelmedewerker" },
    ["MenuBuy"]       = { Gender = false, Time = false, MSG = "Algemene winkel (kopen)" },
    ["MenuSell"]      = { Gender = false, Time = false, MSG = "Voorraad (Verkopen)" },
    ["ButtonBuy"]     = { Gender = false, Time = false, MSG = "Kopen" },
    ["ButtonSell"]    = { Gender = false, Time = false, MSG = "Verkopen" },
    ["ButtonMan"]     = { Gender = false, Time = false, MSG = "Beheren" },
    ["NotInInvent"]   = { Gender = false, Time = 3.5, MSG = "Je hebt niet zoveel in je inventaris!" },
    ["Bought"]        = { Gender = false, Time = 3.5, MSG = "U hebt gekocht "},
    ["Sold"]          = { Gender = false, Time = 3.5, MSG = "Je hebt verkocht "},
    ["NoMoney"]       = { Gender = false, Time = 3.5, MSG = "Je hebt niet genoeg geld om dit/dit aantal items te kopen!" },
    ["NoItem"]        = { Gender = false, Time = false, MSG = "Je hebt nog geen item geselecteerd!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0,   MSG = "Welkom, ik hoop dat je mijn winkel binnenstapt met schone schoenen!" },
      { Gender = false, Time = 5.0,   MSG = "Hey een klant, dit is F**** geweldig!" },
      { Gender = false, Time = 5.0,   MSG = "Oh kijk eens, hallo daar." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0,   MSG = "Bedankt voor uw bezoek! Safe Travels!" },
      { Gender = false, Time = 5.0,   MSG = "Ik wens je een fijne dag, veel plezier!" },
      { Gender = false, Time = 5.0,   MSG = "Geniet van je dag, bedankt voor je bezoek." },
      { Gender = false, Time = 5.0,   MSG = "Goede reis mijn vriend, bedankt voor je bezoek" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2, 5, MSG = "Hoe kan ik u helpen?" },
      { Gender = false, Time = 2, 5, MSG = "Ah, je wilt iets kopen, hè?" },
      { Gender = false, Time = 2.5, MSG = "Is het iets speciaals waar je naar op zoek bent?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2, 5, MSG = "Hoe kan ik u helpen?" },
      { Gender = false, Time = 2.5, MSG = "Ik ga een paar tags tevoorschijn halen, ik heb maar twintig dollar op zak!" },
      { Gender = false, Time = 2.5, MSG = "Ah, je wilt toch iets verkopen?" },
      { Gender = false, Time = 2.5, MSG = "Ik neem alles mee, van vis tot brood, van brood tot koffie. Noem maar op!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0,   MSG = "Het was een genoegen om zaken met u te doen!" },
      { Gender = false, Time = 5.0,   MSG = "Ik ben blij dat ik u van dienst kon zijn!" },
      { Gender = false, Time = 5.0,   MSG = "Ik ben blij dat ik je heb kunnen helpen" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Interactie" }
  },

  ["WorldEdits"] = {
    ["GuarmaFishBar"]  = { Gender = false, Time = false, MSG = "Guarma Fishers Bar" },
    ["GuarmaHideout"]  = { Gender = false, Time = false, MSG = "Guarma Hideout" },
    ["GuarmaArena"]    = { Gender = false, Time = false, MSG = "Gladiator Arena" },
    ["MexicoBridge1"]  = { Gender = false, Time = false, MSG = "The Mexico Bridge" },
    ["HangingBridge"]  = { Gender = false, Time = false, MSG = "The Hanging Bridge" },
    ["NakotaNatCamp"]  = { Gender = false, Time = false, MSG = "Nakota Native Camp" },
    ["ApacheNatCamp"]  = { Gender = false, Time = false, MSG = "Apache Native Camp" },
    ["LakotaNatCamp"]  = { Gender = false, Time = false, MSG = "Lakota Native Camp" },
    ["ArthurGraveSt"]  = { Gender = false, Time = false, MSG = "Arthur's grafsteen" },
  },























}
