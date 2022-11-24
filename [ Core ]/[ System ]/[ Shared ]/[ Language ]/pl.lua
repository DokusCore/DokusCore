Lang['pl'] = {

  ["System"] = {
    ["Yes"] = { Gender = false, Time = false, MSG = "Tak" },
    ["No"] = { Gender = false, Time = false, MSG = "Nie" },
    ["Error"] = { Gender = false, Time = false, MSG = "BŁĄD" },
    ["System"] = { Gender = false, Time = false, MSG = "System" },
    ["Success"] = { Gender = false, Time = false, MSG = "Sukces" },
    ["BLCheck"] = { Gender = false, Time = false, MSG = "Sprawdzanie czarnej listy" },
    ["WLCheck"] = { Gender = false, Time = false, MSG = "Sprawdzanie białej listy" },
    ["SteamCheck"] = { Gender = false, Time = false, MSG = "Sprawdzanie identyfikacji Steam" },
    ["SteamConFail"] = { Gender = false, Time = false, MSG = "Nie możemy połączyć się z API Steam, upewnij się, że Steam jest otwarty przed otwarciem RedM!" },
    ["UserBanned"] = { Gender = false, Time = false, MSG = "Zostałeś zbanowany na tym serwerze." },
    ["InfoDiscord"] = { Gender = false, Time = false, MSG = "Aby uzyskać więcej informacji, odwiedź nasz Discord ".._DiscordInvite.."" },
    ["NoBanReason"] = { Gender = false, Time = false, MSG = "Nie podano powodu" },
    ["WLPending"] = { Gender = false, Time = false, MSG = "Twoja prośba o białą listę jest nadal w toku..." },
    ["WLDenied"] = { Gender = false, Time = false, MSG = "Twoja prośba o białą listę została odrzucona z powodu:" },
    ["WLMade1"] = { Gender = false, Time = false, MSG = "Aby uzyskać dostęp do tego serwera, musisz być na białej liście." },
    ["WLMade2"] = { Gender = false, Time = false, MSG = "Żądanie białej listy zostało wysłane automatycznie i jest teraz w toku." },
    ["NoCharFound"] = { Gender = false, Time = false, MSG = "Nie można wykonać tej akcji, nie znaleziono postaci!" },
    ["Language"] = { Gender = false, Time = false, MSG = "Język" },
    ["LangNotEnter"] = { Gender = false, Time = false, MSG = "Parametr języka był pusty!" },
    ["LanguageSetTo"] = { Gender = false, Time = false, MSG = "Język klienta jest ustawiony na " },
    ["LangNoSupport"] = { Gender = false, Time = 5.0,   MSG = "Ten język nie jest obsługiwany!" },
    ["WelcomeTo"] = { Gender = false, Time = false, MSG = "Witamy w:" },
    ["InProgress"] = { Gender = false, Time = false, MSG = "W toku" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Otwórz menu" },
    ["InDevelopment"] = { Gender = false, Time = 5.0, MSG = "Ta funkcja jest w fazie rozwoju!" },

    -- Miasta
    ["Guarma"] = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"] = { Gender = false, Time = false, MSG = "Więzienie Sisika" },
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Bankowość" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Pracownik bankiera" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "Jestem obecnie zajęty innym obywatelem, proszę o chwilę!" },
    ["NoAccount"] = { Gender = false, Time = 3.5, MSG = "Przepraszamy, ale nie mamy zarejestrowanego konta bankowego w naszych logach. Musisz otworzyć konto bankowe, zanim będziesz mógł z niego korzystać!" },
    ["UseBankKey"] = { Gender = false, Time = 3.5, MSG = "Użyj banku" },
    ["AlAccount"] = { Gender = false, Time = 3.5, MSG = "Masz już konto bankowe w tym banku!" },
    ["AcCreation"] = { Gender = false, Time = 3.5, MSG = "Opłata za konto została opłacona, konto jest tworzone!" },
    ["AcCreated"] = { Gender = false, Time = 3.5, MSG = "Twoje konto bankowe zostało utworzone! Możesz teraz otworzyć swoje konto bankowe." },
    ["NoDepMoney"] = { Gender = false, Time = 3.5, MSG = "Nie masz dość pieniędzy, aby dokonać tej wpłaty!" },
    ["NoDepGold"] = { Gender = false, Time = 3.5, MSG = "Nie masz wystarczającej ilości złota, aby dokonać tej wpłaty!" },
    ["NoWitMoney"] = { Gender = false, Time = 3.5, MSG = "Nie masz dość pieniędzy, aby to wypłacić!" },
    ["NoWitGold"] = { Gender = false, Time = 3.5, MSG = "Nie masz dość złota, aby to wypłacić!" },
    ["DepMinMoney"] = { Gender = false, Time = 3.5, MSG = "Kwota depozytu musi być większa niż 0,01 centa!" },
    ["DepMinGold"] = { Gender = false, Time = 3.5, MSG = "Kwota depozytu musi być większa niż 0,01 złota!" },
    ["WitMinMoney"] = { Gender = false, Time = 3.5, MSG = "Kwota depozytu musi być większa niż 0,01 centa!" },
    ["WitMinGold"] = { Gender = false, Time = 3.5, MSG = "Kwota depozytu musi być większa niż 0,01 złota!" },
    ["ToFast"] = { Gender = false, Time = 3.5, MSG = "Przepraszam, ale mogę wykonać tylko 1 transakcję naraz. Chwileczkę!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Dokonałeś wpłaty $" },
    ["DepDoneGold"] = { Gender = false, Time = 3.5, MSG = "Dokonałeś wpłaty w wysokości " },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Wypłaciłeś $" },
    ["WitDoneGold"] = { Gender = false, Time = 3.5, MSG = "Wypłaciłeś " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Witamy w naszym banku, w czym mogę pomóc?" },
      { Gender = false, Time = false, MSG = "Witam, w czym mogę pomóc?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Dzięki za wizytę, miłego dnia!" },
      { Gender = false, Time = false, MSG = "Chciałem ci dziś pomóc, do następnego razu!" },
      { Gender = false, Time = false, MSG = "Jeśli mogę jeszcze w czymś pomóc, po prostu daj mi znać!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0, MSG = "Nie wybrano żadnej postaci!" },
  },

  ["Clothing"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Sklep odzieżowy" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Krawiec" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "Jestem zajęty innym klientem, poczekaj chwilę. Będę z tobą tak szybko, jak to możliwe!" },
    ["NeedToGo"] = { Gender = false, Time = 3.5, MSG = "Mam więcej do zrobienia i więcej klientów do załatwienia, daj mi znać, kiedy będziesz potrzebować dodatkowej pomocy" },
    ["DressingRoom"] = { Gender = false, Time = false, MSG = "Przebieralnia" },
    ["Confirmation"] = { Gender = false, Time = false, MSG = "Potwierdzenie" },
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5, MSG = "Czy chcesz się przebrać?" },
    ["Pay"] = { Gender = false, Time = false, MSG = "Zapłać" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Otwórz menu" },
    ["Outfits"] = { Gender = false, Time = false, MSG = "Stroje" },

    ["EnterStore"] = {
      { Gender = "Male", Time = 3.5, MSG = "Witam, mam nadzieję, że wejdziesz do mojego sklepu z czystymi butami!" },
      { Gender = "Male", Time = 3.5, MSG = "Jej chłopcze, witaj w moim sklepie, proszę pana, cieszę się, że pana widzę!" },
      { Gender = "Male", Time = 3.5, MSG = "Och, spójrz na to, cześć. Jak ci mija dzień?" },
      { Gender = "Female", Time = 3.5, MSG = "Witam, mam nadzieję, że wejdziesz do mojego sklepu z czystymi butami!" },
      { Gender = "Female", Time = 3.5, MSG = "Jej chłopcze, witaj w moim sklepie! Och, przepraszam, moja pani, skończyłem istnieć." },
      { Gender = "Female", Time = 3.5, MSG = "Och, spójrz na to, witaj. Jak ci mija dzień, pani?" },
    },

    ["ExitStore"] = {
      { Gender = "Male", Time = 3.5, MSG = "Dziękujemy za wizytę! Bezpieczne podróże, przyjacielu!" },
      { Gender = 'Male', Time = 3.5, MSG = "Życzę dobrego dnia, życzę miłego dnia, proszę pana!" },
      { Gender = "Male", Time = 3.5, MSG = "Miłego dnia, dziękuję za wizytę." },
      { Gender = "Male", Time = 3.5, MSG = "Dobra podróż przyjacielu, dziękuję za wizytę" },
      { Gender = "Female", Time = 3.5, MSG = "Dziękujemy za wizytę! Bezpieczne podróże, pani!" },
      { Gender = "Female", Time = 3.5, MSG = "Życzę miłego dnia, życzę miłego dnia, proszę pani!" },
      { Gender = "Female", Time = 3.5, MSG = "Miłego dnia, proszę pani, dziękujemy za wizytę." },
      { Gender = "Female", Time = 3.5, MSG = "Dobra podróż, moja pani, dziękuję za wizytę" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.0, MSG = "W czym mogę panu pomóc, dobry panie?" },
      { Gender = "Female", Time = 3.0, MSG = "W czym mogę pomóc, pani?" }
    },

    ["EnterMenu"] = {
      { Gender = "Male", Time = 3.5, MSG = "Oczywiście, będę w stanie ci pomóc, dobry panie. Proszę podejść do lady, a ja będę z tobą tak szybko, jak to możliwe." },
      { Gender = "Male", Time = 3.5, MSG = "Ach tak, odzież. Proszę pana, trafił pan we właściwe miejsce, proszę za mną." },
      { Gender = "Female", Time = 3.5, MSG = "Jak sobie życzysz, moja pani, pomogę ci z wielką przyjemnością!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ach, tak, odzież. Proszę pani, znalazła się we właściwym miejscu, proszę za mną." },
    },

    ["Reactions"] = {
      { Gender = "Male", Time = 5.0, MSG = "Dobrze do pana pasuje" },
      { Gender = "Male", Time = 5.0, MSG = "Och, spójrz na to, patrzenie na ciebie w takim stanie budzi we mnie zazdrość." },
      { Gender = "Male", Time = 5.0, MSG = "O rany, spójrz na to, jest cudowne." },
      { Gender = "Male", Time = 5.0, MSG = "To najlepsze, jakie mamy w mieście, nie znajdziesz lepszego nigdzie indziej!" },
      { Gender = "Male", Time = 5.0, MSG = "Tak piękna, tak wyjątkowa, a ja jestem osobą, która może to dla Ciebie zrobić, jeśli chcesz." },
      { Gender = "Male", Time = 5.0, MSG = "To wspaniale do Ciebie pasuje"},
      { Gender = "Male", Time = 5.0, MSG = "Mój Boże, jak to zostało stworzone specjalnie dla Ciebie!" },
      { Gender = "Female", Time = 5.0, MSG = "Dobrze do pana pasuje" },
      { Gender = "Female", Time = 5.0, MSG = "Och, spójrz na to, patrzenie na ciebie w takim stanie budzi we mnie zazdrość." },
      { Gender = "Female", Time = 5.0, MSG = "O rany, spójrz na to, jest cudowne." },
      { Gender = "Female", Time = 5.0, MSG = "To najlepsze, jakie mamy w mieście, nie znajdziesz lepszego nigdzie indziej!" },
      { Gender = "Female", Time = 5.0, MSG = "Tak piękna, tak wyjątkowa i to ja mogę ją dla Ciebie zrobić, jeśli chcesz." },
      { Gender = "Female", Time = 5.0, MSG = "To wspaniale do Ciebie pasuje"},
      { Gender = "Female", Time = 5.0, MSG = "Mój Boże, jak to zostało stworzone specjalnie dla Ciebie!" },
    }
  },

  ["Skins"] = {
    ['Male'] = { Gender = false, Time = false, MSG = "Male" },
    ['Female'] = { Gender = false, Time = false, MSG = "Female" },
    ['Select'] = { Gender = false, Time = false, MSG = "Select" },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Wybierz Gender" },
    ["ErrAge"] = { Gender = false, Time = 3.0, MSG = "Nie ustawiłeś wieku swoich postaci!" },
    ["ErrName"] = { Gender = false, Time = 3.0, MSG = "Nie ustawiłeś imienia swojej postaci!" },
    ["ErrNatio"] = { Gender = false, Time = 3.0, MSG = "Nie ustawiłeś narodowości swoich postaci!" },
    ["ErrTorso"] = { Gender = false, Time = 3.0, MSG = "Nie ustawiłeś typu tułowia postaci!" },
    ["ErrLegs"] = { Gender = false, Time = 3.0, MSG = "Nie ustawiłeś typu nóg swojej postaci!" },
    ["ErrHead"] = { Gender = false, Time = 3.0, MSG = "Nie ustawiłeś typu głowy swoich postaci!" },
    ["ErrEyes"] = { Gender = false, Time = 3.0, MSG = "Nie ustawiłeś typu oczu swojej postaci!" },
    ["ErrHair"] = { Gender = false, Time = 3.0, MSG = "Nie ustawiłeś typu włosów swoich postaci!" },
  },

  ["Spawner"] = {
    ['Cutscene'] = { Gender = false, Time = false, MSG = "Przerywnik filmowy" },
    ["DriverName"] = { Gender = false, Time = false, MSG = "Kierowca StageCoach" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Wyłączyłeś muzykę" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Włączyłeś muzykę" },
    ["ErrStepOut"] = { Gender = false, Time = 5.0, MSG = "Nie możesz wystąpić w przerywniku filmowym." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Zatrzymaj | Włącz muzykę" },
    ["StepOut"] = { Gender = false, Time = false, MSG = "Wyjdź" },
    ["Cinema"] = { Gender = false, Time = false, MSG = "Kino" },

    ["Welcome"] = {
      { Gender = false, Time = 5.0, MSG = "Witamy w naszym hrabstwie, życzymy miłego pobytu!" },
      { Gender = false, Time = 5.0, MSG = "Mówię, że jesteś mądry, bo wybierasz dla tego hrabstwa! Haha, witaj przyjacielu!" },
    },

    ["Advice"] = {
      { Gender = false, Time = 5.0, MSG = "Zaprowadzę cię do świetnego krawca, który pomoże ci uszyć nowe ubranie" },
      { Gender = false, Time = 5.0, MSG = "Po tak długiej podróży potrzebujesz dobrego krawca. Pozwól, że uczynię ci ten zaszczyt i zaprowadzę cię do jednego." },
    },

    ["Tailor"] = {
      { Gender = false, Time = 5.0, MSG = "W pobliżu jest krawiec, rozważyłbym zakup nowego ubrania." },
      { Gender = false, Time = 5.0, MSG = "Za rogiem znajdziesz krawca, rozważyłbym zakup nowych ubrań." },
    },

    ["Goodbye"] = {
      { Gender = false, Time = 5.0, MSG = "Żegnaj przyjacielu, miło było cię poznać! Miłego pobytu!" },
      { Gender = false, Time = 5.0, MSG = "Wspaniale było cię poznać, życzę udanego pobytu!" },
      { Gender = false, Time = 5.0, MSG = "W takim razie 12,25 USD… ha, żartuję, miłego pobytu, przyjacielu!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0, MSG = "Przyjechałeś do ładnego hrabstwa, w mieście jest wiele rzeczy do zrobienia, może ci się spodobać." },
      { Gender = false, Time = 7, 0, MSG = "Czy to nie zabawne, że Timeami pogoda może się zmieniać, jak szalona! Naprawdę nie chcesz być złapany przez jedną z tych burz, powiem ci ." },
      { Gender = false, Time = 5.0, MSG = "Wygląda na to, że podróżujesz od dłuższego Timeu. Mam nadzieję, że podróż przebiegła bez żadnych problemów." },
      { Gender = false, Time = 5.0, MSG = "Czy to nie tylko ja, czy też bardzo śmierdzi tutaj." },
      { Gender = false, Time = 5.0, MSG = "Spójrz na tę pogodę, czyż nie jest piękna" },
      { Gender = false, Time = 5.0, MSG = "Jesteśmy prawie u celu. Mam nadzieję, że dotychTimeowa jazda Ci się podobała." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Otwórz menu" },
    ["Inventory"] = { Gender = false, Time = false, MSG = "Inwentarz" },
    ["AdminMenu"] = { Gender = false, Time = false, MSG = "Menu administratora" },
    ["Zoning"] = { Gender = false, Time = false, MSG = "Podział na strefy" },
    ["AutoMove"] = { Gender = false, Time = false, MSG = "Rozpocznij automatyczne przenoszenie" },
    ["StopMove"] = { Gender = false, Time = false, MSG = "Zatrzymaj automatyczne przenoszenie" },
    ["Unequipt"] = { Gender = false, Time = false, MSG = "Broń nieuzbrojona" },
    ["Error"] = { Gender = false, Time = false, MSG = "Błąd" },
    ["System"] = { Gender = false, Time = false, MSG = "System" },
    ["Initialize"] = { Gender = false, Time = 3.0, MSG = "Zainicjowano menu ustawień!" },
    ["Initialize2"] = { Gender = false, Time = 5.0, MSG = "Możesz teraz otworzyć menu ustawień za pomocą lewego klawisza Alt!" },
    ["NoNextPage"] = { Gender = false, Time = 3.0, MSG = "W tej chwili brak następnej strony" },
    ["NoBackPage"] = { Gender = false, Time = 3.0, MSG = "W tej chwili brak tylnej strony" },
    ["CoordsSave"] = { Gender = false, Time = 5.0, MSG = "Zapisałeś swoje współrzędne!" },
    ["ErrSkin"] = { Gender = false, Time = 5.0, MSG = "Nie masz skórki do załadowania! Najpierw utwórz skórkę!" },
    ["LogOut"] = { Gender = false, Time = 5.0, MSG = "Wylogowanie" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0, MSG = "Zapisywanie pozycji postaci" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Cała muzyka w grze została włączona!" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Cała muzyka w grze została wyłączona!" },
    ["MusicUnable"] = { Gender = false, Time = 5.0, MSG = "Wyłączono muzykę w ustawieniach, nie można odtwarzać muzyki!" },
    ["VolSet"] = { Gender = false, Time = 5.0, MSG = "Głośność ustawiona na %" },
    ["VolSet2"] = { Gender = false, Time = 5.0, MSG = "Głośność zacznie obowiązywać w następnej piosence!" },
    ["CharDel"] = { Gender = false, Time = 10.0, MSG = "Trwa usuwanie postaci" },
    ["DelDone"] = { Gender = false, Time = 5.0, MSG = "Wszystkie informacje o postaci zostały usunięte, wracamy do menu wyboru postaci" },
  },

  ["FastTravel"] = {
    ["ZoneName"] = { Gender = false, Time = false, MSG = "Szybka podróż" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Biuro podróży Dokus" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0, MSG = "Miłej podróży i dzięki za podróż Dokus Industries" },
      { Gender = false, Time = 5.0, MSG = "Mamy nadzieję, że będziesz zadowolony z podróży, bezpiecznej podróży" },
      { Gender = false, Time = 5.0, MSG = "Cieszymy się, że wybierasz Dokus Industries jako miejsce podróży!" },
      { Gender = false, Time = 5.0, MSG = "Możesz wejść na łódź w doku, bezpieczne podróże" },
    }

  },

  ["GunStore"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Handlarz bronią" },
    ["BlipName"] = { Gender = false, Time = false, MSG = "Sklep z bronią" },
    ["NoMoney"] = { Gender = false, Time = 3.0, MSG = "Masz za mało pieniędzy!" },
    ["BoughtAmmo1"] = { Gender = false, Time = 3.0, MSG = "Kupiłeś" },
    ["BoughtAmmo2"] = { Gender = false, Time = 3.0, MSG = " Amunicja!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Otwórz menu" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0, MSG = "Ten przedmiot obecnie nie działa zgodnie z oczekiwaniami i nie jest obecnie sprzedawany!" },

    ["EnterStore"] = {
      { Gender = "Male", Time = 3.5, MSG = "Witam, mam nadzieję, że wejdziesz do mojego sklepu z czystymi butami!" },
      { Gender = "Male", Time = 3.5, MSG = "Jej chłopcze, witaj w moim sklepie!" },
      { Gender = "Male", Time = 3.5, MSG = "Och, spójrz na to, cześć. Jak ci mija dzień?" },
      { Gender = "Female", Time = 3.5, MSG = "Witam, mam nadzieję, że wejdziesz do mojego sklepu z czystymi butami!" },
      { Gender = "Female", Time = 3.5, MSG = "Jej chłopcze, witaj w moim sklepie! Och, przepraszam, moja pani, skończyłem istnieć." },
      { Gender = "Female", Time = 3.5, MSG = "Och, spójrz na to, witaj. Jak ci mija dzień, pani?" },
    },

    ["ExitStore"] = {
      { Gender = "Male", Time = 3.5, MSG = "Dziękujemy za wizytę! Bezpieczne podróże, przyjacielu!" },
      { Gender = 'Male', Time = 3.5, MSG = "Życzę dobrego dnia, życzę miłego dnia, proszę pana!" },
      { Gender = "Male", Time = 3.5, MSG = "Miłego dnia, dziękuję za wizytę." },
      { Gender = "Male", Time = 3.5, MSG = "Dobra podróż przyjacielu, dziękuję za wizytę" },
      { Gender = "Female", Time = 3.5, MSG = "Dziękujemy za wizytę! Bezpieczne podróże, pani!" },
      { Gender = "Female", Time = 3.5, MSG = "Życzę miłego dnia, życzę miłego dnia, proszę pani!" },
      { Gender = "Female", Time = 3.5, MSG = "Miłego dnia, proszę pani, dziękujemy za wizytę." },
      { Gender = "Female", Time = 3.5, MSG = "Dobra podróż, moja pani, dziękuję za wizytę" },
    },

    ["NearNPC"] = {
      { Gender = "Male", Time = 3.5, MSG = "Jak mogę panu pomóc, dobry panie?" },
      { Gender = 'Female', Time = 3.5, MSG = "W czym mogę pomóc, pani?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"] = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"] = { Gender = false, Time = false, MSG = "Skrzynka z łupami" },
    ["OpenBox"] = { Gender = false, Time = false, MSG = "Naciśnij ~color_green~E~q~, aby otworzyć" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "Nie masz wybranego przedmiotu do upuszczenia na ziemię! Najpierw wybierz przedmiot!" },
    ["NotEnough"] = { Gender = false, Time = false, MSG = "Nie masz wystarczającej ilości tego przedmiotu w ekwipunku!" },
    ["NoAmount"] = { Gender = false, Time = false, MSG = "Nie masz ustawionej kwoty w parametrze kwoty. Nie można upuścić przedmiotu!" },
    ["ToClose"] = { Gender = false, Time = 5.0, MSG = "Zbliżasz się do innego DropBox. Podejdź bliżej lub dalej!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Jestem głodny, muszę coś zjeść" },
      { Gender = false, Time = 5.0, MSG = "Jestem tak głodny, że naprawdę muszę coś zjeść" },
      { Gender = false, Time = 5.0, MSG = "Czuję się oszołomiony, muszę coś zjeść" },
      { Gender = false, Time = 5.0, MSG = "Och, boli mnie brzuch, jeszcze nie jadłam"},
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Jestem tak spragniony, muszę się czegoś napić" },
      { Gender = false, Time = 5.0, MSG = "Czuję suchość w ustach, potrzebuję wody" },
      { Gender = false, Time = 5.0, MSG = "Uhg, jeśli wkrótce nie wypiję, mogę zemdleć"},
      { Gender = false, Time = 5.0, MSG = "Nigdy w życiu nie czułem takiego pragnienia"},
    }
  },

  ["Scavenger"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Zbieracz" },
    ["Rewards"] = { Gender = false, Time = 3.0, MSG = "Zebrałeś" },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0, MSG = "Ten krzew został już zebrany" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Żniwa" },
  },

  ["ScratchCards"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Pracownik banku" },
    ["NoTickets"] = { Gender = false, Time = 5.0, MSG = "Nie masz żadnych losów na loterię!" },
    ["WonCard"] = { Gender = false, Time = 5.0, MSG = "Wygrałeś $" },
    ["WonTotal"] = { Gender = false, Time = 5.0, MSG = "Wygrałeś łącznie $" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Żniwa" },
    ["BetterLuck"] = { Gender = false, Time = false, MSG = "Powodzenia następnym razem" },
    ["NoWin"] = { Gender = false, Time = 5.0, MSG = "Niestety, tym razem nic nie wygrałeś" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"] = { Gender = false, Time = false, MSG = "Taniec" },
    ["MenuStop"] = { Gender = false, Time = false, MSG = "Stop" },
    ["MenuNext"] = { Gender = false, Time = false, MSG = "Dalej" },
    ["MenuBack"] = { Gender = false, Time = false, MSG = "Wstecz" },
    ["ShowFear"] = { Gender = false, Time = false, MSG = "Pokaż / Wyraź strach"},
    ["StopTrumpet"] = { Gender = false, Time = 5.0, MSG = "Możesz zatrzymać grę, naciskając Backspace - Spacja lub X" },
    ["TrumpWarning"] = { Gender = false, Time = 5.0, MSG = "Jeśli trąbka utknie w dłoni, załaduj ponownie skórkę za pomocą menu, aby to naprawić" },
    ["ScenarioStop"] = { Gender = false, Time = 5.0, MSG = "Możesz zatrzymać scenariusz, wpisując [ /scenario stop ] na czacie" },
    ["SetStatus"] = { Gender = false, Time = false, MSG = "Ustaw swój status!" },
  },

  ["Stables"] = {
    ["BlipName"]     = { Gender = false, Time = false, MSG = "Stabilny" },
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Strażnik" },
    ["HorseNamed"]   = { Gender = false, Time = 3.5,   MSG = "Nazwałeś swojego konia: " },
    ["HorseBought"]  = { Gender = false, Time = 5.0,   MSG = "Twój koń jest już gotowy! Współpraca z Tobą była przyjemnością." },
    ["HorseStored"]  = { Gender = false, Time = 5.0,   MSG = "Twój koń jest przechowywany, bardzo się nim zaopiekujemy!" },
    ["NameHorse"]    = { Gender = false, Time = false, MSG = "Nazwij swojego konia" },
    ["NoMoney"]      = { Gender = false, Time = 3.5,   MSG = "Obawiam się, że nie masz wystarczająco dużo pieniędzy, aby kupić tego konia!" },
    ["HorseReady"]   = { Gender = false, Time = 5.0,   MSG = "Twój koń jest gotowy w swojej stajni!" },
    ["FetchHorse"]   = { Gender = false, Time = 5.0,   MSG = "Jasne, za chwilę dostanę twojego konia!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0,   MSG = "Proszę pana, zdrowy jak nigdy dotąd!" },
    ["OpenMenu"]     = { Gender = false, Time = false, MSG = "Otwórz menu" },
    ["StoreHorse"]   = { Gender = false, Time = false, MSG = "Zapisz konia" },
    ["NoHorseName"]  = { Gender = false, Time = 5.0,   MSG = "Przepraszamy, ale musisz nadać swojemu koniowi imię" },

    ["EnterStore"] = {
      { Gender = "Male",   Time = 5.0, MSG = "Witam, mam nadzieję, że wejdziesz do mojego sklepu z czystymi butami!" },
      { Gender = "Male",   Time = 5.0, MSG = "Jej chłopcze, witaj w moim sklepie, czy mam dla ciebie konie!" },
      { Gender = "Male",   Time = 5.0, MSG = "Och, spójrz na to, witam. Jak ci mija dzień?" },
      { Gender = "Female", Time = 5.0, MSG = "Witam, mam nadzieję, że wejdziesz do mojego sklepu z czystymi butami!" },
      { Gender = "Female", Time = 5.0, MSG = "Jej chłopcze, witaj w moim sklepie! Och, przepraszam, moja pani, skończyłem istnieć." },
      { Gender = "Female", Time = 5.0, MSG = "Och, spójrz na to, witaj. Jak ci minął dzień, pani?" },
    },

    ["ExitStore"] = {
      { Gender = "Male",   Time = 5.0, MSG = "Dziękujemy za wizytę! Bezpieczne podróże, przyjacielu!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Życzę dobrego dnia, życzę miłego dnia, proszę pana!" },
      { Gender = "Male",   Time = 5.0, MSG = "Miłego dnia, dziękuję za wizytę." },
      { Gender = "Male",   Time = 5.0, MSG = "Dobra podróż przyjacielu, dziękuję za wizytę" },
      { Gender = "Female", Time = 5.0, MSG = "Dziękujemy za wizytę! Bezpiecznej podróży, pani!" },
      { Gender = "Female", Time = 5.0, MSG = "Życzę dobrego dnia, życzę miłego dnia, proszę pani!" },
      { Gender = "Female", Time = 5.0, MSG = "Miłego dnia, proszę pani, dziękujemy za wizytę." },
      { Gender = "Female", Time = 5.0, MSG = "Dobra podróż, moja pani, dziękuję za wizytę" },
    }
  },

  ["Stores"] = {
    ["BlipName"]    = { Gender = false, Time = false, MSG = "Sklep wielobranżowy" },
    ["NPCName"]     = { Gender = false, Time = false, MSG = "Pracownik sklepu wielobranżowego" },
    ["MenuBuy"]     = { Gender = false, Time = false, MSG = "Sklep wielobranżowy (Kup)" },
    ["MenuSell"]    = { Gender = false, Time = false, MSG = "Zapasy (sprzedaż)" },
    ["ButtonBuy"]   = { Gender = false, Time = false, MSG = "Kup" },
    ["ButtonSell"]  = { Gender = false, Time = false, MSG = "Sprzedaj" },
    ["ButtonMan"]   = { Gender = false, Time = false, MSG = "Zarządzaj" },
    ["NotInInvent"] = { Gender = false, Time = 3.5,   MSG = "Nie masz tak dużo w ekwipunku!" },
    ["Bought"]      = { Gender = false, Time = 3.5,   MSG = "Kupiłeś" },
    ["Sold"]        = { Gender = false, Time = 3.5,   MSG = "Sprzedałeś" },
    ["NoMoney"]     = { Gender = false, Time = 3.5,   MSG = "Nie masz wystarczająco dużo pieniędzy, aby kupić tę/taką ilość przedmiotów!" },
    ["NoItem"]      = { Gender = false, Time = false, MSG = "Jeszcze nie wybrałeś elementu!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Witam, mam nadzieję, że wejdziesz do mojego sklepu z czystymi butami!" },
      { Gender = false, Time = 5.0, MSG = "Hej, klient, to jest zajebiście!" },
      { Gender = false, Time = 5.0, MSG = "O, spójrz na to, cześć." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Dziękujemy za wizytę! Bezpieczne podróże!" },
      { Gender = false, Time = 5.0, MSG = "Życzę udanego dnia, miłego dnia!" },
      { Gender = false, Time = 5.0, MSG = "Miłego dnia, dziękujemy za wizytę." },
      { Gender = false, Time = 5.0, MSG = "Dobra podróż przyjacielu, dziękuję za wizytę" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "W czym mogę pomóc?" },
      { Gender = false, Time = 2.5, MSG = "Chcesz coś kupić, co?" },
      { Gender = false, Time = 2.5, MSG = "Czy szukasz czegoś wyjątkowego?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "W czym mogę pomóc?" },
      { Gender = false, Time = 2.5, MSG = "Wyrzucę kilka tagów, mam tylko dwadzieścia dolarów w kieszeni!" },
      { Gender = false, Time = 2.5, MSG = "Chcesz coś sprzedać, co?" },
      { Gender = false, Time = 2.5, MSG = "Biorę wszystko, od ryby po chleb, od chleba po kawę. Co tylko chcesz!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Współpraca z Tobą to była przyjemność!" },
      { Gender = false, Time = 5.0, MSG = "Cieszę się, że mogłem ci służyć!" },
      { Gender = false, Time = 5.0, MSG = "Cieszę się, że mogłem Ci pomóc" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Interakcja" }
  },

  ["WorldEdits"] = {
    ["GuarmaFishBar"] = { Gender = false, Time = false, MSG = "Baton Guarma Fishers" },
    ["GuarmaHideout"] = { Gender = false, Time = false, MSG = "Kryjówka Guarma" },
    ["GuarmaArena"]   = { Gender = false, Time = false, MSG = "Arena gladiatorów" },
    ["MexicoBridge1"] = { Gender = false, Time = false, MSG = "Most Meksyku" },
    ["HangingBridge"] = { Gender = false, Time = false, MSG = "Wiszący most" },
    ["NakotaNatCamp"] = { Gender = false, Time = false, MSG = "Obóz rdzennych mieszkańców Nakota" },
    ["ApacheNatCamp"] = { Gender = false, Time = false, MSG = "Obóz rdzennych Apache" },
    ["LakotaNatCamp"] = { Gender = false, Time = false, MSG = "Obóz rdzennych mieszkańców Lakota" },
    ["ArthurGraveSt"] = { Gender = false, Time = false, MSG = "Nagrobek Artura" },
  },























}
