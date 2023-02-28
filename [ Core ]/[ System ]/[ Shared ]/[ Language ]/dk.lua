Lang['dk'] = {

  ["System"] = {
    ["Yes"] = { Gender = false, Time = false, MSG = "Ja" },
    ["No"] = { Gender = false, Time = false, MSG = "Nej" },
    ["Error"] = { Gender = false, Time = false, MSG = "FEJL" },
    ["System"] = { Gender = false, Time = false, MSG = "System" },
    ["Success"] = { Gender = false, Time = false, MSG = "Succes" },
    ["BLCheck"] = { Gender = false, Time = false, MSG = "Kontrollerer sortliste" },
    ["WLCheck"] = { Gender = false, Time = false, MSG = "Kontrollerer hvidliste" },
    ["SteamCheck"] = { Gender = false, Time = false, MSG = "Kontrollerer Steam-identifikation" },
    ["SteamConFail"] = { Gender = false, Time = false, MSG = "Vi kan ikke oprette forbindelse til Steam API. Sørg for, at du havde Steam åben, før du åbner RedM!" },
    ["UserBanned"] = { Gender = false, Time = false, MSG = "Du er blevet udelukket fra denne server." },
    ["InfoDiscord"] = { Gender = false, Time = false, MSG = "For mere information besøg vores Discord ".._DiscordInvite.."" },
    ["NoBanReason"] = { Gender = false, Time = false, MSG = "Ingen grund angivet" },
    ["WLPending"] = { Gender = false, Time = false, MSG = "Din anmodning om hvidliste afventer stadig..." },
    ["WLDenied"] = { Gender = false, Time = false, MSG = "Din anmodning om hvidliste er blevet afvist med grund:" },
    ["WLMade1"] = { Gender = false, Time = false, MSG = "For at få adgang til denne server skal du være hvidlistet." },
    ["WLMade2"] = { Gender = false, Time = false, MSG = "Anmodningen om hvidliste er automatisk blevet foretaget og afventer nu." },
    ["NoCharFound"] = { Gender = false, Time = false, MSG = "Kan ikke udføre denne handling, ingen tegn fundet!" },
    ["Language"] = { Gender = false, Time = false, MSG = "Sprog" },
    ["LangNotEnter"] = { Gender = false, Time = false, MSG = "Sprogparameteren var tom!" },
    ["LanguageSetTo"] = { Gender = false, Time = false, MSG = "Kundens sprog er indstillet til " },
    ["LangNoSupport"] = { Gender = false, Time = 5.0,   MSG = "Dette sprog er ikke understøttet!" },
    ["WelcomeTo"] = { Gender = false, Time = false, MSG = "Velkommen til:" },
    ["InProgress"] = { Gender = false, Time = false, MSG = "I gang" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Åbn menu" },
    ["InDevelopment"] = { Gender = false, Time = 5.0, MSG = "Denne funktion er under udvikling!" },

    -- Byer
    ["Guarma"] = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"] = { Gender = false, Time = false, MSG = "Sisika Fængsel" },
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Banking" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Bankmedarbejder" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "Jeg har i øjeblikket travlt med en anden borger, et øjeblik tak!" },
    ["NoAccount"] = { Gender = false, Time = 3.5, MSG = "Beklager, men vi har ingen bankkonto registreret i vores logfiler. Du skal først åbne en bankkonto, før du kan bruge en!" },
    ["UseBankKey"] = { Gender = false, Time = 3.5, MSG = "Brug banken" },
    ["AlAccount"] = { Gender = false, Time = 3.5, MSG = "Du har allerede en bankkonto i denne bank!" },
    ["AcCreation"] = { Gender = false, Time = 3.5, MSG = "Du har betalt dit kontogebyr, konto bliver oprettet!" },
    ["AcCreated"] = { Gender = false, Time = 3.5, MSG = "Din bankkonto er oprettet! Du kan nu åbne din bankkonto." },
    ["NoDepMoney"] = { Gender = false, Time = 3.5, MSG = "Du har ikke penge nok til at foretage denne indbetaling!" },
    ["NoDepGold"] = { Gender = false, Time = 3.5, MSG = "Du har ikke nok guld til at foretage denne indbetaling!" },
    ["NoWitMoney"] = { Gender = false, Time = 3.5, MSG = "Du har ikke penge nok til at foretage denne hævning!" },
    ["NoWitGold"] = { Gender = false, Time = 3.5, MSG = "Du har ikke nok guld til at gøre dette tilbage!" },
    ["DepMinMoney"] = { Gender = false, Time = 3.5, MSG = "Indbetalingsbeløbet skal være større end $0,01 cent!" },
    ["DepMinGold"] = { Gender = false, Time = 3.5, MSG = "Indbetalingsbeløbet skal være større end 0,01 guld!" },
    ["WitMinMoney"] = { Gender = false, Time = 3.5, MSG = "Indbetalingsbeløbet skal være større end $0,01 cent!" },
    ["WitMinGold"] = { Gender = false, Time = 3.5, MSG = "Indbetalingsbeløbet skal være større end 0,01 guld!" },
    ["ToFast"] = { Gender = false, Time = 3.5, MSG = "Beklager, men jeg kan kun udføre 1 transaktion ad gangen. Et øjeblik tak!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Du har foretaget en indbetaling på $" },
    ["DepDoneGold"] = { Gender = false, Time = 3.5, MSG = "Du har foretaget en indbetaling på " },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Du har hævet $" },
    ["WitDoneGold"] = { Gender = false, Time = 3.5, MSG = "Du har foretaget en tilbagetrækning af " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Velkommen til vores bank, hvordan kan jeg hjælpe?" },
      { Gender = false, Time = false, MSG = "Velkommen, hvordan kan jeg hjælpe dig?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Tak fordi du kiggede forbi, hav en vidunderlig dag!" },
      { Gender = false, Time = false, MSG = "Jeg vil gerne hjælpe dig i dag, indtil næste gang!" },
      { Gender = false, Time = false, MSG = "Hvis der er noget, jeg stadig kan hjælpe dig med, så lad mig det vide!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0, MSG = "Intet tegn valgt!" },
  },

  ["Clothing"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Tøjbutik" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Skrædder" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "Jeg har i øjeblikket travlt med en anden kunde, vent et øjeblik. Jeg vil være hos dig så hurtigt som muligt!" },
    ["NeedToGo"] = { Gender = false, Time = 3.5, MSG = "Jeg har mere at lave og flere kunder at tage sig af, lad mig vide, når du har brug for mere hjælp" },
    ["DressingRoom"] = { Gender = false, Time = false, MSG = "Omklædningsrum" },
    ["Confirmation"] = { Gender = false, Time = false, MSG = "Bekræftelse" },
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5, MSG = "Vil du skifte tøj?" },
    ["Pay"] = { Gender = false, Time = false, MSG = "Betal" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Åbn menu" },
    ["Outfits"] = { Gender = false, Time = false, MSG = "Outfits" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Velkommen, jeg håber, du går ind i min butik med rene sko!" },
      { Gender = 'Male', Time = 3.5, MSG = "Yeee dreng, velkommen til min butik sir, jeg er glad for at se dig!" },
      { Gender = 'Male', Time = 3.5, MSG = "Åh se det, hallo der. Hvordan er din dag i dag, sir?" },
      { Gender = 'Female', Time = 3.5, MSG = "Velkommen, jeg håber, du går ind i min butik med rene sko!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee dreng, velkommen til min butik! Åh, undskyld mig min dame, jeg var overbestået." },
      { Gender = 'Female', Time = 3.5, MSG = "Åh se det, hallo der. Hvordan er din dag i dag min dame?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Tak for dit besøg! Sikker rejse min ven!" },
      { Gender = 'Male', Time = 3.5, MSG = "Jeg ønsker dig en god dag, må du nyde din dag sir!" },
      { Gender = 'Male', Time = 3.5, MSG = "Nyd din dag sir, tak for dit besøg." },
      { Gender = 'Male', Time = 3.5, MSG = "Gode rejser min ven, tak for dit besøg" },
      { Gender = 'Female', Time = 3.5, MSG = "Tak for dit besøg! Safe Travels my lady!" },
      { Gender = 'Female', Time = 3.5, MSG = "Jeg ønsker dig en god dag, må du nyde din dag frue!" },
      { Gender = 'Female', Time = 3.5, MSG = "Nyd din dag frue, tak for dit besøg." },
      { Gender = 'Female', Time = 3.5, MSG = "Gode rejser min dame, tak for dit besøg" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3, MSG = "Hvordan kan jeg hjælpe dig, min herre?" },
      { Gender = 'Female', Time = 3, MSG = "Hvordan kan jeg hjælpe dig min dame?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Jeg vil selvfølgelig være i stand til at hjælpe dig. Venligst gå til siden af ​​skranken, og jeg vil være hos dig så hurtigt som muligt." },
      { Gender = 'Male', Time = 3.5, MSG = "Ahh ja, tøj. Sir, du kom til det rigtige sted, følg mig venligst." },
      { Gender = 'Female', Time = 3.5, MSG = "Som du behager min dame, skal jeg hjælpe dig med stor glæde!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ahh ja, tøj. Frue, du kom til det rigtige sted, følg mig venligst." },
    },

    ["Reactions"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Det passer dig godt, sir" },
      { Gender = 'Male', Time = 5.0, MSG = "Åh se det, det gør mig jaloux at se dig sådan." },
      { Gender = 'Male', Time = 5.0, MSG = "Åh dreng, se det, det er fantastisk." },
      { Gender = 'Male', Time = 5.0, MSG = "Det er det fineste, vi har i byen, du finder ikke bedre andre steder!" },
      { Gender = 'Male', Time = 5.0, MSG = "Så smuk, så speciel, og jeg er den, der kan lave den til dig, hvis du vil af årsagen." },
      { Gender = 'Male', Time = 5.0, MSG = "Det passer dig fantastisk" },
      { Gender = 'Male', Time = 5.0, MSG = "Gud, da den er lavet specielt til dig!" },
      { Gender = 'Female', Time = 5.0, MSG = "Det passer dig godt, sir" },
      { Gender = 'Female', Time = 5.0, MSG = "Åh se det, at se dig sådan gør mig jaloux." },
      { Gender = 'Female', Time = 5.0, MSG = "Åh dreng, se det, det er fantastisk." },
      { Gender = 'Female', Time = 5.0, MSG = "Det er det fineste, vi har i byen, du finder ikke bedre andre steder!" },
      { Gender = 'Female', Time = 5.0, MSG = "Så smuk, så speciel, og jeg er den, der kan lave den til dig, hvis du vil af årsagen." },
      { Gender = 'Female', Time = 5.0, MSG = "Det passer dig fantastisk" },
      { Gender = 'Female', Time = 5.0, MSG = "Gud, da den er lavet specielt til dig!" },
    }
  },

  ["Skins"] = {
    ['Male'] = { Gender = false, Time = false, MSG = "Mand" },
    ['Female'] = { Gender = false, Time = false, MSG = "Kvinde" },
    ['Select'] = { Gender = false, Time = false, MSG = "Select" },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Vælg Gender" },
    ["ErrAge"] = { Gender = false, Time = 3.0, MSG = "Du har ikke angivet dine karakterers alder!" },
    ["ErrName"] = { Gender = false, Time = 3.0, MSG = "Du har ikke angivet din karakters navn!" },
    ["ErrNatio"] = { Gender = false, Time = 3.0, MSG = "Du har ikke angivet din karakters nationalitet!" },
    ["ErrTorso"] = { Gender = false, Time = 3.0, MSG = "Du har ikke indstillet din karakters torsotype!" },
    ["ErrLegs"] = { Gender = false, Time = 3.0, MSG = "Du har ikke indstillet dine karakterers bentype!" },
    ["ErrHead"] = { Gender = false, Time = 3.0, MSG = "Du har ikke indstillet din karakters hovedtype!" },
    ["ErrEyes"] = { Gender = false, Time = 3.0, MSG = "Du har ikke indstillet dine karakterers øjnetype!" },
    ["ErrHair"] = { Gender = false, Time = 3.0, MSG = "Du har ikke indstillet din karakters hårtype!" },
  },

  ["Spawner"] = {
    ['Cutscene'] = { Gender = false, Time = false, MSG = "Cutscene" },
    ["DriverName"] = { Gender = false, Time = false, MSG = "Stagecoach Driver" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Du slukkede for musikken" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Du tændte for musikken" },
    ["ErrStepOut"] = { Gender = false, Time = 5.0, MSG = "Du kan ikke træde ud i klippescenen." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Stop | Start musik" },
    ["StepOut"] = { Gender = false, Time = false, MSG = "Step Out" },
    ["Cinema"] = { Gender = false, Time = false, MSG = "Cinema" },

    ["Welcome"] = {
      { Gender = false, Time = 5.0, MSG = "Velkommen til vores amt, må du nyde dit ophold!" },
      { Gender = false, Time = 5.0, MSG = "Jeg kan fortælle, at du er smart, fordi du vælger dette amt! Haha, velkommen min ven!" },
    },

    ["Advice"] = {
      { Gender = false, Time = 5.0, MSG = "Jeg bringer dig til en fin skrædder, der kan hjælpe dig med noget nyt tøj" },
      { Gender = false, Time = 5.0, MSG = "Efter så lang rejse er en fin skrædder, hvad du har brug for. Lad mig gøre æren og bringe dig til en." },
    },

    ["Tailor"] = {
      { Gender = false, Time = 5.0, MSG = "Der er en Skrædder i nærheden, jeg ville overveje at anskaffe noget nyt tøj." },
      { Gender = false, Time = 5.0, MSG = "Du finder en Skrædder rundt om hjørnet, jeg ville overveje at anskaffe noget nyt tøj." },
    },

    ["Goodbye"] = {
      { Gender = false, Time = 5.0, MSG = "Farvel min ven, det var rart at møde dig! Nyd dit ophold!" },
      { Gender = false, Time = 5.0, MSG = "Det var vidunderligt at møde dig, må du nyde dit ophold!" },
      { Gender = false, Time = 5.0, MSG = "Det er da 12,25 $... hah bare sjov, nyd dit ophold min ven!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0, MSG = "Det er et dejligt amt, du er ankommet til, der er meget at lave i byen, du vil måske kunne lide det." },
      { Gender = false, Time = 7.0, MSG = "Er det ikke sjovt, hvordan vejret nogle gange kan være, det kan skifte rundt som en sindssyg! Du ønsker seriøst ikke at blive fanget i en af ​​de storme, jeg skal fortælle dig ." },
      { Gender = false, Time = 5.0, MSG = "Det ser ud til, at du har rejst i et stykke Time. Jeg håber, at din rejse var uden problemer." },
      { Gender = false, Time = 5.0, MSG = "Er det ikke bare mig, eller er det meget ildelugtende her." },
      { Gender = false, Time = 5.0, MSG = "Se det vejr, er det ikke smukt" },
      { Gender = false, Time = 5.0, MSG = "Vi er næsten ved vores destination. Jeg håber, du nyder turen indtil videre." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Åbn menu" },
    ["Inventory"] = { Gender = false, Time = false, MSG = "Beholdning" },
    ["AdminMenu"] = { Gender = false, Time = false, MSG = "Admin Menu" },
    ["Zoning"] = { Gender = false, Time = false, MSG = "Zoneinddeling" },
    ["AutoMove"] = { Gender = false, Time = false, MSG = "Start automatisk flytning" },
    ["StopMove"] = { Gender = false, Time = false, MSG = "Stop automatisk flytning" },
    ["Unequipt"] = { Gender = false, Time = false, MSG = "Uudstyret våben" },
    ["Error"] = { Gender = false, Time = false, MSG = "Fejl" },
    ["System"] = { Gender = false, Time = false, MSG = "System" },
    ["Initialize"] = { Gender = false, Time = 3.0, MSG = "Indstillingsmenu initialiseret!" },
    ["Initialize2"] = { Gender = false, Time = 5.0, MSG = "Du kan nu åbne indstillingsmenuen med venstre alt-tast!" },
    ["NoNextPage"] = { Gender = false, Time = 3.0, MSG = "Ingen næste side i øjeblikket" },
    ["NoBackPage"] = { Gender = false, Time = 3.0, MSG = "Ingen bagside i øjeblikket" },
    ["CoordsSave"] = { Gender = false, Time = 5.0, MSG = "Du har gemt dine koordinater!" },
    ["ErrSkin"] = { Gender = false, Time = 5.0, MSG = "Du har ikke noget skin at indlæse! Opret venligst et skin først!" },
    ["LogOut"] = { Gender = false, Time = 5.0, MSG = "Logger ud" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0, MSG = "Gemmer din karakters position" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Alt i spilmusik er slået til!" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Alt i spilmusik er slukket!" },
    ["MusicUnable"] = { Gender = false, Time = 5.0, MSG = "Du har slået musik fra i indstillingerne, kan ikke afspille musik!" },
    ["VolSet"] = { Gender = false, Time = 5.0, MSG = "Lydstyrke indstillet til %" },
    ["VolSet2"] = { Gender = false, Time = 5.0, MSG = "Lydstyrken træder i kraft på næste sang!" },
    ["CharDel"] = { Gender = false, Time = 10.0, MSG = "Sletning af tegn i gang" },
    ["DelDone"] = { Gender = false, Time = 5.0, MSG = "Al karakterinformation er slettet, vi bringer dig tilbage til tegnvalgsmenuen" },
  },

  ["FastTravel"] = {
    ["ZoneName"] = { Gender = false, Time = false, MSG = "Hurtig rejse" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Dokus Rejsebureau" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0, MSG = "Hav en behagelig tur, og tak fordi du rejser Dokus Industries" },
      { Gender = false, Time = 5.0, MSG = "Vi håber, du vil nyde din rejse, sikre rejser" },
      { Gender = false, Time = 5.0, MSG = "Vi er glade for, at du vælger Dokus Industries til at rejse!" },
      { Gender = false, Time = 5.0, MSG = "Du kan gå ind i båden ved kajen, sikkert rejser" },
    }

  },

  ["GunStore"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Våbenhandler" },
    ["BlipName"] = { Gender = false, Time = false, MSG = "Gun Store" },
    ["NoMoney"] = { Gender = false, Time = 3.0, MSG = "Du har ikke penge nok!" },
    ["BoughtAmmo1"] = { Gender = false, Time = 3.0, MSG = "Du har købt" },
    ["BoughtAmmo2"] = { Gender = false, Time = 3.0, MSG = " Ammo!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Åbn menu" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0, MSG = "Denne vare fungerer i øjeblikket ikke som forventet og er ikke solgt i øjeblikket!" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Velkommen, jeg håber, du går ind i min butik med rene sko!" },
      { Gender = 'Male', Time = 3.5, MSG = "Yeee dreng, velkommen til min butik sir!" },
      { Gender = 'Male', Time = 3.5, MSG = "Åh se det, hallo der. Hvordan er din dag i dag, sir?" },
      { Gender = 'Female', Time = 3.5, MSG = "Velkommen, jeg håber, du går ind i min butik med rene sko!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee dreng, velkommen til min butik! Åh, undskyld mig min dame, jeg var overbestået." },
      { Gender = 'Female', Time = 3.5, MSG = "Åh se det, hallo der. Hvordan er din dag i dag min dame?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Tak for dit besøg! Sikker rejse min ven!" },
      { Gender = 'Male', Time = 3.5, MSG = "Jeg ønsker dig en god dag, må du nyde din dag sir!" },
      { Gender = 'Male', Time = 3.5, MSG = "Nyd din dag sir, tak for dit besøg." },
      { Gender = 'Male', Time = 3.5, MSG = "Gode rejser min ven, tak for dit besøg" },
      { Gender = 'Female', Time = 3.5, MSG = "Tak for dit besøg! Safe Travels my lady!" },
      { Gender = 'Female', Time = 3.5, MSG = "Jeg ønsker dig en god dag, må du nyde din dag frue!" },
      { Gender = 'Female', Time = 3.5, MSG = "Nyd din dag frue, tak for dit besøg." },
      { Gender = 'Female', Time = 3.5, MSG = "Gode rejser min dame, tak for dit besøg" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Hvordan kan jeg hjælpe dig, min herre?" },
      { Gender = 'Female', Time = 3.5, MSG = "Hvordan kan jeg hjælpe dig min dame?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"] = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"] = { Gender = false, Time = false, MSG = "Loot Box" },
    ["OpenBox"] = { Gender = false, Time = false, MSG = "Tryk på ~color_green~E~q~ for at åbne" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "Du har ikke valgt noget til at falde på jorden! Vælg først et element!" },
    ["NotEnough"] = { Gender = false, Time = false, MSG = "Du har ikke nok af denne vare i din beholdning!" },
    ["NoAmount"] = { Gender = false, Time = false, MSG = "Du har ikke angivet noget beløb i beløbsparameteren. Kan ikke slippe din vare!" },
    ["ToClose"] = { Gender = false, Time = 5.0, MSG = "Du skal tæt på en anden DropBox. Kom tættere på eller længere væk!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Jeg bliver sulten, jeg skal have noget at spise" },
      { Gender = false, Time = 5.0, MSG = "Jeg er så sulten, jeg har virkelig brug for noget at spise" },
      { Gender = false, Time = 5.0, MSG = "Jeg føler mig let i hovedet, jeg har brug for noget at spise" },
      { Gender = false, Time = 5.0, MSG = "Åh min mave gør ondt, jeg har ikke spist endnu" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Jeg er så tørstig, jeg har brug for noget at drikke" },
      { Gender = false, Time = 5.0, MSG = "Min mund føles tør, jeg har brug for noget vand" },
      { Gender = false, Time = 5.0, MSG = "Uhg, hvis jeg ikke drikker snart, kan jeg besvime" },
      { Gender = false, Time = 5.0, MSG = "Jeg har aldrig i mit liv følt mig så tørstig" },
    }
  },

  ["Scavenger"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Scavenger" },
    ["Rewards"] = { Gender = false, Time = 3.0, MSG = "Du har høstet" },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0, MSG = "Denne busk er allerede blevet høstet" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Høst" },
  },

  ["ScratchCards"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Bankmedarbejder" },
    ["NoTickets"] = { Gender = false, Time = 5.0, MSG = "Du har ingen lotterisedler i din besiddelse!" },
    ["WonCard"] = { Gender = false, Time = 5.0, MSG = "Du har vundet $" },
    ["WonTotal"] = { Gender = false, Time = 5.0, MSG = "Du har vundet i alt $" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Høst" },
    ["BetterLuck"] = { Gender = false, Time = false, MSG = "Bedre held næste gang" },
    ["NoWin"] = { Gender = false, Time = 5.0, MSG = "Du har desværre ikke vundet noget denne gang" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"] = { Gender = false, Time = false, MSG = "Dans" },
    ["MenuStop"] = { Gender = false, Time = false, MSG = "Stop" },
    ["MenuNext"] = { Gender = false, Time = false, MSG = "Næste" },
    ["MenuBack"] = { Gender = false, Time = false, MSG = "Tilbage" },
    ["ShowFear"] = { Gender = false, Time = false, MSG = "Vis/udtryk frygt" },
    ["StopTrumpet"] = { Gender = false, Time = 5.0, MSG = "Du kan stoppe afspilningen ved at trykke på Backspace - Mellemrumstasten eller X" },
    ["TrumpWarning"] = { Gender = false, Time = 5.0, MSG = "Hvis trompeten forbliver fast i din hånd, genindlæs din hud via menuen for at rette den" },
    ["ScenarioStop"] = { Gender = false, Time = 5.0, MSG = "Du kan stoppe scenariet ved at skrive [ /scenario stop ] i chatten" },
    ["SetStatus"] = { Gender = false, Time = false, MSG = "Indstil din status!" },
  },

  ["Stables"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Stabil" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Staldassistent" },
    ["HorseNamed"] = { Gender = false, Time = 3.5, MSG = "Du har navngivet din hest: " },
    ["HorseBought"] = { Gender = false, Time = 5.0, MSG = "Din hest er nu klar! Det var en fornøjelse at handle med dig." },
    ["HorseStored"] = { Gender = false, Time = 5.0, MSG = "Din hest er gemt, vi vil passe godt på den!" },
    ["NameHorse"] = { Gender = false, Time = false, MSG = "Navngiv din hest" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Du har ikke penge nok til at købe denne hest, er jeg bange for!" },
    ["HorseReady"] = { Gender = false, Time = 5.0, MSG = "Din hest er klar i sin stald!" },
    ["FetchHorse"] = { Gender = false, Time = 5.0, MSG = "Selvfølgelig, lad mig et øjeblik få din hest!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0, MSG = "Vær herre, så sundt som det nogensinde har været!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Åbn menu" },
    ["StoreHorse"] = { Gender = false, Time = false, MSG = "Store Horse" },
    ["NoHorseName"] = { Gender = false, Time = 5.0, MSG = "Beklager, men du skal give din hest et navn" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Velkommen, jeg håber, du går ind i min butik med rene sko!" },
      { Gender = 'Male', Time = 5.0, MSG = "Yeee dreng, velkommen til min butik, har jeg nogle heste til dig, sir!" },
      { Gender = 'Male', Time = 5.0, MSG = "Åh se det, hallo der. Hvordan er din dag i dag, sir?" },
      { Gender = 'Female', Time = 5.0, MSG = "Velkommen, jeg håber, du går ind i min butik med rene sko!" },
      { Gender = 'Female', Time = 5.0, MSG = "Yeee dreng, velkommen til min butik! Åh, undskyld mig min dame, jeg var overbestået." },
      { Gender = 'Female', Time = 5.0, MSG = "Åh se det, hallo. Hvordan er din dag i dag min dame?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 5.0,   MSG = "Tak for dit besøg! Sikker rejse min ven!" },
      { Gender = 'Male', Time = 5.0,   MSG = "Jeg ønsker dig en god dag, må du nyde din dag sir!" },
      { Gender = 'Male', Time = 5.0,   MSG = "Nyd din dag sir, tak for dit besøg." },
      { Gender = 'Male', Time = 5.0,   MSG = "Gode rejser min ven, tak for dit besøg" },
      { Gender = 'Female', Time = 5.0, MSG = "Tak for dit besøg! Safe Travels my lady!" },
      { Gender = 'Female', Time = 5.0, MSG = "Jeg ønsker dig en god dag, må du nyde din dag frue!" },
      { Gender = 'Female', Time = 5.0, MSG = "Nyd din dag frue, tak for dit besøg." },
      { Gender = 'Female', Time = 5.0, MSG = "Gode rejser min dame, tak for dit besøg" },
    }
  },

  ["Stores"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "General Store" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "General Butik Worker" },
    ["MenuBuy"] = { Gender = false, Time = false, MSG = "General Store (Køb)" },
    ["MenuSell"] = { Gender = false, Time = false, MSG = "Beholdning (Sælg)" },
    ["ButtonBuy"] = { Gender = false, Time = false, MSG = "Køb" },
    ["ButtonSell"] = { Gender = false, Time = false, MSG = "Sælg" },
    ["ButtonMan"] = { Gender = false, Time = false, MSG = "Administrer" },
    ["NotInInvent"] = { Gender = false, Time = 3.5, MSG = "Du har ikke så meget i din beholdning!" },
    ["Bought"] = { Gender = false, Time = 3.5, MSG = "Du har købt" },
    ["Sold"] = { Gender = false, Time = 3.5, MSG = "Du har solgt" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Du har ikke penge nok til at købe denne / disse mængder af varer!" },
    ["NoItem"] = { Gender = false, Time = false, MSG = "Du har ikke valgt et element endnu!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Velkommen, jeg håber, du kommer ind i min butik med rene sko!" },
      { Gender = false, Time = 5.0, MSG = "Hej en kunde, det er F**** fantastisk!" },
      { Gender = false, Time = 5.0, MSG = "Åh se det, hallo der." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Tak for dit besøg! Sikker rejse!" },
      { Gender = false, Time = 5.0, MSG = "Jeg ønsker dig en god dag, må du nyde!" },
      { Gender = false, Time = 5.0, MSG = "Nyd din dag, tak for dit besøg." },
      { Gender = false, Time = 5.0, MSG = "Gode rejser min ven, tak for dit besøg" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "Hvordan kan jeg hjælpe dig?" },
      { Gender = false, Time = 2.5, MSG = "Åh, du vil købe noget, hva?" },
      { Gender = false, Time = 2.5, MSG = "Er det noget særligt, du leder efter?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "Hvordan kan jeg hjælpe dig?" },
      { Gender = false, Time = 2.5, MSG = "Jeg vil lægge nogle tags op, der kun har tyve dollars i lommen!" },
      { Gender = false, Time = 2.5, MSG = "Åh, du vil gerne sælge noget, hva?" },
      { Gender = false, Time = 2.5, MSG = "Jeg tager alt fra fisk til brød, fra brød til kaffe. You name it!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Det var en fornøjelse at handle med dig!" },
      { Gender = false, Time = 5.0, MSG = "Jeg er glad for, at jeg kunne have været til din tjeneste!" },
      { Gender = false, Time = 5.0, MSG = "Jeg er glad for, at jeg kunne hjælpe dig" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Interagerbar" }
  },


















    -- NEEDS TRANSLATION
    ["WorldEdits"] = {
      ["GuarmaFishBar"] = { Gender = false, Time = false, MSG = "Guarma Fishers Bar" },
      ["GuarmaHideout"] = { Gender = false, Time = false, MSG = "Guarma Hideout" },
      ["GuarmaArena"]   = { Gender = false, Time = false, MSG = "Gladiator Arena" },
      ["MexicoBridge1"] = { Gender = false, Time = false, MSG = "Mexico High Bridge" },
      ["MexicoBridge2"] = { Gender = false, Time = false, MSG = "Victoria Long Bridge"},
      ["MexicoBridge3"] = { Gender = false, Time = false, MSG = "Mexico Low Bridge" },
      ["HangingBridge"] = { Gender = false, Time = false, MSG = "The Hanging Bridge" },
      ["NakotaNatCamp"] = { Gender = false, Time = false, MSG = "Nakota Native Camp" },
      ["ApacheNatCamp"] = { Gender = false, Time = false, MSG = "Apache Native Camp" },
      ["LakotaNatCamp"] = { Gender = false, Time = false, MSG = "Lakota Native Camp" },
      ["ArthurGraveSt"] = { Gender = false, Time = false, MSG = "Arthur's Gravestone" },
    },






















}
