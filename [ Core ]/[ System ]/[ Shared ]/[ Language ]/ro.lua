Lang['ro'] = {

  ["System"] = {
    ["Yes"]             = { Gender = false, Time = false, MSG = "Da" },
    ["No"]              = { Gender = false, Time = false, MSG = "Nu" },
    ["Error"]           = { Gender = false, Time = false, MSG = "ERROR" },
    ["System"]          = { Gender = false, Time = false, MSG = "Sistem" },
    ["Success"]         = { Gender = false, Time = false, MSG = "Succes" },
    ["BLCheck"]         = { Gender = false, Time = false, MSG = "Verificam Blacklist" },
    ["WLCheck"]         = { Gender = false, Time = false, MSG = "Verificam Whitelist" },
    ["SteamCheck"]      = { Gender = false, Time = false, MSG = "Verificam Steam Identification" },
    ["SteamConFail"]    = { Gender = false, Time = false, MSG = "Nu ne putem conecta la STEAM API, incearca sa inchizi jocul sa repornesti STEAM-ul si apoi RedM-ul!" },
    ["UserBanned"]      = { Gender = false, Time = false, MSG = "Ai fost banat!" },
    ["InfoDiscord"]     = { Gender = false, Time = false, MSG = "Pentru mai multe informatii viziteaza ".._DiscordInvite.."" },
    ["NoBanReason"]     = { Gender = false, Time = false, MSG = "Nici un motiv furnizat!" },
    ["WLPending"]       = { Gender = false, Time = false, MSG = "Cererea de whitelist este in asteptare!..." },
    ["WLDenied"]        = { Gender = false, Time = false, MSG = "Cerearea whitelist a fost refuzata deoarece:" },
    ["WLMade1"]         = { Gender = false, Time = false, MSG = "Pentru a intra pe acest server ai nevoie de." },
    ["WLMade2"]         = { Gender = false, Time = false, MSG = "Cererea whitelist a fost facuta automat si acum este in asteptare!" },
    ["NoCharFound"]     = { Gender = false, Time = false, MSG = "Nu se poate efectua aceasta actiune, nu a fost gasit niciun personaj!" },
    ["Language"]        = { Gender = false, Time = false, MSG = "Limba" },
    ["LangNotEnter"]    = { Gender = false, Time = false, MSG = "Parametrul de limba era gol!" },
    ["LanguageSetTo"]   = { Gender = false, Time = false, MSG = "Limba clientului este setata la " },
    ["LangNoSupport"]   = { Gender = false, Time = 5.0,   MSG = "Aceasta limba nu este suportata!" },
    ["WelcomeTo"]       = { Gender = false, Time = false, MSG = "Bine ai venit pe:" },
    ["InProgress"]      = { Gender = false, Time = false, MSG = "In proces" },
    ["OpenMenu"]        = { Gender = false, Time = false, MSG = "Deschideti Meniu" },


    ["InDevelopment"]   = { Gender = false, Time = 5.0,   MSG = "Lucram la asta!" },

    -- Cities
    ["Guarma"]          = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"]          = { Gender = false, Time = false, MSG = "Sisika Jail" },
    ["SaintDenis"]      = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"]         = { Gender = false, Time = false, MSG = "Banking" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Bankier Worker" },
    ["NPCBusy"]      = { Gender = false, Time = 3.5, MSG = "Momentan sunt ocupat cu un alt cetatean, un moment va rog!" },
    ["NoAccount"]    = { Gender = false, Time = 3.5, MSG = "Îmi pare rau, dar nu avem niciun cont bancar înregistrat în jurnalele noastre. Mai întâi trebuie sa deschideti un cont bancar înainte de a putea folosi unul!" },
    ["UseBankKey"]   = { Gender = false, Time = 3.5, MSG = "Foloseste banca" },
    ["AlAccount"]    = { Gender = false, Time = 3.5, MSG = "Ai deja un cont deschis la aceasta banca!" },
    ["AcCreation"]   = { Gender = false, Time = 3.5, MSG = "Ati platit taxa de cont, contul fiind creat!" },
    ["AcCreated"]    = { Gender = false, Time = 3.5, MSG = "Contul dvs. bancar a fost creat! Acum va puteti deschide contul bancar." },
    ["NoDepMoney"]   = { Gender = false, Time = 3.5, MSG = "Nu ai suficienti bani pentru a face acest depozit!" },
    ["NoDepGold"]    = { Gender = false, Time = 3.5, MSG = "Nu ai suficient aur pentru a face acest depozit!" },
    ["NoWitMoney"]   = { Gender = false, Time = 3.5, MSG = "Nu ai suficienti bani pentru a face aceasta retragere!" },
    ["NoWitGold"]    = { Gender = false, Time = 3.5, MSG = "Nu aveti suficient aur pentru a face aceasta retragere!" },
    ["DepMinMoney"]  = { Gender = false, Time = 3.5, MSG = "Suma depozitului trebuie sa fie mai mare decât 0,01 centi USD!" },
    ["DepMinGold"]   = { Gender = false, Time = 3.5, MSG = "Suma depozitului trebuie sa fie mai mare decât 0,01 aur!" },
    ["WitMinMoney"]  = { Gender = false, Time = 3.5, MSG = "Suma depozitului trebuie sa fie mai mare decât 0,01 centi USD!" },
    ["WitMinGold"]   = { Gender = false, Time = 3.5, MSG = "Suma depozitului trebuie sa fie mai mare decât 0,01 aur!" },
    ["ToFast"]       = { Gender = false, Time = 3.5, MSG = "Îmi pare rau, dar nu pot face decât o singura tranzactie la un moment dat. Un moment va rog!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Ati facut o depunere de $" },
    ["DepDoneGold"]  = { Gender = false, Time = 3.5, MSG = "Ati facut un depozit de" },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Ati facut o retragere de $" },
    ["WitDoneGold"]  = { Gender = false, Time = 3.5, MSG = "Ai facut o retragere a" },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Bine ati venit la banca noastra, cu ce va pot fi de folos?" },
      { Gender = false, Time = false, MSG = "Bine ai venit! Cum te pot ajuta?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Multumesc ca ai trecut pe aici, o zi minunata!" },
      { Gender = false, Time = false, MSG = "Am fost încântata sa va ajut astazi, pâna data viitoare!" },
      { Gender = false, Time = false, MSG = "Daca mai exista ceva cu care te mai pot ajuta, doar anunta-ma!" },
    },
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0,   MSG = "Niciun personaj selectat!" },
  },

  ["Clothing"] = {
    ["Name"]          = { Gender = false, Time = false, MSG = "Magazin de haine" },
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Croitor" },
    ["NPCBusy"]       = { Gender = false, Time = 3.5,   MSG = "Momentan sunt ocupat cu un alt client, stai un moment. Voi fi alaturi de tine cât mai curând posibil!" },
    ["NeedToGo"]      = { Gender = false, Time = 3.5,   MSG = "Am mai multe de facut si mai multi clienti de care sa se îngrijeasca, anuntati-ma când aveti nevoie de mai mult ajutor" },
    ["DressingRoom"]  = { Gender = false, Time = false, MSG = "Vestiar" },
    ["Confirmation"]  = { Gender = false, Time = false, MSG = "Confirmare" },
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5,   MSG = "Vrei sa schimbi hainele?" },
    ["Pay"]           = { Gender = false, Time = false, MSG = "Plateste" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Open Menu" },
    ["Outfits"]       = { Gender = false, Time = false, MSG = "Costumatii" },
    ['EnterStore'] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Bine ati venit, sper ca ati intrat în magazinul meu cu pantofi curati!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Yeee baiete, bun venit în magazinul meu domnule, ma bucur sa te vad!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Uite asta, salut. Cum este ziua ta azi, domnule?" },
      { Gender = 'Female', Time = 3.5, MSG = "Bine ati venit, sper ca ati intrat în magazinul meu cu pantofi curati!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee baiete, bine ai venit în magazinul meu!. Oh, scuzati-ma, doamna mea, am fost in extaz." },
      { Gender = 'Female', Time = 3.5, MSG = "Uite asta, salut. Cum este ziua ta azi, doamna mea?" },
    },

    ['ExitStore'] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Va multumim pentru vizita! Calatorii în siguranta, prietene!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Va doresc o zi buna, sa va bucurati de ziua dumneavoastra, domnule!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Bucura-te de ziua ta, domnule, multumesc pentru vizita." },
      { Gender = 'Male',   Time = 3.5, MSG = "Calatorii bune prietene, multumesc pentru vizita" },
      { Gender = 'Female', Time = 3.5, MSG = "Va multumim pentru vizita! Calatorii în siguranta, doamna mea!" },
      { Gender = 'Female', Time = 3.5, MSG = "Va doresc o zi buna, sa va bucurati de ziua dumneavoastra, doamna!" },
      { Gender = 'Female', Time = 3.5, MSG = "Bucura-te de ziua ta, doamna, multumesc pentru vizita." },
      { Gender = 'Female', Time = 3.5, MSG = "Calatorie buna doamna mea, multumesc pentru vizita" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3, MSG = "Cum te pot ajuta, domnule?" },
      { Gender = 'Female', Time = 3, MSG = "Cum te pot ajuta, doamna mea?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Pentru ca va voi putea ajuta, domnule. Te rog, mergi pe partea laterala a tejghelei si voi fi cu tine cât mai curând posibil." },
      { Gender = 'Male',   Time = 3.5, MSG = "Ahh da, îmbracaminte. Domnule, ati venit în locul potrivit, va rog sa ma urmati." },
      { Gender = 'Female', Time = 3.5, MSG = "Cum va plac doamnei mele, va voi ajuta cu multa placere!" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Ahh da, îmbracaminte. Doamna, ati venit la locul potrivit, va rog sa ma urmati." },
    },

    ["Reactions"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Asta ti se potriveste bine domnule" },
      { Gender = 'Male',   Time = 5.0, MSG = "Uite la asta, sa te vad asa ma face geloasa." },
      { Gender = 'Male',   Time = 5.0, MSG = "O, baiete, uita-te la asta, e minunat." },
      { Gender = 'Male',   Time = 5.0, MSG = "Este cel mai bun pe care îl avem în oras, mai bun nu gasesti altundeva!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Atât de frumos, atât de special, si eu sunt cel capabil sa-l fac pentru tine, daca îti place din cauza." },
      { Gender = 'Male',   Time = 5.0, MSG = "Asta ti se potriveste minunat" },
      { Gender = 'Male',   Time = 5.0, MSG = "Doamne, pentru ca a fost facut special pentru tine!" },
      { Gender = 'Female', Time = 5.0, MSG = "Asta ti se potriveste bine domnule" },
      { Gender = 'Female', Time = 5.0, MSG = "Uite la asta, sa te vad asa ma face geloasa." },
      { Gender = 'Female', Time = 5.0, MSG = "O, baiete, uita-te la asta, e minunat." },
      { Gender = 'Female', Time = 5.0, MSG = "Este cel mai bun pe care îl avem în oras, mai bun nu gasesti altundeva!" },
      { Gender = 'Female', Time = 5.0, MSG = "Atât de frumos, atât de special, si eu sunt cel capabil sa-l fac pentru tine, daca îti place din cauza." },
      { Gender = 'Female', Time = 5.0, MSG = "Asta ti se potriveste minunat" },
      { Gender = 'Female', Time = 5.0, MSG = "Doamne, pentru ca a fost facut special pentru tine!" },
    },
  },

  ["Skins"] = {
    ['Male']      = { Gender = false, Time = false, MSG = "Barbat"                                        },
    ['Female']    = { Gender = false, Time = false, MSG = "Femeie"                                      },
    ['Select']    = { Gender = false, Time = false, MSG = "Selecteaza"                                      },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Alege-ti sex-ul"                               },
    ["ErrAge"]    = { Gender = false, Time = 3.0,   MSG = "Nu ai setat varsta!"         },
    ["ErrName"]   = { Gender = false, Time = 3.0,   MSG = "Nu ai setat numele!"        },
    ["ErrNatio"]  = { Gender = false, Time = 3.0,   MSG = "Nu ai setat nationalitatea!" },
    ["ErrTorso"]  = { Gender = false, Time = 3.0,   MSG = "Nu ai setat forma pieptului!"  },
    ["ErrLegs"]   = { Gender = false, Time = 3.0,   MSG = "Nu ai setat forma picioarelor!"   },
    ["ErrHead"]   = { Gender = false, Time = 3.0,   MSG = "Nu ai setat forma capului!"   },
    ["ErrEyes"]   = { Gender = false, Time = 3.0,   MSG = "Nu ai setat forma ochilor!"   },
    ["ErrHair"]   = { Gender = false, Time = 3.0,   MSG = "Nu ai setat o frizura!"   },
  },

  ["Spawner"] = {
    ['Cutscene']    = { Gender = false, Time = false, MSG = "Cutscene" },
    ["DriverName"]  = { Gender = false, Time = false, MSG = "StageCoach Driver" },
    ["MusicOn"]     = { Gender = false, Time = 5.0,   MSG = "Ai oprit muzica" },
    ["MusicOff"]    = { Gender = false, Time = 5.0,   MSG = "Ai pornit muzica" },
    ["ErrStepOut"]  = { Gender = false, Time = 5.0,   MSG = "Nu poti iesi in timpului unui cutscene" },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Stop | Start Music" },
    ["StepOut"]     = { Gender = false, Time = false, MSG = "Step Out" },
    ["Cinema"]      = { Gender = false, Time = false, MSG = "Cinema" },

    ['Welcome'] = {
      { Gender = false, Time = 5.0,   MSG = "Bine ati venit în tara noastra, va puteti bucura de sederea dumneavoastra!" },
      { Gender = false, Time = 5.0,   MSG = "iti spun ca esti destept, pentru ca tu alegi pentru acesta tara! Haha, bun venit prietene!" },
    },

    ["Advice"] = {
       { Gender = false, Time = 5.0,   MSG = "O sa te aduc la un croitor bun care te-ar putea ajuta sa iei niste haine noi" },
       { Gender = false, Time = 5.0,   MSG = "Dupa o calatorie atât de lunga, un croitor bun este ceea ce ai nevoie. Lasa-ma sa fac onoarea si sa te aduc la unul." },
    },

    ["Tailor"] = {
       { Gender = false, Time = 5.0,   MSG = "Exista un croitor în apropiere, as lua în considerare niste haine noi." },
       { Gender = false, Time = 5.0,   MSG = "Veti gasi un croitor dupa colt, as lua în considerare niste haine noi." },
    },

    ["Goodbye"] = {
       { Gender = false, Time = 5.0,   MSG = "La revedere, prietene, mi-a facut placere sa te cunosc! Sedere placuta!" },
       { Gender = false, Time = 5.0,   MSG = "A fost minunat sa va cunosc, sa va bucurati de sederea dumneavoastra!" },
       { Gender = false, Time = 5.0,   MSG = "Atunci înseamna 12,25 USD... haha Glumesc, bucura-te de sederea ta prietene!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0,   MSG = "Este o tara frumoasa în care ai ajuns, sunt multe de facut în oras, s-ar putea sa-ti placa." },
      { Gender = false, Time = 7.0,   MSG = "Nu este amuzant cum poate fi vremea uneori, se poate schimba ca nebunul! Serios, nu vrei sa fii prins într-una dintre acele furtuni pe care îti voi spune." },
      { Gender = false, Time = 5.0,   MSG = "Se pare ca ai calatorit de ceva vreme. Sper ca calatoria ta a fost fara probleme." },
      { Gender = false, Time = 5.0,   MSG = "Nu sunt doar eu, sau este un miros foarte puternic aici." },
      { Gender = false, Time = 5.0,   MSG = "Uita-te la vremea asta, nu-i asa ca e frumoasa" },
      { Gender = false, Time = 5.0,   MSG = "Suntem aproape la destinatie. Sper ca va bucurati de calatorie pâna acum." },
    },
  },

  ["CoreMenu"] = {
    ["OpenMenu"]     = { Gender = false, Time = false,  MSG = "Open Menu" },
    ["Inventory"]    = { Gender = false, Time = false,  MSG = "Inventory" },
    ["AdminMenu"]    = { Gender = false, Time = false,  MSG = "Admin Menu" },
    ["Zoning"]       = { Gender = false, Time = false,  MSG = "Zoning" },
    ["AutoMove"]     = { Gender = false, Time = false,  MSG = "Start Auto Move" },
    ["StopMove"]     = { Gender = false, Time = false,  MSG = "Stop Auto Move" },
    ["Unequipt"]     = { Gender = false, Time = false,  MSG = "Dezechipeaza Arma" },
    ["Error"]        = { Gender = false, Time = false,  MSG = "Error" },
    ["System"]       = { Gender = false, Time = false,  MSG = "Sistem" },
    ["Initialize"]   = { Gender = false, Time = 3.0,    MSG = "Setting Menu Initialized!" },
    ["Initialize2"]  = { Gender = false, Time = 5.0,    MSG = "Acum puteti deschide meniul de setari cu tasta left alt" },
    ["NoNextPage"]   = { Gender = false, Time = 3.0,    MSG = "Nicio pagina urmatoare momentan" },
    ["NoBackPage"]   = { Gender = false, Time = 3.0,    MSG = "Fara pagina din spate momentan" },
    ["CoordsSave"]   = { Gender = false, Time = 5.0,    MSG = "ti-ai salvat coordonatele!" },
    ["ErrSkin"]      = { Gender = false, Time = 5.0,    MSG = "Nu ai skin de încarcat! Va rugam sa creati mai întâi o piele!" },
    ["LogOut"]       = { Gender = false, Time = 5.0,    MSG = "Logging Out" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0,    MSG = "Salveaza pozitia personajului tau" },
    ["MusicOn"]      = { Gender = false, Time = 5.0,    MSG = "S-a pornit toata muzica din joc!" },
    ["MusicOff"]     = { Gender = false, Time = 5.0,    MSG = "S-a oprit toata muzica din joc!" },
    ["MusicUnable"]  = { Gender = false, Time = 5.0,    MSG = "Ati dezactivat muzica din setari, nu puteti reda muzica!" },
    ["VolSet"]       = { Gender = false, Time = 5.0,    MSG = "Volume este %" },
    ["VolSet2"]      = { Gender = false, Time = 5.0,    MSG = "Volumul va avea efect la urmatoarea melodie!" },
    ["CharDel"]      = { Gender = false, Time = 10.0,   MSG = "stergerea caracterului este în curs" },
    ["DelDone"]      = { Gender = false, Time = 5.0,    MSG = "Toate informatiile despre personaje sunt eliminate, va readucem la meniul de selectie a personajelor" },
  },

  ["FastTravel"] = {
    ["ZoneName"]    = { Gender = false, Time = false,  MSG = "Fast Travel" },
    ["NPCName"]     = { Gender = false, Time = false,  MSG = "Dokus Travel Agency" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0,    MSG = "Calatorie placuta si multumim pentru calatoria Dokus Industries" },
      { Gender = false, Time = 5.0,    MSG = "Speram ca va veti bucura de calatorie, calatorii în siguranta" },
      { Gender = false, Time = 5.0,    MSG = "Ne bucuram ca ati ales Dokus Industries pentru a calatori!" },
      { Gender = false, Time = 5.0,    MSG = "Puteti intra în barca la doc, calatorii în siguranta" },
    }

  },

  ["GunStore"] = {
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Traficant de arme" },
    ["BlipName"]      = { Gender = false, Time = false, MSG = "Magazin de arme" },
    ["NoMoney"]       = { Gender = false, Time = 3.0,   MSG = "Nu ai destui bani!" },
    ["BoughtAmmo1"]   = { Gender = false, Time = 3.0,   MSG = "Ai cumparat " },
    ["BoughtAmmo2"]   = { Gender = false, Time = 3.0,   MSG = " Munitie!" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Open Menu" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0,   MSG = "Acest articol nu functioneaza în prezent conform asteptarilor si nu este vândut momentan!" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Bine ati venit, sper ca ati intrat în magazinul meu cu pantofi curati!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Yeee baiete, bine ai venit la magazinul meu, am niste cai pentru tine, domnule!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Uite asta, salut. Cum este ziua ta azi, domnule?" },
      { Gender = 'Female', Time = 3.5, MSG = "Bine ati venit, sper ca ati intrat în magazinul meu cu pantofi curati!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee baiete, bine ai venit în magazinul meu!. Oh, scuzati-ma, doamna mea, am fost in extaz." },
      { Gender = 'Female', Time = 3.5, MSG = "Uite asta, salut. Cum este ziua ta azi, doamna mea?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Va multumim pentru vizita! Calatorii în siguranta, prietene!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Va doresc o zi buna, sa va bucurati de ziua dumneavoastra, domnule!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Bucura-te de ziua ta, domnule, multumesc pentru vizita." },
      { Gender = 'Male',   Time = 3.5, MSG = "Calatorii bune prietene, multumesc pentru vizita" },
      { Gender = 'Female', Time = 3.5, MSG = "Va multumim pentru vizita! Calatorii în siguranta, doamna mea!" },
      { Gender = 'Female', Time = 3.5, MSG = "Va doresc o zi buna, sa va bucurati de ziua dumneavoastra, doamna!" },
      { Gender = 'Female', Time = 3.5, MSG = "Bucura-te de ziua ta, doamna, multumesc pentru vizita." },
      { Gender = 'Female', Time = 3.5, MSG = "Calatorie buna doamna mea, multumesc pentru vizita" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Cu ce va pot ajuta domnule?" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Cu ce va pot ajuta doamna mea?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"]      = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"]      = { Gender = false, Time = false, MSG = "Loot Box" },
    ["OpenBox"]      = { Gender = false, Time = false, MSG = "Apasa ~color_green~E~q~ pentru a deschide" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "Nu aveti niciun articol selectat pentru a arunca pe jos! Mai întâi selectati un articol!" },
    ["NotEnough"]    = { Gender = false, Time = false, MSG = "Nu aveti suficiente  articole în inventar!" },
    ["NoAmount"]     = { Gender = false, Time = false, MSG = "Nu aveti nicio suma setata în parametrul de suma. Imposibil de aruncat articolul dvs.!" },
    ["ToClose"]      = { Gender = false, Time = 5.0,   MSG = "Esti prea aproape de un alt DropBox. Apropiati-va sau mai departati-va!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Mi se face foame, am nevoie de ceva de mâncare" },
      { Gender = false, Time = 5.0, MSG = "Mi-e atât de foame, chiar am nevoie de ceva de mâncare" },
      { Gender = false, Time = 5.0, MSG = "Am nevoie de ceva de mâncare urgent" },
      { Gender = false, Time = 5.0, MSG = "Oh, ma doare stomacul, înca nu am mâncat" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Mi-e atât de sete, am nevoie de ceva de baut" },
      { Gender = false, Time = 5.0, MSG = "Se simte gura uscata, am nevoie de putina apa" },
      { Gender = false, Time = 5.0, MSG = "Uhg, daca nu beau în curând, s-ar putea sa lesin" },
      { Gender = false, Time = 5.0, MSG = "Niciodata în viata mea nu am fost atât de insetat" },
    }
  },

  ["Scavenger"] = {
    ["Name"]        = { Gender = false, Time = false, MSG = "Scavenger"  },
    ["Rewards"]     = { Gender = false, Time = 3.0,   MSG = "Ai recoltat"  },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0,   MSG = "Acest tufis a fost deja recoltat" },
    ["PromptHarv"]  = { Gender = false, Time = false, MSG = "Recolta" },
  },

  ["ScratchCards"] = {
    ["NPCName"]     = { Gender = false, Time = false, MSG = "Bank Worker"  },
    ["NoTickets"]   = { Gender = false, Time = 5.0,   MSG = "Nu ai un tichet de loterie"  },
    ["WonCard"]     = { Gender = false, Time = 5.0,   MSG = "Ai castigat $" },
    ["WonTotal"]    = { Gender = false, Time = 5.0,   MSG = "Ai câstigat un total mare de $" },
    ["PromptHarv"]  = { Gender = false, Time = false, MSG = "Recolta" },
    ["BetterLuck"]  = { Gender = false, Time = false, MSG = "Mai mult noroc data viitoare    " },
    ["NoWin"]       = { Gender = false, Time = 5.0,   MSG = "Din pacate nu ai câstigat nimic de data asta" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"]    = { Gender = false, Time = false, MSG = "Dance" },
    ["MenuStop"]     = { Gender = false, Time = false, MSG = "Stop" },
    ["MenuNext"]     = { Gender = false, Time = false, MSG = "Next" },
    ["MenuBack"]     = { Gender = false, Time = false, MSG = "Back" },
    ["ShowFear"]     = { Gender = false, Time = false, MSG = "Show / Expres Fear" },
    ["StopTrumpet"]  = { Gender = false, Time = 5.0,   MSG = "Puteti opri apasând Backspace - space sau X"  },
    ["TrumpWarning"] = { Gender = false, Time = 5.0,   MSG = "Daca trompeta ramâne blocata în mâna, reîncarcati pielea prin meniu pentru a o repara"  },
    ["ScenarioStop"] = { Gender = false, Time = 5.0,   MSG = "Puteti opri scenariul tastând [ /scenario stop ] în chat" },
    ["SetStatus"]    = { Gender = false, Time = false, MSG = "Seteaza-ti statusul!" },
  },

  ["Stables"] = {
    ["BlipName"]     = { Gender = false, Time = false, MSG = "Stable" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Ingrijitor cai" },
    ["HorseNamed"]   = { Gender = false, Time = 3.5,   MSG = "ti-ai pus numele calului: " },
    ["HorseBought"]  = { Gender = false, Time = 5.0,   MSG = "Calul tau este acum gata! A fost o placere sa fac afaceri cu tine." },
    ["HorseStored"]  = { Gender = false, Time = 5.0,   MSG = "Calul tau este depozitat, vom avea mare grija de el!" },
    ["NameHorse"]    = { Gender = false, Time = false, MSG = "Numeste-ti calul" },
    ["NoMoney"]      = { Gender = false, Time = 3.5,   MSG = "Imi pare rau dar nu ai bani suficienti pentru a cumpara acest cal!" },
    ["HorseReady"]   = { Gender = false, Time = 5.0,   MSG = "Calul tau este gata la grajdul lui!" },
    ["FetchHorse"]   = { Gender = false, Time = 5.0,   MSG = "Sigur, o clipa lasa-ma sa-ti iau calul!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0,   MSG = "Poftim domnule, la fel de sanatos ca oricând!" },
    ["OpenMenu"]     = { Gender = false, Time = false, MSG = "Open Menu" },
    ["StoreHorse"]   = { Gender = false, Time = false, MSG = "Magazin Cai" },
    ["NoHorseName"]  = { Gender = false, Time = 5.0,   MSG = "Scuze, dar trebuie sa-ti numesti calul!" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Bine ati venit, sper ca ati intrat în magazinul meu cu pantofi curati!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Yeee baiete, bine ai venit la magazinul meu, am niste cai pentru tine, domnule!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Uite asta, salut. Cum este ziua ta azi, domnule?" },
      { Gender = 'Female', Time = 5.0, MSG = "Bine ati venit, sper ca ati intrat în magazinul meu cu pantofi curati!" },
      { Gender = 'Female', Time = 5.0, MSG = "Yeee baiete, bine ai venit în magazinul meu!. Oh, scuzati-ma, doamna mea, am fost in extaz." },
      { Gender = 'Female', Time = 5.0, MSG = "Uite asta, salut. Cum este ziua ta azi, doamna mea?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Va multumim pentru vizita! Calatorii în siguranta, prietene!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Va doresc o zi buna, sa va bucurati de ziua dumneavoastra, domnule!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Bucura-te de ziua ta, domnule, multumesc pentru vizita." },
      { Gender = 'Male',   Time = 5.0, MSG = "Calatorii bune prietene, multumesc pentru vizita" },
      { Gender = 'Female', Time = 5.0, MSG = "Va multumim pentru vizita! Calatorii în siguranta, doamna mea!" },
      { Gender = 'Female', Time = 5.0, MSG = "Va doresc o zi buna, sa va bucurati de ziua dumneavoastra, doamna!" },
      { Gender = 'Female', Time = 5.0, MSG = "Bucura-te de ziua ta, doamna, multumesc pentru vizita." },
      { Gender = 'Female', Time = 5.0, MSG = "Calatorie buna doamna mea, multumesc pentru vizita" },
    }
  },

  ["Stores"] = {
    ["BlipName"]     = { Gender = false, Time = false, MSG = "Magazin General" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Vanzator" },
    ["MenuBuy"]      = { Gender = false, Time = false, MSG = "Magazin General (Buy)" },
    ["MenuSell"]     = { Gender = false, Time = false, MSG = "Inventar (Sell)" },
    ["ButtonBuy"]    = { Gender = false, Time = false, MSG = "Cumpara" },
    ["ButtonSell"]   = { Gender = false, Time = false, MSG = "Vinde" },
    ["ButtonMan"]    = { Gender = false, Time = false, MSG = "Manage" },
    ["NotInInvent"]  = { Gender = false, Time = 3.5,   MSG = "Nu ai destule articole in inventar" },
    ["Bought"]       = { Gender = false, Time = 3.5,   MSG = "Ai cumparat " },
    ["Sold"]         = { Gender = false, Time = 3.5,   MSG = "Ai vandut " },
    ["NoMoney"]      = { Gender = false, Time = 3.5,   MSG = "Nu ai suficienti bani pentru a cumpara aceast / aceasta cantitate de articole!" },
    ["NoItem"]       = { Gender = false, Time = false, MSG = "Nu ati selectat înca un articol!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Bine ati venit, sper ca ati intrat în magazinul meu cu pantofi curati!" },
      { Gender = false, Time = 5.0, MSG = "Buna, un client, acesta este al naibii de minunat!" },
      { Gender = false, Time = 5.0, MSG = "Uite asta, salut." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Multumesc de vizita!" },
      { Gender = false, Time = 5.0, MSG = "Va doresc o zi buna, sa va bucurati!" },
      { Gender = false, Time = 5.0, MSG = "Bucura-te de ziua ta, multumesc pentru vizita." },
      { Gender = false, Time = 5.0, MSG = "Calatorii bune prietene, multumesc pentru vizita" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "Cu ce va pot ajuta?" },
      { Gender = false, Time = 2.5, MSG = "Doresti sa cumperi ceva?" },
      { Gender = false, Time = 2.5, MSG = "Este ceva special pe care îl cauti?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "Cu ce va pot ajuta?" },
      { Gender = false, Time = 2.5, MSG = "O sa pun niste etichete care au doar douazeci de dolari în buzunar!" },
      { Gender = false, Time = 2.5, MSG = "Doresti sa vinzi ceva?" },
      { Gender = false, Time = 2.5, MSG = "Iau totul, de la peste la pâine, de la pâine la cafea. Numiti ce doriti!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Mi-a facut placere sa fac afaceri cu tine!" },
      { Gender = false, Time = 5.0, MSG = "Ma bucur ca v-am putut fi de folos!" },
      { Gender = false, Time = 5.0, MSG = "Ma bucur ca am putut sa te ajut" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Interactiune" }
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
