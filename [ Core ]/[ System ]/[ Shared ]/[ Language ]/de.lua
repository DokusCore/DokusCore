Lang['de'] = {

  ["System"] = {
    ["Yes"] = { Gender = false, Time = false, MSG = "Ja" },
    ["No"] = { Gender = false, Time = false, MSG = "Nein" },
    ["Error"] = { Gender = false, Time = false, MSG = "FEHLER" },
    ["System"] = { Gender = false, Time = false, MSG = "System" },
    ["Success"] = { Gender = false, Time = false, MSG = "Erfolg" },
    ["BLCheck"] = { Gender = false, Time = false, MSG = "Checking Blacklist" },
    ["WLCheck"] = { Gender = false, Time = false, MSG = "Checking Whitelist" },
    ["SteamCheck"] = { Gender = false, Time = false, MSG = "Überprüfung der Steam-Identifikation" },
    ["SteamConFail"] = { Gender = false, Time = false, MSG = "Wir können keine Verbindung zur Steam-API herstellen, vergewissern Sie sich, dass Sie Steam geöffnet haben, bevor Sie RedM öffnen!" },
    ["UserBanned"] = { Gender = false, Time = false, MSG = "Sie wurden von diesem Server gesperrt." },
    ["InfoDiscord"] = { Gender = false, Time = false, MSG = "Für weitere Informationen besuchen Sie unseren Discord ".._DiscordInvite.."" },
    ["NoBanReason"] = { Gender = false, Time = false, MSG = "Kein Grund angegeben" },
    ["WLPending"] = { Gender = false, Time = false, MSG = "Ihr Whitelist-Antrag steht noch aus..." },
    ["WLDenied"] = { Gender = false, Time = false, MSG = "Ihre Whitelist-Anfrage wurde aus folgendem Grund abgelehnt:" },
    ["WLMade1"] = { Gender = false, Time = false, MSG = "Um auf diesen Server zugreifen zu können, müssen Sie auf der Whitelist stehen." },
    ["WLMade2"] = { Gender = false, Time = false, MSG = "Die Whitelist-Anfrage wurde automatisch gestellt und steht nun aus." },
    ["NoCharFound"] = { Gender = false, Time = false, MSG = "Diese Aktion kann nicht ausgeführt werden, kein Zeichen gefunden!" },
    ["Language"] = { Gender = false, Time = false, MSG = "Sprache" },
    ["LangNotEnter"] = { Gender = false, Time = false, MSG = "Der Sprachparameter war leer!" },
    ["LanguageSetTo"] = { Gender = false, Time = false, MSG = "Sprache des Clients ist auf eingestellt" },
    ["LangNoSupport"] = { Gender = false, Time = 5.0,   MSG = "Diese Sprache wird nicht unterstützt!" },
    ["WelcomeTo"] = { Gender = false, Time = false, MSG = "Willkommen bei:" },
    ["InProgress"] = { Gender = false, Time = false, MSG = "In Bearbeitung" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Menü öffnen" },
    ["InDevelopment"] = { Gender = false, Time = 5.0, MSG = "Diese Funktion ist in Entwicklung!" },

    -- Cities
    ["Guarma"] = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"] = { Gender = false, Time = false, MSG = "Sisika-Gefängnis" },
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Banking" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Bankier Worker" },
    ["NPCBusy"] = { Gender = false, Time = 3.5,   MSG = "Ich bin gerade mit einem anderen Bürger beschäftigt, einen Moment bitte!" },
    ["NoAccount"] = { Gender = false, Time = 3.5,   MSG = "Es tut mir leid, aber wir haben kein Bankkonto in unseren Protokollen registriert. Sie müssen unbedingt ein Bankkonto eröffnen, bevor Sie eines verwenden können!" },
    ["UseBankKey"] = { Gender = false, Time = 3.5,   MSG = "Use The Bank" },
    ["AlAccount"] = { Gender = false, Time = 3.5,   MSG = "Sie haben bereits ein Bankkonto bei dieser Bank!" },
    ["AcCreation"] = { Gender = false, Time = 3.5,   MSG = "Sie haben Ihre Kontogebühr bezahlt, Konto wird erstellt!" },
    ["AcCreated"] = { Gender = false, Time = 3.5,   MSG = "Ihr Bankkonto wurde erstellt! Sie können jetzt Ihr Bankkonto eröffnen." },
    ["NoDepMoney"] = { Gender = false, Time = 3.5,   MSG = "Du hast nicht genug Geld, um diese Einzahlung zu tätigen!" },
    ["NoDepGold"] = { Gender = false, Time = 3.5,   MSG = "Du hast nicht genug Gold, um diese Einzahlung zu tätigen!" },
    ["NoWitMoney"] = { Gender = false, Time = 3.5,   MSG = "Du hast nicht genug Geld, um diese Auszahlung vorzunehmen!" },
    ["NoWitGold"] = { Gender = false, Time = 3.5,   MSG = "Du hast nicht genug Gold, um diese Auszahlung vorzunehmen!" },
    ["DepMinMoney"] = { Gender = false, Time = 3.5,   MSG = "Der Einzahlungsbetrag muss größer als 0,01 Cent sein!" },
    ["DepMinGold"] = { Gender = false, Time = 3.5,   MSG = "Der Einzahlungsbetrag muss größer als 0,01 Gold sein!" },
    ["WitMinMoney"] = { Gender = false, Time = 3.5,   MSG = "Der Einzahlungsbetrag muss größer als 0,01 Cent sein!" },
    ["WitMinGold"] = { Gender = false, Time = 3.5,   MSG = "Der Einzahlungsbetrag muss größer als 0,01 Gold sein!" },
    ["ToFast"] = { Gender = false, Time = 3.5,   MSG = "Es tut mir leid, aber ich kann nur 1 Transaktion gleichTimeig durchführen. Einen Moment bitte!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5,   MSG = "Sie haben eine Einzahlung von $ getätigt" },
    ["DepDoneGold"] = { Gender = false, Time = 3.5,   MSG = "Sie haben eine Einzahlung von getätigt" },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5,   MSG = "Sie haben $ abgehoben" },
    ["WitDoneGold"] = { Gender = false, Time = 3.5,   MSG = "Sie haben eine Auszahlung von vorgenommen" },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Willkommen bei unserer Bank, wie kann ich Ihnen behilflich sein?" },
      { Gender = false, Time = false, MSG = "Willkommen, wie kann ich Ihnen helfen?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Danke fürs Vorbeischauen, schönen Tag noch!" },
      { Gender = false, Time = false, MSG = "Ich war mein Bitte, Ihnen heute zu helfen, bis zum nächsten Mal!" },
      { Gender = false, Time = false, MSG = "Wenn es irgendetwas gibt, bei dem ich Ihnen noch helfen kann, lassen Sie es mich einfach wissen!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0, MSG = "Kein Charakter ausgewählt!" },
  },

  ["Clothing"] = {
    ["Name"]          = { Gender = false, Time = false, MSG = "Bekleidungsgeschäft" },
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Schneider" },
    ["NPCBusy"]       = { Gender = false, Time = 3.5,   MSG = "Ich bin gerade mit einem anderen Kunden beschäftigt, warten Sie einen Moment. Ich bin so schnell wie möglich bei Ihnen!" },
    ["NeedToGo"]      = { Gender = false, Time = 3.5,   MSG = "Ich habe mehr zu tun und mich um mehr Kunden zu kümmern, lassen Sie es mich wissen, wenn Sie weitere Hilfe benötigen" },
    ["DressingRoom"]  = { Gender = false, Time = false, MSG = "Ankleidezimmer" },
    ["Confirmation"]  = { Gender = false, Time = false, MSG = "Bestätigung" },
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5,   MSG = "Möchtest du die Kleidung wechseln?" },
    ["Pay"]           = { Gender = false, Time = false, MSG = "Bezahlen" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Menü öffnen" },
    ["Outfits"]       = { Gender = false, Time = false, MSG = "Outfits" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Willkommen, ich hoffe, Sie betreten meinen Laden mit sauberen Schuhen!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Yeee Junge, willkommen in meinem Laden, Sir, ich freue mich, Sie zu sehen!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Oh, sehen Sie sich das an, hallo. Wie ist Ihr Tag heute, Sir?" },
      { Gender = 'Female', Time = 3.5, MSG = "Willkommen, ich hoffe, Sie betreten meinen Laden mit sauberen Schuhen!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee Junge, willkommen in meinem Laden! Oh, entschuldigen Sie, meine Dame, ich war überexistiert." },
      { Gender = 'Female', Time = 3.5, MSG = "Oh, sieh dir das an, hallo. Wie ist dein Tag heute, meine Dame?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Danke für Ihren Besuch! Sichere Reisen, mein Freund!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Ich wünsche Ihnen einen guten Tag, mögen Sie .0Ihren Tag genießen, Sir!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Genießen Sie Ihren Tag, Sir, danke für Ihren Besuch." },
      { Gender = 'Male',   Time = 3.5, MSG = "Gute Reise, mein Freund, danke für deinen Besuch" },
      { Gender = 'Female', Time = 3.5, MSG = "Danke für Ihren Besuch! Sichere Reise, meine Dame!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ich wünsche Ihnen einen schönen Tag, genießen Sie Ihren Tag Ma'am!" },
      { Gender = 'Female', Time = 3.5, MSG = "Genießen Sie Ihren Tag Ma'am, danke für Ihren Besuch." },
      { Gender = 'Female', Time = 3.5, MSG = "Gute Reise, meine Dame, danke für Ihren Besuch" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3.0, MSG = "Wie kann ich Ihnen helfen, guter Herr?" },
      { Gender = 'Female', Time = 3.0, MSG = "Wie kann ich Ihnen helfen, meine Dame?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Ahh ja, Kleidung. Sir, Sie sind an der richtigen Stelle, bitte folgen Sie mir." },
      { Gender = 'Male',   Time = 3.5, MSG = "Natürlich kann ich Ihnen helfen, guter Herr. Bitte gehen Sie zur Seite des Schalters, ich werde so schnell wie möglich bei Ihnen sein." },
      { Gender = 'Female', Time = 3.5, MSG = "Wie es Ihnen gefällt, meine Dame, ich helfe Ihnen gerne!" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Ahh ja, Kleidung. Ma'am, Sie sind an der richtigen Stelle, bitte folgen Sie mir." },
    },

    ["Reactions"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Das passt Ihnen gut, Sir" },
      { Gender = 'Male',   Time = 5.0, MSG = "Oh sieh dir das an, dich so zu sehen macht mich neidisch." },
      { Gender = 'Male',   Time = 5.0, MSG = "Oh Junge, schau dir das an, es ist wunderbar." },
      { Gender = 'Male',   Time = 5.0, MSG = "Es ist das Beste, was wir in der Stadt haben, Sie finden nirgendwo anders etwas Besseres!" },
      { Gender = 'Male',   Time = 5.0, MSG = "So schön, so besonders, und ich bin derjenige, der in der Lage ist, es für dich zu machen, wenn du es aus einem Grund magst." },
      { Gender = 'Male',   Time = 5.0, MSG = "Das steht dir wunderbar" },
      { Gender = 'Male',   Time = 5.0, MSG = "Meine Güte, wie es speziell für Sie gemacht wurde!" },
      { Gender = 'Female', Time = 5.0, MSG = "Das passt Ihnen gut, Sir" },
      { Gender = 'Female', Time = 5.0, MSG = "Oh sieh dir das an, dich so zu sehen macht mich neidisch." },
      { Gender = 'Female', Time = 5.0, MSG = "Oh Junge, schau dir das an, es ist wunderbar." },
      { Gender = 'Female', Time = 5.0, MSG = "Es ist das Beste, was wir in der Stadt haben, Sie finden nirgendwo anders etwas Besseres!" },
      { Gender = 'Female', Time = 5.0, MSG = "So schön, so besonders, und ich bin derjenige, der in der Lage ist, es für dich zu machen, wenn du es aus einem Grund magst." },
      { Gender = 'Female', Time = 5.0, MSG = "Das steht dir wunderbar" },
      { Gender = 'Female', Time = 5.0, MSG = "Mein Gott, wie es speziell für Sie gemacht wurde!" },
    }
  },

  ["Skins"] = {
    ['Male']      = { Gender = false, Time = false, MSG = "Male" },
    ['Female']    = { Gender = false, Time = false, MSG = "Female" },
    ['Select']    = { Gender = false, Time = false, MSG = "Select" },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Wähle Gender" },
    ["ErrAge"]    = { Gender = false, Time = 3.0,   MSG = "Du hast das Alter deiner Charaktere nicht festgelegt!" },
    ["ErrName"]   = { Gender = false, Time = 3.0,   MSG = "Sie haben den Namen Ihres Charakters nicht festgelegt!" },
    ["ErrNatio"]  = { Gender = false, Time = 3.0,   MSG = "Sie haben die Nationalität Ihres Charakters nicht festgelegt!" },
    ["ErrTorso"]  = { Gender = false, Time = 3.0,   MSG = "Sie haben den Oberkörpertyp Ihres Charakters nicht festgelegt!" },
    ["ErrLegs"]   = { Gender = false, Time = 3.0,   MSG = "Sie haben den Beintyp Ihres Charakters nicht eingestellt!" },
    ["ErrHead"]   = { Gender = false, Time = 3.0,   MSG = "Sie haben den Kopftyp Ihres Charakters nicht festgelegt!" },
    ["ErrEyes"]   = { Gender = false, Time = 3.0,   MSG = "Du hast den Augentyp deines Charakters nicht eingestellt!" },
    ["ErrHair"]   = { Gender = false, Time = 3.0,   MSG = "Du hast den Haartyp deines Charakters nicht eingestellt!" },
  },

  ["Spawner"] = {
    ["Cutscene"]    = { Gender = false, Time = false, MSG = "Cutscene" },
    ["DriverName"]  = { Gender = false, Time = false, MSG = "StageCoach-Fahrer" },
    ["MusicOn"]     = { Gender = false, Time = 5.0,   MSG = "Du hast die Musik ausgeschaltet" },
    ["MusicOff"]    = { Gender = false, Time = 5.0,   MSG = "Du hast die Musik eingeschaltet" },
    ["ErrStepOut"]  = { Gender = false, Time = 5.0,   MSG = "Du kannst nicht in die Zwischensequenz treten." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Stop | Start Music" },
    ["StepOut"]     = { Gender = false, Time = false, MSG = "Step Out" },
    ["Cinema"]      = { Gender = false, Time = false, MSG = "Kino" },

    ["Welcome"] = {
      { Gender = false, Time = 5.0, MSG = "Willkommen in unserem Landkreis, genießen Sie Ihren Aufenthalt!" },
      { Gender = false, Time = 5.0, MSG = "Ich kann dir sagen, dass du schlau bist, weil du dich für dieses County entschieden hast! Haha, willkommen, mein Freund!" },
    },

    ["Advice"] = {
      { Gender = false, Time = 5.0, MSG = "Ich bringe dich zu einem guten Schneider, der dir bei neuen Klamotten helfen könnte" },
      { Gender = false, Time = 5.0, MSG = "Nach so einer langen Reise brauchst du einen guten Schneider. Lass mich dir die Ehre erweisen und dich zu einem bringen." },
    },

    ["Tailor"] = {
      { Gender = false, Time = 5.0, MSG = "Es gibt einen Schneider in der Nähe, ich würde mir überlegen, mir neue Kleidung zu besorgen." },
      { Gender = false, Time = 5.0, MSG = "Du wirst einen Schneider um die Ecke finden, ich würde mir überlegen, mir ein paar neue Klamotten zu besorgen." },
    },

    ["Goodbye"] = {
      { Gender = false, Time = 5.0, MSG = "Auf Wiedersehen mein Freund, es war schön, dich kennenzulernen! Genieße deinen Aufenthalt!" },
      { Gender = false, Time = 5.0, MSG = "Es war wunderbar, Sie kennenzulernen, viel Spaß bei Ihrem Aufenthalt!" },
      { Gender = false, Time = 5.0, MSG = "Das sind dann 12,25 $ ... hah, nur ein Scherz, genieße deinen Aufenthalt, mein Freund!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0, MSG = "Du bist in einem netten Landkreis angekommen, in der Stadt gibt es viel zu tun, es könnte dir gefallen." },
      { Gender = false, Time = 7.0, MSG = "Ist es nicht komisch, wie das Wetter manchmal sein kann, es kann wie verrückt umschlagen! Du willst wirklich nicht in einen dieser Stürme gehustet werden, das sage ich dir ." },
      { Gender = false, Time = 5.0, MSG = "Es sieht so aus, als wärst du schon eine ganze Weile unterwegs. Ich hoffe, deine Reise war ohne Probleme." },
      { Gender = false, Time = 5.0, MSG = "Ist das nicht nur ich, oder stinkt es hier sehr?" },
      { Gender = false, Time = 5.0, MSG = "Schau dir das Wetter an, ist es nicht schön" },
      { Gender = false, Time = 5.0, MSG = "Wir sind fast an unserem Ziel. Ich hoffe, Sie genießen die Fahrt bisher." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"]     = { Gender = false, Time = false, MSG = "Menü öffnen" },
    ["Inventory"]    = { Gender = false, Time = false, MSG = "Inventar" },
    ["AdminMenu"]    = { Gender = false, Time = false, MSG = "Admin-Menü" },
    ["Zoning"]       = { Gender = false, Time = false, MSG = "Zoning" },
    ["AutoMove"]     = { Gender = false, Time = false, MSG = "Start Auto Move" },
    ["StopMove"]     = { Gender = false, Time = false, MSG = "Stop Auto Move" },
    ["Unequipt"]     = { Gender = false, Time = false, MSG = "Unequipt Weapon" },
    ["Error"]        = { Gender = false, Time = false, MSG = "Fehler" },
    ["System"]       = { Gender = false, Time = false, MSG = "System" },
    ["Initialize"]   = { Gender = false, Time = 3.0,   MSG = "Einstellungsmenü initialisiert!" },
    ["Initialize2"]  = { Gender = false, Time = 5.0,   MSG = "Sie können jetzt das Einstellungsmenü mit der linken Alt-Taste öffnen!" },
    ["NoNextPage"]   = { Gender = false, Time = 3.0,   MSG = "Momentan keine nächste Seite" },
    ["NoBackPage"]   = { Gender = false, Time = 3.0,   MSG = "Momentan keine Rückseite" },
    ["CoordsSave"]   = { Gender = false, Time = 5.0,   MSG = "Sie haben Ihre Koordinaten gespeichert!" },
    ["ErrSkin"]      = { Gender = false, Time = 5.0,   MSG = "Du hast keinen Skin zum Laden! Bitte erstelle zuerst einen Skin!" },
    ["LogOut"]       = { Gender = false, Time = 5.0,   MSG = "Abmelden" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0,   MSG = "Speichere die Position deines Charakters" },
    ["MusicOn"]      = { Gender = false, Time = 5.0,   MSG = "Alle Musik im Spiel ist eingeschaltet!" },
    ["MusicOff"]     = { Gender = false, Time = 5.0,   MSG = "Alle Musik im Spiel wurde ausgeschaltet!" },
    ["MusicUnable"]  = { Gender = false, Time = 5.0,   MSG = "Du hast Musik in den Einstellungen ausgeschaltet, Musik kann nicht abgespielt werden!" },
    ["VolSet"]       = { Gender = false, Time = 5.0,   MSG = "Lautstärke auf % eingestellt" },
    ["VolSet2"]      = { Gender = false, Time = 5.0,   MSG = "Die Lautstärke wird beim nächsten Song wirksam!" },
    ["CharDel"]      = { Gender = false, Time = 10.0,  MSG = "Zeichenlöschung läuft" },
    ["DelDone"]      = { Gender = false, Time = 5.0,   MSG = "Alle Charakterinformationen wurden gelöscht, wir bringen Sie zurück zum Charakterauswahlmenü" },
  },

  ["FastTravel"] = {
    ["ZoneName"] = { Gender = false, Time = false, MSG = "Schnellreise" },
    ["NPCName"]  = { Gender = false, Time = false, MSG = "Dokus Reisebüro" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0, MSG = "Gute Reise und vielen Dank für die Reise, Dokus Industries" },
      { Gender = false, Time = 5.0, MSG = "Wir hoffen, Sie genießen Ihre Reise, sichere Reise" },
      { Gender = false, Time = 5.0, MSG = "Wir freuen uns, dass Sie sich für Dokus Industries zum Reisen entschieden haben!" },
      { Gender = false, Time = 5.0, MSG = "You can enter the boat at the dock, safe travels" },
    }

  },

  ["GunStore"] = {
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Waffenhändler" },
    ["BlipName"]      = { Gender = false, Time = false, MSG = "Waffengeschäft" },
    ["NoMoney"]       = { Gender = false, Time = 3.0,   MSG = "Du hast nicht genug Geld!" },
    ["BoughtAmmo1"]   = { Gender = false, Time = 3.0,   MSG = "Sie haben gekauft" },
    ["BoughtAmmo2"]   = { Gender = false, Time = 3.0,   MSG = " Ammo!" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Menü öffnen" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0,   MSG = "Dieser Artikel funktioniert derTime nicht wie erwartet und wird derTime nicht verkauft!" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 3.5,   MSG = "Willkommen, ich hoffe, Sie betreten meinen Laden mit sauberen Schuhen!" },
      { Gender = 'Male',   Time = 3.5,   MSG = "Yeee Junge, willkommen in meinem Laden sir!" },
      { Gender = 'Male',   Time = 3.5,   MSG = "Oh, sehen Sie sich das an, hallo. Wie ist Ihr Tag heute, Sir?" },
      { Gender = 'Female', Time = 3.5,   MSG = "Willkommen, ich hoffe, Sie betreten meinen Laden mit sauberen Schuhen!" },
      { Gender = 'Female', Time = 3.5,   MSG = "Yeee Junge, willkommen in meinem Laden! Oh, entschuldigen Sie, meine Dame, ich war überexistiert." },
      { Gender = 'Female', Time = 3.5,   MSG = "Oh, sieh dir das an, hallo. Wie ist dein Tag heute, meine Dame?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',   Time = 3.5,   MSG = "Danke für Ihren Besuch! Sichere Reisen, mein Freund!" },
      { Gender = 'Male',   Time = 3.5,   MSG = "Ich wünsche Ihnen einen guten Tag, mögen Sie Ihren Tag genießen, Sir!" },
      { Gender = 'Male',   Time = 3.5,   MSG = "Genießen Sie Ihren Tag, Sir, danke für Ihren Besuch." },
      { Gender = 'Male',   Time = 3.5,   MSG = "Gute Reise, mein Freund, danke für deinen Besuch" },
      { Gender = 'Female', Time = 3.5,   MSG = "Danke für Ihren Besuch! Sichere Reise, meine Dame!" },
      { Gender = 'Female', Time = 3.5,   MSG = "Ich wünsche Ihnen einen schönen Tag, genießen Sie Ihren Tag Ma'am!" },
      { Gender = 'Female', Time = 3.5,   MSG = "Genießen Sie Ihren Tag Ma'am, danke für Ihren Besuch." },
      { Gender = 'Female', Time = 3.5,   MSG = "Gute Reise, meine Dame, danke für Ihren Besuch" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Wie kann ich Ihnen helfen, guter Herr?" },
      { Gender = 'Female', Time = 3.5, MSG = "Wie kann ich Ihnen helfen, meine Dame?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"]      = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"]      = { Gender = false, Time = false, MSG = "Beutekiste" },
    ["OpenBox"]      = { Gender = false, Time = false, MSG = "Press ~color_green~E~q~ to open" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "Sie haben keinen Gegenstand ausgewählt, um ihn auf den Boden fallen zu lassen! Wählen Sie zuerst einen Gegenstand aus!" },
    ["NotEnough"]    = { Gender = false, Time = false, MSG = "Du hast nicht genug von diesem Gegenstand in deinem Inventar!" },
    ["NoAmount"]     = { Gender = false, Time = false, MSG = "Sie haben keinen Betrag im Betragsparameter festgelegt. Ihr Gegenstand kann nicht fallen gelassen werden!" },
    ["ToClose"]      = { Gender = false, Time = 5.0,   MSG = "Du bist zu nah an einer anderen DropBox. Geh näher oder weiter weg!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Ich bekomme Hunger, ich brauche etwas zu essen" },
      { Gender = false, Time = 5.0, MSG = "Ich bin so hungrig, ich brauche wirklich etwas zu essen" },
      { Gender = false, Time = 5.0, MSG = "Mir ist schwindelig, ich brauche etwas zu essen" },
      { Gender = false, Time = 5.0, MSG = "Oh mein Bauch tut weh, ich habe noch nichts gegessen" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Ich bin so durstig, ich brauche etwas zu trinken" },
      { Gender = false, Time = 5.0, MSG = "Mein Mund fühlt sich trocken an, ich brauche etwas Wasser" },
      { Gender = false, Time = 5.0, MSG = "Uhg, wenn ich nicht bald trinke, werde ich vielleicht ohnmächtig" },
      { Gender = false, Time = 5.0, MSG = "Noch nie in meinem Leben habe ich mich so durstig gefühlt" },
    }
  },

  ["Scavenger"] = {
    ["Name"]        = { Gender = false, Time = false, MSG = "Scavenger" },
    ["Rewards"]     = { Gender = false, Time = 3.0,   MSG = "Du hast geerntet" },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0,   MSG = "Dieser Busch wurde bereits geerntet" },
    ["PromptHarv"]  = { Gender = false, Time = false, MSG = "Ernte" },
  },

  ["ScratchCards"] = {
    ["NPCName"]    = { Gender = false, Time = false, MSG = "Bankangestellter" },
    ["NoTickets"]  = { Gender = false, Time = 5.0,   MSG = "Sie haben keine Lottoscheine in Ihrem Besitz!" },
    ["WonCard"]    = { Gender = false, Time = 5.0,   MSG = "Sie haben $ gewonnen" },
    ["WonTotal"]   = { Gender = false, Time = 5.0,   MSG = "Sie haben insgesamt $ gewonnen" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Ernte" },
    ["BetterLuck"] = { Gender = false, Time = false, MSG = "Viel Glück beim nächsten Mal" },
    ["NoWin"]      = { Gender = false, Time = 5.0,   MSG = "Leider hast du diesmal nichts gewonnen" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"]    = { Gender = false, Time = false, MSG = "Tanz" },
    ["MenuStop"]     = { Gender = false, Time = false, MSG = "Stopp" },
    ["MenuNext"]     = { Gender = false, Time = false, MSG = "Weiter" },
    ["MenuBack"]     = { Gender = false, Time = false, MSG = "Zurück" },
    ["ShowFear"]     = { Gender = false, Time = false, MSG = "Show / Expres Fear" },
    ["StopTrumpet"]  = { Gender = false, Time = 5.0,   MSG = "Sie können das Spielen beenden, indem Sie die Rücktaste - Leertaste oder X drücken" },
    ["TrumpWarning"] = { Gender = false, Time = 5.0,   MSG = "Wenn die Trompete in deiner Hand stecken bleibt, lade deinen Skin über das Menü neu, um es zu beheben" },
    ["ScenarioStop"] = { Gender = false, Time = 5.0,   MSG = "Sie können das Szenario beenden, indem Sie im Chat [ /scenario stop ] eingeben" },
    ["SetStatus"]    = { Gender = false, Time = false, MSG = "Legen Sie Ihren Status fest!" },
  },

  ["Stables"] = {
    ["BlipName"]     = { Gender = false, Time = false, MSG = "Stabil" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Stallbetreuer" },
    ["HorseNamed"]   = { Gender = false, Time = 3.5,   MSG = "Du hast deinem Pferd einen Namen gegeben: " },
    ["HorseBought"]  = { Gender = false, Time = 5.0,   MSG = "Ihr Pferd ist jetzt bereit! Es war mir eine Freude, mit Ihnen Geschäfte zu machen." },
    ["HorseStored"]  = { Gender = false, Time = 5.0,   MSG = "Ihr Pferd ist eingelagert, wir kümmern uns bestens darum!" },
    ["NameHorse"]    = { Gender = false, Time = false, MSG = "Name deines Pferdes" },
    ["NoMoney"]      = { Gender = false, Time = 3.5,   MSG = "Ich fürchte, Sie haben nicht genug Geld, um dieses Pferd zu kaufen!" },
    ["HorseReady"]   = { Gender = false, Time = 5.0,   MSG = "Dein Pferd steht bereit in seinem Stall!" },
    ["FetchHorse"]   = { Gender = false, Time = 5.0,   MSG = "Sicher, einen Moment lass mich dein Pferd holen!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0,   MSG = "Hier, Sir, so gesund wie immer!" },
    ["OpenMenu"]     = { Gender = false, Time = false, MSG = "Menü öffnen" },
    ["StoreHorse"]   = { Gender = false, Time = false, MSG = "Ladenpferd" },
    ["NoHorseName"]  = { Gender = false, Time = 5.0,   MSG = "Entschuldigung, aber Sie müssen Ihrem Pferd einen Namen geben" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Willkommen, ich hoffe, Sie betreten meinen Laden mit sauberen Schuhen!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Yeee Junge, willkommen in meinem Laden, habe ich ein paar Pferde für Sie, Sir!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Oh, sehen Sie sich das an, hallo. Wie ist Ihr Tag heute, Sir?" },
      { Gender = 'Female', Time = 5.0, MSG = "Willkommen, ich hoffe, Sie betreten meinen Laden mit sauberen Schuhen!" },
      { Gender = 'Female', Time = 5.0, MSG = "Yeee Junge, willkommen in meinem Laden! Oh, entschuldigen Sie, meine Dame, ich war überexistiert." },
      { Gender = 'Female', Time = 5.0, MSG = "Oh, sieh dir das an, hallo. Wie ist dein Tag heute, meine Dame?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Danke für Ihren Besuch! Sichere Reisen, mein Freund!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Ich wünsche Ihnen einen guten Tag, mögen Sie Ihren Tag genießen, Sir!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Genießen Sie Ihren Tag, Sir, danke für Ihren Besuch." },
      { Gender = 'Male',   Time = 5.0, MSG = "Gute Reise mein Freund, danke für deinen Besuch" },
      { Gender = 'Female', Time = 5.0, MSG = "Danke für Ihren Besuch! Sichere Reise, meine Dame!" },
      { Gender = 'Female', Time = 5.0, MSG = "Ich wünsche Ihnen einen schönen Tag, genießen Sie Ihren Tag Ma'am!" },
      { Gender = 'Female', Time = 5.0, MSG = "Genießen Sie Ihren Tag Ma'am, danke für Ihren Besuch." },
      { Gender = 'Female', Time = 5.0, MSG = "Gute Reise, meine Dame, danke für Ihren Besuch" },
    }
  },

  ["Stores"] = {
    ["BlipName"]    = { Gender = false, Time = false, MSG = "Gemischtwarenladen" },
    ["NPCName"]     = { Gender = false, Time = false, MSG = "General Store Worker" },
    ["MenuBuy"]     = { Gender = false, Time = false, MSG = "Gemischtwarenladen (Kaufen)" },
    ["MenuSell"]    = { Gender = false, Time = false, MSG = "Inventar (Verkaufen)" },
    ["ButtonBuy"]   = { Gender = false, Time = false, MSG = "Kaufen" },
    ["ButtonSell"]  = { Gender = false, Time = false, MSG = "Verkaufen" },
    ["ButtonMan"]   = { Gender = false, Time = false, MSG = "Verwalten" },
    ["NotInInvent"] = { Gender = false, Time = 3.5,   MSG = "Du hast nicht so viel in deinem Inventar!" },
    ["Bought"]      = { Gender = false, Time = 3.5,   MSG = "Sie haben gekauft" },
    ["Sold"]        = { Gender = false, Time = 3.5,   MSG = "Sie haben verkauft" },
    ["NoMoney"]     = { Gender = false, Time = 3.5,   MSG = "Du hast nicht genug Geld, um diese / diese Menge an Artikeln zu kaufen!" },
    ["NoItem"]      = { Gender = false, Time = false, MSG = "Sie haben noch keinen Artikel ausgewählt!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Willkommen, ich hoffe, Sie betreten meinen Laden mit sauberen Schuhen!" },
      { Gender = false, Time = 5.0, MSG = "Hey, ein Kunde, das ist F**** genial!" },
      { Gender = false, Time = 5.0, MSG = "Oh, sieh dir das an, hallo." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Danke für Ihren Besuch! Gute Reise!" },
      { Gender = false, Time = 5.0, MSG = "Ich wünsche Ihnen einen schönen Tag, viel Spaß!" },
      { Gender = false, Time = 5.0, MSG = "Genießen Sie Ihren Tag, danke für Ihren Besuch." },
      { Gender = false, Time = 5.0, MSG = "Gute Reise mein Freund, danke für deinen Besuch" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "Wie kann ich Ihnen helfen?" },
      { Gender = false, Time = 2.5, MSG = "Ah, du willst etwas kaufen, huh?" },
      { Gender = false, Time = 2.5, MSG = "Suchen Sie etwas Besonderes?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "Wie kann ich Ihnen helfen?" },
      { Gender = false, Time = 2.5, MSG = "Ich werde ein paar Tags platzen lassen, habe nur zwanzig Dollar in meiner Tasche!" },
      { Gender = false, Time = 2.5, MSG = "Ah, du willst etwas verkaufen, huh?" },
      { Gender = false, Time = 2.5, MSG = "Ich nehme alles von Fisch bis Brot, von Brot bis Kaffee. Sie nennen es!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Es war mir eine Freude, mit Ihnen Geschäfte zu machen!" },
      { Gender = false, Time = 5.0, MSG = "Ich bin froh, dass ich Ihnen behilflich sein konnte!" },
      { Gender = false, Time = 5.0, MSG = "Ich freue mich, dass ich Ihnen helfen konnte" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "interaktiv" }
  },

  ["WorldEdits"] = {
    ["GuarmaFishBar"] = { Gender = false, Time = false, MSG = "Guarma Fishers Bar" },
    ["GuarmaHideout"] = { Gender = false, Time = false, MSG = "Guarma Hideout" },
    ["GuarmaArena"]   = { Gender = false, Time = false, MSG = "Gladiator Arena" },
    ["MexicoBridge1"] = { Gender = false, Time = false, MSG = "The Mexico Bridge" },
    ["HangingBridge"] = { Gender = false, Time = false, MSG = "Die Hängebrücke" },
    ["NakotaNatCamp"] = { Gender = false, Time = false, MSG = "Nakota Native Camp" },
    ["ApacheNatCamp"] = { Gender = false, Time = false, MSG = "Apache Native Camp" },
    ["LakotaNatCamp"] = { Gender = false, Time = false, MSG = "Lakota Native Camp" },
    ["ArthurGraveSt"] = { Gender = false, Time = false, MSG = "Arthurs Grabstein" },
  },























}
