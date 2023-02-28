Lang['fi'] = {

  ["System"] = {
    ["Yes"]             = { Gender = false, Time = false, MSG = "Kyllä"},
    ["No"]              = { Gender = false, Time = false, MSG = "Ei" },
    ["Error"]           = { Gender = false, Time = false, MSG = "Virhe" },
    ["System"]          = { Gender = false, Time = false, MSG = "Järjestelmä" },
    ["Success"]         = { Gender = false, Time = false, MSG = "Onnistui" },
    ["BLCheck"]         = { Gender = false, Time = false, MSG = "Tarkistetaan Blacklistiä" },
    ["WLCheck"]         = { Gender = false, Time = false, MSG = "Tarkistetaan Whitelistiä" },
    ["SteamCheck"]      = { Gender = false, Time = false, MSG = "Tarkistetaan Steam-tunnistetta" },
    ["SteamConFail"]    = { Gender = false, Time = false, MSG = "Emme voi muodostaa yhteyttä Steamiin, varmista, että Steam oli auki ennen RedM:n avaamista!" },
    ["UserBanned"]      = { Gender = false, Time = false, MSG = "Sinulle on annettu porttikielto palvelimelle." },
    ["InfoDiscord"]     = { Gender = false, Time = false, MSG = "Lisätietoja on Discordissamme: ".._DiscordInvite.."" },
    ["NoBanReason"]     = { Gender = false, Time = false, MSG = "Ei syytä annettu" },
    ["WLPending"]       = { Gender = false, Time = false, MSG = "Whitelist pyyntösi odottaa hyväksyntää..." },
    ["WLDenied"]        = { Gender = false, Time = false, MSG = "Whitelist pyyntösi on hylätty, syy:" },
    ["WLMade1"]         = { Gender = false, Time = false, MSG = "Että pääset palvelimelle sinun tulee olla whitelistattu" },
    ["WLMade2"]         = { Gender = false, Time = false, MSG = "Whitelist pyyntö on automaattisesti luotu ja odottaa hyväksyntää." },
    ["NoCharFound"]     = { Gender = false, Time = false, MSG = "Tätä toimintoa ei voi suorittaa, hahmoa ei löytynyt!" },
    ["Language"]        = { Gender = false, Time = false, MSG = "Kieli" },
    ["LangNotEnter"]    = { Gender = false, Time = false, MSG = "Kieliparametri oli tyhjä!" },
    ["LanguageSetTo"]   = { Gender = false, Time = false, MSG = "Pelaajan kieleksi on määritetty " },
    ["LangNoSupport"]   = { Gender = false, Time = 5.0,   MSG = "Tätä kieltä ei tueta!" },
    ["WelcomeTo"]       = { Gender = false, Time = false, MSG = "Tervetuloa:" },
    ["InProgress"]      = { Gender = false, Time = false, MSG = "In Progress" },
    ["OpenMenu"]        = { Gender = false, Time = false, MSG = "Avaa valikko" },

    ["InDevelopment"]   = { Gender = false, Time = 5.0,   MSG = "This feature is in development!" },

    -- Cities
    ["Guarma"]          = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"]          = { Gender = false, Time = false, MSG = "Sisika Jail" },
    ["SaintDenis"]      = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"]         = { Gender = false, Time = false, MSG = "Pankki" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Pankin työntekijä" },
    ["NPCBusy"]      = { Gender = false, Time = 3.5, MSG = "Olen tällä hetkellä kiireinen toisen kansalaisen kanssa, hetki kiitos!" },
    ["NoAccount"]    = { Gender = false, Time = 3.5, MSG = "Olen pahoillani, mutta tillä ei ole pankkitiliä rekisteröitynä järjestelmäämme. Sinun on avattava pankkitili ennen kuin voit käyttää sitä!" },
    ["UseBankKey"]   = { Gender = false, Time = 3.5, MSG = "Use The Bank" },
    ["AlAccount"]    = { Gender = false, Time = 3.5, MSG = "Sinulla on jo pankkitili tässä pankissa!" },
    ["AcCreation"]   = { Gender = false, Time = 3.5, MSG = "Olet maksanut tilin avausmaksun, tiliäsi luodaan!" },
    ["AcCreated"]    = { Gender = false, Time = 3.5, MSG = "Pankkitilisi on tehty! Voit nyt avata pankkitilisi." },
    ["NoDepMoney"]   = { Gender = false, Time = 3.5, MSG = "Sinulla ei ole tarpeeksi rahaa tämän talletuksen tekemiseen!" },
    ["NoDepGold"]    = { Gender = false, Time = 3.5, MSG = "Sinulla ei ole tarpeeksi kultaa tämän talletuksen tekemiseen!" },
    ["NoWitMoney"]   = { Gender = false, Time = 3.5, MSG = "Sinulla ei ole tarpeeksi rahaa tämän käteisnoston tekemiseen!" },
    ["NoWitGold"]    = { Gender = false, Time = 3.5, MSG = "Sinulla ei ole tarpeeksi kultaa tehdäksesi tämän noston!" },
    ["DepMinMoney"]  = { Gender = false, Time = 3.5, MSG = "Talletussumman on oltava suurempi kuin 0,01 senttiä!" },
    ["DepMinGold"]   = { Gender = false, Time = 3.5, MSG = "Talletussumman on oltava suurempi kuin 0,01 kultaa!" },
    ["WitMinMoney"]  = { Gender = false, Time = 3.5, MSG = "Talletussumman on oltava suurempi kuin 0,01 senttiä!" },
    ["WitMinGold"]   = { Gender = false, Time = 3.5, MSG = "Talletussumman on oltava suurempi kuin 0,01 kultaa!" },
    ["ToFast"]       = { Gender = false, Time = 3.5, MSG = "Olen pahoillani, mutta voin tehdä vain yhden tapahtuman kerrallaan. Hetkinen, kiitos!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Talletit käteistä $" },
    ["DepDoneGold"]  = { Gender = false, Time = 3.5, MSG = "Talletit kultaa " },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Nostit käteistä $" },
    ["WitDoneGold"]  = { Gender = false, Time = 3.5, MSG = "Nostit kultaa " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Tervetuloa pankkiimme, miten voin palvella?" },
      { Gender = false, Time = false, MSG = "Tervetuloa, miten voin auttaa sinua?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Kiitos vierailustasi, ihanaa loppu päivää!" },
      { Gender = false, Time = false, MSG = "Olin iloinen voidessani auttaa sinua tänään, seuraavaan kertaan asti!" },
      { Gender = false, Time = false, MSG = "Jos voin vielä auttaa sinua, kerro siitä minulle!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0,   MSG = "Hahmoa ei valittu!" },
  },

  ["Clothing"] = {
    ["Name"]          = { Gender = false, Time = false, MSG = "Räätälin liike" },
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Räätäli" },
    ["NPCBusy"]       = { Gender = false, Time = 3.5,   MSG = "Olen tällä hetkellä kiireinen toisen asiakkaan kanssa, odota hetki. Olen kanssasi mahdollisimman pian!" },
    ["NeedToGo"]      = { Gender = false, Time = 3.5,   MSG = "Minulla on enemmän tekemistä ja enemmän asiakkaita hoidettavana, kerro minulle, kun tarvitset lisää apua" },
    ["DressingRoom"]  = { Gender = false, Time = false, MSG = "Pukuhuone" },
    ["Confirmation"]  = { Gender = false, Time = false, MSG = "Vahvista" },
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5,   MSG = "Haluatko vaihtaa vaatteita?" },
    ["Pay"]           = { Gender = false, Time = false, MSG = "Maksa" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Avaa valikko" },
    ["Outfits"]       = { Gender = false, Time = false, MSG = "Vaatteet" },

    ['EnterStore'] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Tervetuloa, toivon, että astuit myymälääni puhtailla kengillä!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Yeee, tervetuloa myymälääni sir, olen iloinen nähdessäni sinut!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Voi katsokaa sitä, hallo siellä. Kuinka päiväsi on tänään, herra?" },
      { Gender = 'Female', Time = 3.5, MSG = "Tervetuloa, toivon, että astuit myymälääni puhtailla kengillä!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee, tervetuloa kauppaani!. Voi, anteeksi neiti, olin yli innoissani." },
      { Gender = 'Female', Time = 3.5, MSG = "Voi katsokaa sitä, hallo siellä. Kuinka päiväsi on tänään, neiti.?" },
    },

    ['ExitStore'] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Kiitos vierailustasi! Turvallista matkaa ystäväni!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Toivotan teille hyvää päivää, nauttikaa päivästänne, herra!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Nauti päivästäsi sir, kiitos vierailustasi." },
      { Gender = 'Male',   Time = 3.5, MSG = "Hyviä matkoja ystäväni, kiitos vierailustasi" },
      { Gender = 'Female', Time = 3.5, MSG = "Kiitos vierailustasi! Turvallista matkaa neiti!" },
      { Gender = 'Female', Time = 3.5, MSG = "Toivotan sinulle hyvää päivää, nauttikaa päivästänne, rouva!" },
      { Gender = 'Female', Time = 3.5, MSG = "Nauti päivästäsi rouva, kiitos vierailustasi." },
      { Gender = 'Female', Time = 3.5, MSG = "Hyviä matkoja neiti, kiitos vierailustasi" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3, MSG = "Kuinka voin auttaa teitä, hyvä herra?" },
      { Gender = 'Female', Time = 3, MSG = "Kuinka voin auttaa sinua neiti?" },
    },

    ["EnterMenu"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Tottakai voin auttaa sinua hyvä herra. Ole hyvä ja kävele tiskin puolelle ja olen kanssasi mahdollisimman pian." },
      { Gender = 'Male',   Time = 3.5, MSG = "Ahh joo, vaatteita. Herra, tulit oikeaan paikkaan, seuraa minua." },
      { Gender = 'Female', Time = 3.5, MSG = "Niin kuin tahdotte neiti, autan teitä suurella mielelläni!" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Ahh joo, vaatteet. Rouva, tulit oikeaan paikkaan, seuraa minua." },
    },

    ["Reactions"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Se sopii sinulle hyvin, herra" },
      { Gender = 'Male',   Time = 5.0, MSG = "Voi katso nyt sitä, nähdä sinut sellaisena saa minut mustasukkaiseksi." },
      { Gender = 'Male',   Time = 5.0, MSG = "Voi poika, katsokaa sitä, se on ihmeellistä." },
      { Gender = 'Male',   Time = 5.0, MSG = "Se on hienointa, mitä meillä on kaupungissa, et löydä parempaa mistään muualta!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Niin kaunis, niin erityinen, ja minä pystyn tekemään sen sinulle, jos haluat syytä." },
      { Gender = 'Male',   Time = 5.0, MSG = "Se sopii sinulle täydellisesti" },
      { Gender = 'Male',   Time = 5.0, MSG = "Hitsi, koska se on tehty erityisesti sinulle!" },
      { Gender = 'Female', Time = 5.0, MSG = "Se sopii sinulle hyvin, herra" },
      { Gender = 'Female', Time = 5.0, MSG = "Voi katso nyt sitä, nähdä sinut sellaisena saa minut mustasukkaiseksi." },
      { Gender = 'Female', Time = 5.0, MSG = "Voi poika, katsokaa sitä, se on ihmeellistä." },
      { Gender = 'Female', Time = 5.0, MSG = "Se on hienointa, mitä meillä on kaupungissa, et löydä parempaa mistään muualta!" },
      { Gender = 'Female', Time = 5.0, MSG = "Niin kaunis, niin erityinen, ja minä pystyn tekemään sen sinulle, jos haluat syytä." },
      { Gender = 'Female', Time = 5.0, MSG = "Se sopii sinulle täydellisesti" },
      { Gender = 'Female', Time = 5.0, MSG = "Hitsi, koska se on tehty erityisesti sinulle!" },
    }
  },

  ["Skins"] = {
    ['Male']      = { Gender = false, Time = false, MSG = "Mies"                                          },
    ['Female']    = { Gender = false, Time = false, MSG = "Nainen"                                        },
    ['Select']    = { Gender = false, Time = false, MSG = "Valitse"                                       },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Valitse sukupuoli"                             },
    ["ErrAge"]    = { Gender = false, Time = 3.0,   MSG = "Et ole asettanut hahmollesi ikää!"             },
    ["ErrName"]   = { Gender = false, Time = 3.0,   MSG = "Et ole asettanut hahmollesi nimeä!"            },
    ["ErrNatio"]  = { Gender = false, Time = 3.0,   MSG = "Et ole asettanut hahmollesi kansalaisuutta!"   },
    ["ErrTorso"]  = { Gender = false, Time = 3.0,   MSG = "Et ole asettanut hahmollesi paidan tyyppiä!"   },
    ["ErrLegs"]   = { Gender = false, Time = 3.0,   MSG = "Et ole asettanut hahmollesi jalkojen tyyppiä!" },
    ["ErrHead"]   = { Gender = false, Time = 3.0,   MSG = "Et ole asettanut hahmollesi pään tyyppiä!"     },
    ["ErrEyes"]   = { Gender = false, Time = 3.0,   MSG = "Et ole asettanut hahmollesi silmien tyyppiä!"  },
    ["ErrHair"]   = { Gender = false, Time = 3.0,   MSG = "Et ole asettanut hahmollesi hiuksien tyyppiä!" },
  },

  ["Spawner"] = {
    ['Cutscene']    = { Gender = false, Time = false, MSG = "Välikohtaus" },
    ["DriverName"]  = { Gender = false, Time = false, MSG = "StageCoach kuljettaja" },
    ["MusicOn"]     = { Gender = false, Time = 5.0,   MSG = "Sammutit musiikin" },
    ["MusicOff"]    = { Gender = false, Time = 5.0,   MSG = "Otit musiikin käyttöön" },
    ["ErrStepOut"]  = { Gender = false, Time = 5.0,   MSG = "Et voi astua ulos välikohtauksessa." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Pysäytä | Käynnistä musiikki" },
    ["StepOut"]     = { Gender = false, Time = false, MSG = "Astu ulos" },
    ["Cinema"]      = { Gender = false, Time = false, MSG = "Cinema" },

    ['Welcome'] = {
      { Gender = false, Time = 5.0,   MSG = "Tervetuloa maakuntaamme, nauttikaa vierailustanne!" },
      { Gender = false, Time = 5.0,   MSG = "Kerron sen, että olet älykäs, koska valitset tämän läänin! Haha, tervetuloa ystäväni!" },
    },

    ["Advice"] = {
       { Gender = false, Time = 5.0,   MSG = "Vien sinut hienon räätälin luo, joka voisi auttaa sinua uusissa vaatteissa" },
       { Gender = false, Time = 5.0,   MSG = "Näin pitkän matkan jälkeen tarvitset hienon räätälin. Anna minun tehdä kunnia ja tuoda sinut yhteen." },
    },

    ["Tailor"] = {
       { Gender = false, Time = 5.0,   MSG = "Lähellä on räätäli, harkitsisin uusien vaatteiden hankkimista." },
       { Gender = false, Time = 5.0,   MSG = "Löydät räätälin kulman takaa, harkitsisin uusien vaatteiden hankkimista." },
    },

    ["Goodbye"] = {
       { Gender = false, Time = 5.0,   MSG = "Hyvästi ystäväni, oli mukavaa tavata sinut! Nauti vierailustasi!" },
       { Gender = false, Time = 5.0,   MSG = "Oli ihanaa tavata sinut, nauttikaa vierailustanne!" },
       { Gender = false, Time = 5.0,   MSG = "Se on sitten 12.25 dollaria... hah vitsailin vain, nauti vierailustasi ystäväni!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0,   MSG = "Se on mukavin maakunta, jossa olen asunut, kaupungissa on paljon tekemistä, saatat pitää siitä." },
      { Gender = false, Time = 7.0,   MSG = "Eikö olekin hauskaa, kuinka sää voi joskus olla, se voi vaihtua kuin hullu! Et todellakaan halua yskiä yhdessä niistä myrskyistä, kerron sinulle." },
      { Gender = false, Time = 5.0,   MSG = "Näyttää siltä, että olet matkustanut jo jonkin aikaa. Toivon, että matkasi oli ilman ongelmia." },
      { Gender = false, Time = 5.0,   MSG = "Olenko se vain minä, vai onko se hyvin haiseva täällä." },
      { Gender = false, Time = 5.0,   MSG = "Katsokaa sitä säätä, eikö se ole kaunista" },
      { Gender = false, Time = 5.0,   MSG = "Olemme melkein määränpäässämme. Toivottavasti nautit kyydistä toistaiseksi." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"]     = { Gender = false, Time = false,  MSG = "Avaa valikko" },
    ["Inventory"]    = { Gender = false, Time = false,  MSG = "Reppu" },
    ["AdminMenu"]    = { Gender = false, Time = false,  MSG = "Admin valikko" },
    ["Zoning"]       = { Gender = false, Time = false,  MSG = "Kaavoitus" },
    ["AutoMove"]     = { Gender = false, Time = false,  MSG = "Aloita Auto Move" },
    ["StopMove"]     = { Gender = false, Time = false,  MSG = "Lopeta Auto Move" },
    ["Unequipt"]     = { Gender = false, Time = false,  MSG = "Laita ase pois" },
    ["Error"]        = { Gender = false, Time = false,  MSG = "Virhe" },
    ["System"]       = { Gender = false, Time = false,  MSG = "Järjestelmä" },
    ["Initialize"]   = { Gender = false, Time = 3.0,    MSG = "Asetusvalikko ladattu!" },
    ["Initialize2"]  = { Gender = false, Time = 5.0,    MSG = "Voit nyt avata asetusvalikon vasemmalla alt-näppäimellä!" },
    ["NoNextPage"]   = { Gender = false, Time = 3.0,    MSG = "Ei seuraavaa sivua tällä hetkellä" },
    ["NoBackPage"]   = { Gender = false, Time = 3.0,    MSG = "Ei edellistä sivua tällä hetkellä" },
    ["CoordsSave"]   = { Gender = false, Time = 5.0,    MSG = "Olet tallentanut koordinaatit!" },
    ["ErrSkin"]      = { Gender = false, Time = 5.0,    MSG = "Sinulla ei ole ulkonäköä ladattavana! Luo ensin ulkonäkö!" },
    ["LogOut"]       = { Gender = false, Time = 5.0,    MSG = "Kirjaudutaan ulos" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0,    MSG = "Tallennetaan hahmosi sijaintia" },
    ["MusicOn"]      = { Gender = false, Time = 5.0,    MSG = "Kaikki in game -musiikki on otettu käyttöön!" },
    ["MusicOff"]     = { Gender = false, Time = 5.0,    MSG = "Kaikki in game -musiikki on otettu pois käytöstä!" },
    ["MusicUnable"]  = { Gender = false, Time = 5.0,    MSG = "Olet poistanut musiikin käytöstä asetuksissa, etkä voi kuunnella musiikkia!" },
    ["VolSet"]       = { Gender = false, Time = 5.0,    MSG = "Äänenvoimakkuus asetettu %" },
    ["VolSet2"]      = { Gender = false, Time = 5.0,    MSG = "Äänenvoimakkuus tulee voimaan seuraavassa kappaleessa!" },
    ["CharDel"]      = { Gender = false, Time = 10.0,   MSG = "Hahmon poisto käynnissä" },
    ["DelDone"]      = { Gender = false, Time = 5.0,    MSG = "Kaikki hahmotiedot puhdistetaan, viemme sinut takaisin hahmonvalintavalikkoon" },
  },

  ["FastTravel"] = {
    ["ZoneName"]    = { Gender = false, Time = false,  MSG = "Matkusta nopeasti" },
    ["NPCName"]     = { Gender = false, Time = false,  MSG = "Dokus-matkatoimisto" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0,    MSG = "Mukavaa matkaa, ja kiitos että käytät palveluitamme. - Dokus-matkatoimisto" },
      { Gender = false, Time = 5.0,    MSG = "Toivomme, että nautit matkastasi, turvallisista matkoista" },
      { Gender = false, Time = 5.0,    MSG = "Olemme iloisia, että valitset Dokus-matkatoimiston matkustukseen!" },
      { Gender = false, Time = 5.0,    MSG = "Voit astua veneeseen laiturilla, turvalliset matkat" },
    }

  },

  ["GunStore"] = {
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Asekauppias" },
    ["BlipName"]      = { Gender = false, Time = false, MSG = "Asekauppa" },
    ["NoMoney"]       = { Gender = false, Time = 3.0,   MSG = "Sinulla ei ole tarpeeksi rahaa!" },
    ["BoughtAmmo1"]   = { Gender = false, Time = 3.0,   MSG = "Sinä ostit " },
    ["BoughtAmmo2"]   = { Gender = false, Time = 3.0,   MSG = " Ammusta!" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Avaa valikko" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0,   MSG = "Tämä tuote ei tällä hetkellä toimi odotetulla tavalla, eikä sitä myydä tällä hetkellä!" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Tervetuloa, toivottavasti astuit myymälääni puhtailla kengillä!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Yeee poika, tervetuloa kauppaani, onko minulla hevosia sinulle sir!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Voi katsokaa sitä, hallo siellä. Kuinka päiväsi on tänään, herra?" },
      { Gender = 'Female', Time = 3.5, MSG = "Tervetuloa, toivottavasti astuit myymälääni puhtailla kengillä!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee poika, tervetuloa kauppaani!. Voi, anteeksi neiti, olin yli innoissani." },
      { Gender = 'Female', Time = 3.5, MSG = "Voi katsokaa sitä, hallo siellä. Kuinka päiväsi on tänään, neiti?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Kiitos vierailustasi! Turvallista matkaa ystäväni!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Toivotan teille hyvää päivää, nauttikaa päivästänne, herra.!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Nauti päivästäsi sir, kiitos vierailustasi." },
      { Gender = 'Male',   Time = 3.5, MSG = "Hyviä matkoja ystäväni, kiitos vierailustasi" },
      { Gender = 'Female', Time = 3.5, MSG = "Kiitos vierailustasi! Turvallista matkaa neiti!" },
      { Gender = 'Female', Time = 3.5, MSG = "Toivotan sinulle hyvää päivää, muista nauttia päivästäsi rouva!" },
      { Gender = 'Female', Time = 3.5, MSG = "Nauti päivästäsi rouva, kiitos vierailustasi." },
      { Gender = 'Female', Time = 3.5, MSG = "Hyvää matkaa neiti, kiitos vierailustasi"},
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Kuinka voin auttaa teitä, hyvä herra?" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Kuinka voin auttaa sinua neiti?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"]      = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"]      = { Gender = false, Time = false, MSG = "Loot Box" },
    ["OpenBox"]      = { Gender = false, Time = false, MSG = "Paina ~color_green~E~q~ A'avaaksesi" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "Sinulla ei ole valittua kohdetta pudotettavaksi maahan! Valitse ensin kohde!" },
    ["NotEnough"]    = { Gender = false, Time = false, MSG = "Sinulla ei ole tarpeeksi tätä tuotetta repussasi!" },
    ["NoAmount"]     = { Gender = false, Time = false, MSG = "Summaparametrissa ei ole määritetty summaa. Et voi pudottaa tuotettasi!" },
    ["ToClose"]      = { Gender = false, Time = 5.0,   MSG = "Olet liiän lähellä Dropboxia. Mene lähemmäksi tai kauemmas!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Olen niin nälkäinen, tarvitsen todella jotain syötävää ..." },
      { Gender = false, Time = 5.0, MSG = "Olen niin nälkäinen, tarvitsen todella jotain syötävää" },
      { Gender = false, Time = 5.0, MSG = "Tunnen oloni pyörryttäväksi, tarvitsen jotain syötävää" },
      { Gender = false, Time = 5.0, MSG = "Voi vatsaani sattuu, en ole vielä syönyt" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Olen niin janoinen, tarvitsen jotain juotavaa" },
      { Gender = false, Time = 5.0, MSG = "Suuni tuntuu kuivalta, tarvitsen vettä" },
      { Gender = false, Time = 5.0, MSG = "Uhg, jos en juo pian, saatan pyörtyä" },
      { Gender = false, Time = 5.0, MSG = "En ole koskaan elämässäni tuntenut näin paljoa janoa" },
    }
  },

  ["Scavenger"] = {
    ["Name"]        = { Gender = false, Time = false, MSG = "Raadonsyöjä"  },
    ["Rewards"]     = { Gender = false, Time = 3.0,   MSG = "Olet poiminut"  },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0,   MSG = "Tämä pensas on jo poimittu" },
    ["PromptHarv"]  = { Gender = false, Time = false, MSG = "Poimi" },
  },

  ["ScratchCards"] = {
    ["NPCName"]     = { Gender = false, Time = false, MSG = "Pankki työntekijä"  },
    ["NoTickets"]   = { Gender = false, Time = 5.0,   MSG = "Sinulla ei ole arpajaislippuja hallussasi!"  },
    ["WonCard"]     = { Gender = false, Time = 5.0,   MSG = "Olet voittanut $" },
    ["WonTotal"]    = { Gender = false, Time = 5.0,   MSG = "Olet voittanut yhteensä $" },
    ["PromptHarv"]  = { Gender = false, Time = false, MSG = "Poimi" },
    ["BetterLuck"]  = { Gender = false, Time = false, MSG = "Parempi onni ensi kerralla" },
    ["NoWin"]       = { Gender = false, Time = 5.0,   MSG = "Sadly you've not won anything this time" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"]    = { Gender = false, Time = false, MSG = "Tanssi" },
    ["MenuStop"]     = { Gender = false, Time = false, MSG = "Lopeta" },
    ["MenuNext"]     = { Gender = false, Time = false, MSG = "Seuraava" },
    ["MenuBack"]     = { Gender = false, Time = false, MSG = "Takaisin" },
    ["ShowFear"]     = { Gender = false, Time = false, MSG = "Näytä pelkoa" },
    ["StopTrumpet"]  = { Gender = false, Time = 5.0,   MSG = "Voit lopettaa tekemisen painamalla näppäintä - välilyönti tai X"  },
    ["TrumpWarning"] = { Gender = false, Time = 5.0,   MSG = "Jos trumpetti pysyy jumissa kädessäsi, lataa ihosi uudelleen valikon kautta korjataksesi sen"  },
    ["ScenarioStop"] = { Gender = false, Time = 5.0,   MSG = "Voit pysäyttää skenaarion kirjoittamalla chattiin [ /scenario stop ]" },
    ["SetStatus"]    = { Gender = false, Time = false, MSG = "Aseta tilasi!" },
  },

  ["Stables"] = {
    ["BlipName"]     = { Gender = false, Time = false, MSG = "Talli" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Tallin hoitaja" },
    ["HorseNamed"]   = { Gender = false, Time = 3.5,   MSG = "Nimesit hevosesi: " },
    ["HorseBought"]  = { Gender = false, Time = 5.0,   MSG = "Hevosesi on nyt valmis! Oli ilo tehdä liiketoimintaa kanssasi." },
    ["HorseStored"]  = { Gender = false, Time = 5.0,   MSG = "Hevosesi on tallilla, pidämme siitä hyvää huolta!" },
    ["NameHorse"]    = { Gender = false, Time = false, MSG = "Nimeä hevonen" },
    ["NoMoney"]      = { Gender = false, Time = 3.5,   MSG = "Sinulla ei ole tarpeeksi rahaa tämän hevosen ostamiseen!" },
    ["HorseReady"]   = { Gender = false, Time = 5.0,   MSG = "Sinun hevonen on valmis tallillaan!" },
    ["FetchHorse"]   = { Gender = false, Time = 5.0,   MSG = "Toki, pieni hetki anna minun saada hevosesi!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0,   MSG = "Tässä teille herra, terveempi kuin koskaan!" },
    ["OpenMenu"]     = { Gender = false, Time = false, MSG = "Avaa valikko" },
    ["StoreHorse"]   = { Gender = false, Time = false, MSG = "Store Horse" },
    ["NoHorseName"]  = { Gender = false, Time = 5.0,   MSG = "Anteeksi, mutta sinun on annettava hevosellesi nimi" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Tervetuloa, toivon, että astuit myymälääni puhtailla kengillä!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Yeee poika, tervetuloa kauppaani, minulla on hevosia sinulle sir!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Voi katsokaa sitä, hallo siellä. Millainen on päiväsi tänään, herra?" },
      { Gender = 'Female', Time = 5.0, MSG = "Tervetuloa, toivon, että astuit myymälääni puhtailla kengillä" },
      { Gender = 'Female', Time = 5.0, MSG = "Yeee poika, tervetuloa kauppaani!. Voi, anteeksi neiti, olin yli innoissani." },
      { Gender = 'Female', Time = 5.0, MSG = "Voi katsokaa sitä, hallo siellä. Kuinka päiväsi on tänään, neiti?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',     Time = 5.0, MSG = "Kiitos vierailustasi! Turvallista matkaa ystäväni!" },
      { Gender = 'Male',     Time = 5.0, MSG = "Toivotan teille hyvää päivää, nauttikaa päivästänne, herra.!" },
      { Gender = 'Male',     Time = 5.0, MSG = "Nauti päivästäsi sir, kiitos vierailustasi." },
      { Gender = 'Male',     Time = 5.0, MSG = "Hyviä matkoja ystäväni, kiitos vierailustasi" },
      { Gender = 'Female',   Time = 5.0, MSG = "Kiitos vierailustasi! Turvallista matkaa neiti!" },
      { Gender = 'Female',   Time = 5.0, MSG = "Toivotan sinulle hyvää päivää, voitko nauttia päivästäsi rouva!" },
      { Gender = 'Female',   Time = 5.0, MSG = "Nauti päivästäsi rouva, kiitos vierailustasi." },
      { Gender = 'Female',   Time = 5.0, MSG = "Hyviä matkoja neiti, kiitos vierailustasi" },
    }
  },

  ["Stores"] = {
    ["BlipName"]     = { Gender = false, Time = false, MSG = "Sekatavarakauppa" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Yleinen myymälätyöntekijä" },
    ["MenuBuy"]      = { Gender = false, Time = false, MSG = "Sekatavarakauppa (Osta)" },
    ["MenuSell"]     = { Gender = false, Time = false, MSG = "Reppu (Myy)" },
    ["ButtonBuy"]    = { Gender = false, Time = false, MSG = "Osta" },
    ["ButtonSell"]   = { Gender = false, Time = false, MSG = "Myy" },
    ["ButtonMan"]    = { Gender = false, Time = false, MSG = "Hallinnoi" },
    ["NotInInvent"]  = { Gender = false, Time = 3.5,   MSG = "Sinulla ei ole niin paljoa repussasi!" },
    ["Bought"]       = { Gender = false, Time = 3.5,   MSG = "Sinä ostit " },
    ["Sold"]         = { Gender = false, Time = 3.5,   MSG = "Sinä myit " },
    ["NoMoney"]      = { Gender = false, Time = 3.5,   MSG = "Sinulla ei ole tarpeeksi rahaa ostaaksesi tätä / tätä määrää tuotteita!" },
    ["NoItem"]       = { Gender = false, Time = false, MSG = "Et ole valinnut vielä mitään!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Tervetuloa, toivon, että astuit myymälääni puhtailla kengillä!" },
      { Gender = false, Time = 5.0, MSG = "Hei asiakas, tämä on V***** mahtavaa!" },
      { Gender = false, Time = 5.0, MSG = "Voi katsokaa sitä, hallo siellä." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Thanks for your visit! Safe Travels!" },
      { Gender = false, Time = 5.0, MSG = "Toivotan sinulle hyvää päivää, nauttikaa!" },
      { Gender = false, Time = 5.0, MSG = "Nauti päivästäsi, kiitos vierailustasi." },
      { Gender = false, Time = 5.0, MSG = "Hyviä matkoja ystäväni, kiitos vierailustasi" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "Kuinka voin auttaa sinua?" },
      { Gender = false, Time = 2.5, MSG = "Ah, haluat ostaa jotain vai mitä?" },
      { Gender = false, Time = 2.5, MSG = "Onko se jotain erityistä, mitä etsit?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "Kuinka voin auttaa sinua?" },
      { Gender = false, Time = 2.5, MSG = "Aion pistää joitain tunnisteita, joissa on vain kaksikymmentä dollaria taskussani!" },
      { Gender = false, Time = 2.5, MSG = "Ah haluat myydä jotain vai mitä?" },
      { Gender = false, Time = 2.5, MSG = "Otan kaiken kalasta leipään, leivästä kahviin. Sinä nimeät sen!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Oli ilo tehdä liiketoimintaa kanssasi!" },
      { Gender = false, Time = 5.0, MSG = "Olen iloinen, että olisin voinut olla palveluksessasi!" },
      { Gender = false, Time = 5.0, MSG = "Olen iloinen, että pystyin auttamaan sinua" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Vuorovaikutuksessa" }
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
