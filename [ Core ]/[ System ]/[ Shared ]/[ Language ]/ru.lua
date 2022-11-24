Lang['ru'] = {

  ["System"] = {
    ["Yes"] = { Gender = false, Time = false, MSG = "Да" },
    ["No"] = { Gender = false, Time = false, MSG = "Нет"},
    ["Error"] = { Gender = false, Time = false, MSG = "ОШИБКА" },
    ["System"] = { Gender = false, Time = false, MSG = "Система"},
    ["Success"] = { Gender = false, Time = false, MSG = "Успех" },
    ["BLCheck"] = { Gender = false, Time = false, MSG = "Проверка черного списка" },
    ["WLCheck"] = { Gender = false, Time = false, MSG = "Проверка белого списка" },
    ["SteamCheck"] = { Gender = false, Time = false, MSG = "Проверка идентификации Steam" },
    ["SteamConFail"] = { Gender = false, Time = false, MSG = "Мы не можем подключиться к Steam API, убедитесь, что у вас открыт Steam, прежде чем открывать RedM!" },
    ["UserBanned"] = { Gender = false, Time = false, MSG = "Вы были забанены на этом сервере." },
    ["InfoDiscord"] = { Gender = false, Time = false, MSG = "Для получения дополнительной информации посетите наш Discord ".._DiscordInvite.."" },
    ["NoBanReason"] = { Gender = false, Time = false, MSG = "Причина не указана" },
    ["WLPending"] = { Gender = false, Time = false, MSG = "Ваш запрос на белый список все еще находится на рассмотрении..." },
    ["WLDenied"] = { Gender = false, Time = false, MSG = "Ваш запрос на белый список был отклонен по причине:" },
    ["WLMade1"] = { Gender = false, Time = false, MSG = "Для доступа к этому серверу вы должны быть в белом списке" },
    ["WLMade2"] = { Gender = false, Time = false, MSG = "Запрос на белый список был сделан автоматически и сейчас находится на рассмотрении." },
    ["NoCharFound"] = { Gender = false, Time = false, MSG = "Невозможно выполнить это действие, символ не найден!" },
    ["Language"] = { Gender = false, Time = false, MSG = "Язык" },
    ["LangNotEnter"] = { Gender = false, Time = false, MSG = "Параметр языка был пуст!" },
    ["LanguageSetTo"] = { Gender = false, Time = false, MSG = "Язык клиента установлен на " },
    ["LangNoSupport"] = { Gender = false, Time = 5.0, MSG = "Этот язык не поддерживается!" },
    ["WelcomeTo"] = { Gender = false, Time = false, MSG = "Добро пожаловать:" },
    ["InProgress"] = { Gender = false, Time = false, MSG = "Выполняется"},
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Открыть меню" },
    ["InDevelopment"] = { Gender = false, Time = 5.0, MSG = "Эта функция находится в разработке!" },

    -- Города
    ["Guarma"] = { Gender = false, Time = false, MSG = "Гуарма"},
    ["Sisika"] = { Gender = false, Time = false, MSG = "Тюрьма Сисика"},
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Сен-Дени"},
  },

  ["Banking"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Банковское дело"},
    ["NPCName"] = { Gender = false, Time = false, MSG = "Банкирский работник"},
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "В настоящее время я занят другим гражданином, подождите, пожалуйста!" },
    ["NoAccount"] = { Gender = false, Time = 3.5, MSG = "Извините, но в наших журналах нет зарегистрированного банковского счета. Вам нужно открыть банковский счет, прежде чем вы сможете его использовать!" },
    ["UseBankKey"] = { Gender = false, Time = 3.5, MSG = "Использовать банк" },
    ["AlAccount"] = { Gender = false, Time = 3.5, MSG = "У вас уже есть банковский счет в этом банке!" },
    ["AcCreation"] = { Gender = false, Time = 3.5, MSG = "Вы оплатили сбор за учетную запись, учетная запись создается!" },
    ["AcCreated"] = { Gender = false, Time = 3.5, MSG = "Ваш банковский счет открыт! Теперь вы можете открыть свой банковский счет." },
    ["NoDepMoney"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно денег, чтобы внести этот депозит!" },
    ["NoDepGold"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно золота, чтобы внести этот депозит!" },
    ["NoWitMoney"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно денег, чтобы снять это!" },
    ["NoWitGold"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно золота, чтобы снять это!" },
    ["DepMinMoney"] = { Gender = false, Time = 3.5, MSG = "Сумма депозита должна быть больше 0,01 цента!" },
    ["DepMinGold"] = { Gender = false, Time = 3.5, MSG = "Сумма депозита должна быть больше 0,01 золота!" },
    ["WitMinMoney"] = { Gender = false, Time = 3.5, MSG = "Сумма депозита должна быть больше 0,01 цента!" },
    ["WitMinGold"] = { Gender = false, Time = 3.5, MSG = "Сумма депозита должна быть больше 0,01 золота!" },
    ["ToFast"] = { Gender = false, Time = 3.5, MSG = "Извините, но я могу выполнять только 1 транзакцию за раз. Пожалуйста, подождите!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Вы внесли депозит в размере $" },
    ["DepDoneGold"] = { Gender = false, Time = 3.5, MSG = "Вы сделали депозит " },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Вы сняли $" },
    ["WitDoneGold"] = { Gender = false, Time = 3.5, MSG = "Вы сняли " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Добро пожаловать в наш банк, чем я могу быть вам полезен?" },
      { Gender = false, Time = false, MSG = "Добро пожаловать, чем я могу вам помочь?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Спасибо, что заглянули, хорошего дня!" },
      { Gender = false, Time = false, MSG = "Я был рад помочь вам сегодня, до следующего раза!" },
      { Gender = false, Time = false, MSG = "Если я еще чем-то могу вам помочь, просто дайте мне знать!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0, MSG = "Не выбран символ!" },
  },

  ["Clothing"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Магазин одежды" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Портной"},
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "В настоящее время я занят другим клиентом, подождите минутку. Я буду с вами как можно скорее!" },
    ["NeedToGo"] = { Gender = false, Time = 3.5, MSG = "У меня есть еще дела и больше клиентов, которым нужно уделить внимание, дайте мне знать, когда вам понадобится дополнительная помощь" },
    ["DressingRoom"] = { Gender = false, Time = false, MSG = "Гардеробная"},
    ["Confirmation"] = { Gender = false, Time = false, MSG = "Подтверждение"},
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5, MSG = "Хотите сменить одежду?" },
    ["Pay"] = { Gender = false, Time = false, MSG = "Платить"},
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Открыть меню" },
    ["Outfits"] = { Gender = false, Time = false, MSG = "Одежда"},

    ['EnterStore'] = {
      { Gender = 'Male', Time = 3.5, MSG = "Добро пожаловать, надеюсь, вы пришли в мой магазин в чистой обуви!" },
      { Gender = 'Male', Time = 3.5, MSG = "Да, мальчик, добро пожаловать в мой магазин, сэр, я рад вас видеть!" },
      { Gender = 'Male', Time = 3.5, MSG = "О, посмотри на это, здравствуйте. Как ваш день сегодня, сэр?" },
      { Gender = 'Female', Time = 3.5, MSG = "Добро пожаловать, надеюсь, вы пришли в мой магазин в чистой обуви!" },
      { Gender = 'Female', Time = 3.5, MSG = "Да, мальчик, добро пожаловать в мой магазин! О, простите меня, моя леди, я пережил." },
      { Gender = 'Female', Time = 3.5, MSG = "О, посмотри на это, здравствуй. Как твой день сегодня, моя леди?" },
    },

    ['ExitStore'] = {
      { Gender = 'Male', Time = 3.5, MSG = "Спасибо за визит! Безопасные путешествия, мой друг!" },
      { Gender = 'Male', Time = 3.5, MSG = "Желаю вам хорошего дня, наслаждайтесь вашим днем, сэр!" },
      { Gender = 'Male', Time = 3.5, MSG = "Наслаждайтесь днем, сэр, спасибо за визит." },
      { Gender = 'Male', Time = 3.5, MSG = "Доброго пути, друг мой, спасибо за визит" },
      { Gender = 'Female', Time = 3.5, MSG = "Спасибо за визит! Безопасные путешествия, миледи!" },
      { Gender = 'Female', Time = 3.5, MSG = "Желаю вам хорошего дня, наслаждайтесь этим днем, мэм!" },
      { Gender = 'Female', Time = 3.5, MSG = "Наслаждайтесь днем, мэм, спасибо за визит." },
      { Gender = 'Female', Time = 3.5, MSG = "Доброго пути, миледи, спасибо за визит" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3, MSG = "Чем я могу вам помочь, сэр?" },
      { Gender = 'Female', Time = 3, MSG = "Чем я могу вам помочь, моя леди?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Конечно, я смогу помочь вам, уважаемый сэр. Пожалуйста, подойдите к прилавку, и я буду с вами как можно скорее." },
      { Gender = 'Male', Time = 3.5, MSG = "Ах, да, одежда. Сэр, вы попали в нужное место, пожалуйста, следуйте за мной." },
      { Gender = 'Female', Time = 3.5, MSG = "Как вам будет угодно, миледи, я с большим удовольствием помогу вам!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ах, да, одежда. Мэм, вы попали в нужное место, пожалуйста, следуйте за мной." },
    },

    ["Reactions"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Это вам подходит, сэр" },
      { Gender = 'Male', Time = 5.0, MSG = "О, посмотри на это, видя тебя таким, я завидую." },
      { Gender = 'Male', Time = 5.0, MSG = "О боже, посмотри на это, это чудесно." },
      { Gender = 'Male', Time = 5.0, MSG = "Это лучшее, что есть в нашем городе, вы не найдете лучше нигде!" },
      { Gender = "Male", Time = 5.0, MSG = "Такой красивый, такой особенный, и я единственный, кто может сделать это для вас, если хотите." },
      { Gender = 'Male', Time = 5.0, MSG = "Это вам прекрасно подходит" },
      { Gender = 'Male', Time = 5.0, MSG = "Боже мой, это было сделано специально для вас!" },
      { Gender = 'Female', Time = 5.0, MSG = "Это вам подходит, сэр" },
      { Gender = 'Female', Time = 5.0, MSG = "О, посмотри на это, видя тебя таким, я завидую." },
      { Gender = 'Female', Time = 5.0, MSG = "О боже, посмотри на это, это чудесно." },
      { Gender = 'Female', Time = 5.0, MSG = "Это лучшее, что есть в нашем городе, вы не найдете лучше нигде!" },
      { Gender = 'Female', Time = 5.0, MSG = "Такая красивая, такая особенная, и я единственный, кто может сделать это для вас, если хотите." },
      { Gender = 'Female', Time = 5.0, MSG = "Это вам прекрасно подходит" },
      { Gender = 'Female', Time = 5.0, MSG = "Боже мой, как это было сделано специально для вас!" },
    }
  },

  ["Skins"] = {
    ['Male'] = { Gender = false, Time = false, MSG = "Male"},
    ['Female'] = { Gender = false, Time = false, MSG = "Женщина"},
    ['Select'] = { Gender = false, Time = false, MSG = "Select"},
    ["SetGender"] = { Gender = false, Time = false, MSG = "Выбрать пол" },
    ["ErrAge"] = { Gender = false, Time = 3.0, MSG = "Вы не указали возраст своих персонажей!" },
    ["ErrName"] = { Gender = false, Time = 3.0, MSG = "Вы не указали имя своего персонажа!" },
    ["ErrNatio"] = { Gender = false, Time = 3.0, MSG = "Вы не указали национальность своих персонажей!" },
    ["ErrTorso"] = { Gender = false, Time = 3.0, MSG = "Вы не установили тип торса своих персонажей!" },
    ["ErrLegs"] = { Gender = false, Time = 3.0, MSG = "Вы не установили тип ног своего персонажа!" },
    ["ErrHead"] = { Gender = false, Time = 3.0, MSG = "Вы не установили тип головы для своих персонажей!" },
    ["ErrEyes"] = { Gender = false, Time = 3.0, MSG = "Вы не установили тип глаз ваших персонажей!" },
    ["ErrHair"] = { Gender = false, Time = 3.0, MSG = "Вы не указали тип волос для своих персонажей!" },
  },

  ["Spawner"] = {
    ['Cutscene'] = { Gender = false, Time = false, MSG = "Cutscene"},
    ["DriverName"] = { Gender = false, Time = false, MSG = "Драйвер дилижанса" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Вы выключили музыку" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Вы включили музыку" },
    ["ErrStepOut"] = { Gender = false, Time = 5.0, MSG = "Вы не можете выходить из кат-сцены." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Стоп | Включить музыку" },
    ["StepOut"] = { Gender = false, Time = false, MSG = "Шаг вперед"},
    ["Cinema"] = { Gender = false, Time = false, MSG = "Кинотеатр"},

    ['Welcome'] = {
      { Gender = false, Time = 5.0, MSG = "Добро пожаловать в наш округ, желаю вам приятного пребывания!" },
      { Gender = false, Time = 5.0, MSG = "Я ценю, что ты умный, потому что ты выбрал для этого округа! Ха-ха, добро пожаловать, мой друг!" },
    },

    ["Advice"] = {
      { Gender = false, Time = 5.0, MSG = "Я отведу вас к прекрасному портному, который поможет вам с новой одеждой" },
      { Gender = false, Time = 5.0, MSG = "После такого долгого путешествия хороший портной - это то, что вам нужно. Позвольте мне оказать честь и привести вас к одному из них." },
    },

    ["Tailor"] = {
      { Gender = false, Time = 5.0, MSG = "Портной рядом, я бы подумал о новой одежде." },
      { Gender = false, Time = 5.0, MSG = "Ты найдешь портного за углом, я бы подумал о покупке новой одежды." },
    },

    ["Goodbye"] = {
      { Gender = false, Time = 5.0, MSG = "До свидания, друг, приятно было познакомиться! Приятного вам пребывания!" },
      { Gender = false, Time = 5.0, MSG = "Было приятно познакомиться с вами, желаю вам приятного пребывания!" },
      { Gender = false, Time = 5.0, MSG = "Тогда это $12,25... ха, шучу, приятного пребывания, мой друг!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0, MSG = "Это хороший округ, в который вы приехали, в городе есть чем заняться, вам может понравиться." },
      { Gender = false, Time = 7.0, MSG = "Разве не забавно, какая погода бывает иногда, она может меняться как сумасшедшая! Ты серьезно не хочешь попасть в один из этих штормов, я тебе скажу ." },
      { Gender = false, Time = 5.0, MSG = "Похоже, вы путешествовали довольно долго. Надеюсь, ваше путешествие прошло без каких-либо проблем." },
      { Gender = false, Time = 5.0, MSG = "Это не только я, или у нас очень вонючий." },
      { Gender = false, Time = 5.0, MSG = "Посмотрите на эту погоду, разве она не прекрасна" },
      { Gender = false, Time = 5.0, MSG = "Мы почти у цели. Надеюсь, вам пока нравится." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Открыть меню" },
    ["Inventory"] = { Gender = false, Time = false, MSG = "Инвентарь"},
    ["AdminMenu"] = { Gender = false, Time = false, MSG = "Меню администратора"},
    ["Zoning"] = { Gender = false, Time = false, MSG = "Зонирование" },
    ["AutoMove"] = { Gender = false, Time = false, MSG = "Начать автоперемещение" },
    ["StopMove"] = { Gender = false, Time = false, MSG = "Остановить автоматическое перемещение" },
    ["Unequipt"] = { Gender = false, Time = false, MSG = "Неэкипированное оружие" },
    ["Error"] = { Gender = false, Time = false, MSG = "Ошибка" },
    ["System"] = { Gender = false, Time = false, MSG = "Система"},
    ["Initialize"] = { Gender = false, Time = 3.0, MSG = "Меню настроек инициализировано!" },
    ["Initialize2"] = { Gender = false, Time = 5.0, MSG = "Теперь вы можете открыть меню настроек с помощью левой клавиши Alt!" },
    ["NoNextPage"] = { Gender = false, Time = 3.0, MSG = "Сейчас нет следующей страницы" },
    ["NoBackPage"] = { Gender = false, Time = 3.0, MSG = "На данный момент нет задней страницы" },
    ["CoordsSave"] = { Gender = false, Time = 5.0, MSG = "Вы сохранили свои координаты!" },
    ["ErrSkin"] = { Gender = false, Time = 5.0, MSG = "У вас нет скина для загрузки! Сначала создайте скин!" },
    ["LogOut"] = { Gender = false, Time = 5.0, MSG = "Выход из системы"},
    ["LogOutCoords"] = { Gender = false, Time = 5.0, MSG = "Сохранение позиции вашего персонажа" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Включена вся музыка в игре!" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Вся музыка в игре отключена!" },
    ["MusicUnable"] = { Gender = false, Time = 5.0, MSG = "Вы отключили музыку в настройках, не можете воспроизводить музыку!" },
    ["VolSet"] = { Gender = false, Time = 5.0, MSG = "Громкость установлена ​​на %" },
    ["VolSet2"] = { Gender = false, Time = 5.0, MSG = "Громкость повлияет на следующую песню!" },
    ["CharDel"] = { Gender = false, Time = 10.0, MSG = "Выполняется удаление персонажа" },
    ["DelDone"] = { Gender = false, Time = 5.0, MSG = "Вся информация о персонаже удалена, мы возвращаем вас в меню выбора персонажа" },
  },

  ["FastTravel"] = {
    ["ZoneName"] = { Gender = false, Time = false, MSG = "Быстрое путешествие" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Dokus Travel Agency" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0, MSG = "Приятного путешествия и спасибо, что путешествовали, Dokus Industries" },
      { Gender = false, Time = 5.0, MSG = "Мы надеемся, что вам понравится ваше путешествие, безопасное путешествие" },
      { Gender = false, Time = 5.0, MSG = "Мы рады, что вы выбрали Dokus Industries для путешествий!" },
      { Gender = false, Time = 5.0, MSG = "Вы можете войти в лодку в доке, безопасное путешествие" },
    }

  },

  ["GunStore"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "торговец оружием"},
    ["BlipName"] = { Gender = false, Time = false, MSG = "Оружейный магазин"},
    ["NoMoney"] = { Gender = false, Time = 3.0, MSG = "У вас недостаточно денег!" },
    ["BoughtAmmo1"] = { Gender = false, Time = 3.0, MSG = "Вы купили" },
    ["BoughtAmmo2"] = { Gender = false, Time = 3.0, MSG = "Боеприпасы!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Открыть меню" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0, MSG = "Этот товар в настоящее время не работает должным образом и в данный момент не продается!" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Добро пожаловать, надеюсь, вы пришли в мой магазин в чистой обуви!" },
      { Gender = 'Male', Time = 3.5, MSG = "Да, мальчик, добро пожаловать в мой магазин, сэр!" },
      { Gender = 'Male', Time = 3.5, MSG = "О, посмотри на это, здравствуйте. Как ваш день сегодня, сэр?" },
      { Gender = 'Female', Time = 3.5, MSG = "Добро пожаловать, надеюсь, вы пришли в мой магазин в чистой обуви!" },
      { Gender = 'Female', Time = 3.5, MSG = "Да, мальчик, добро пожаловать в мой магазин! О, простите меня, моя леди, я пережил." },
      { Gender = 'Female', Time = 3.5, MSG = "О, посмотри на это, здравствуй. Как твой день сегодня, моя леди?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Спасибо за визит! Безопасные путешествия, мой друг!" },
      { Gender = 'Male', Time = 3.5, MSG = "Желаю вам хорошего дня, наслаждайтесь вашим днем, сэр!" },
      { Gender = 'Male', Time = 3.5, MSG = "Наслаждайтесь днем, сэр, спасибо за визит." },
      { Gender = 'Male', Time = 3.5, MSG = "Доброго пути, друг мой, спасибо за визит" },
      { Gender = 'Female', Time = 3.5, MSG = "Спасибо за визит! Безопасные путешествия, миледи!" },
      { Gender = 'Female', Time = 3.5, MSG = "Желаю вам хорошего дня, наслаждайтесь этим днем, мэм!" },
      { Gender = 'Female', Time = 3.5, MSG = "Наслаждайтесь днем, мэм, спасибо за визит." },
      { Gender = 'Female', Time = 3.5, MSG = "Доброго пути, миледи, спасибо за визит" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Чем я могу вам помочь, сэр?" },
      { Gender = 'Female', Time = 3.5, MSG = "Чем я могу вам помочь, моя леди?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"] = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"] = { Gender = false, Time = false, MSG = "Лутбокс"},
    ["OpenBox"] = { Gender = false, Time = false, MSG = "Нажмите ~color_green~E~q~, чтобы открыть" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "У вас нет выбранного предмета для падения на землю! Сначала выберите предмет!" },
    ["NotEnough"] = { Gender = false, Time = false, MSG = "У вас недостаточно этого предмета в вашем инвентаре!" },
    ["NoAmount"] = { Gender = false, Time = false, MSG = "У вас не указана сумма в параметре суммы. Невозможно выбросить ваш предмет!" },
    ["ToClose"] = { Gender = false, Time = 5.0, MSG = "Вы находитесь рядом с другим DropBox. Подойдите ближе или дальше!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Я проголодался, мне нужно что-нибудь поесть" },
      { Gender = false, Time = 5.0, MSG = "Я так голоден, мне действительно нужно что-нибудь поесть" },
      { Gender = false, Time = 5.0, MSG = "У меня кружится голова, мне нужно что-нибудь поесть" },
      { Gender = false, Time = 5.0, MSG = "О, у меня болит живот, я еще не ел" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Мне так хочется пить, мне нужно что-нибудь выпить" },
      { Gender = false, Time = 5.0, MSG = "У меня пересохло во рту, мне нужно воды" },
      { Gender = false, Time = 5.0, MSG = "Эээ, если я не выпью в ближайшее время, я могу потерять сознание" },
      { Gender = false, Time = 5.0, MSG = "Никогда в жизни я не чувствовал такой жажды" },
    }
  },

  ["Scavenger"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Мусорщик"},
    ["Rewards"] = { Gender = false, Time = 3.0, MSG = "Вы собрали урожай" },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0, MSG = "Этот куст уже собран" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Урожай"},
  },

  ["ScratchCards"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Банковский работник"},
    ["NoTickets"] = { Gender = false, Time = 5.0, MSG = "У вас нет лотерейных билетов!" },
    ["WonCard"] = { Gender = false, Time = 5.0, MSG = "Вы выиграли $" },
    ["WonTotal"] = { Gender = false, Time = 5.0, MSG = "Вы выиграли в общей сложности $" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Урожай"},
    ["BetterLuck"] = { Gender = false, Time = false, MSG = "Удачи в следующий раз" },
    ["NoWin"] = { Gender = false, Time = 5.0, MSG = "К сожалению, на этот раз вы ничего не выиграли" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"] = { Gender = false, Time = false, MSG = "Танец"},
    ["MenuStop"] = { Gender = false, Time = false, MSG = "Стоп"},
    ["MenuNext"] = { Gender = false, Time = false, MSG = "Далее"},
    ["MenuBack"] = { Gender = false, Time = false, MSG = "Назад"},
    ["ShowFear"] = { Gender = false, Time = false, MSG = "Показать/выразить страх"},
    ["StopTrumpet"] = { Gender = false, Time = 5.0, MSG = "Вы можете остановить воспроизведение, нажав Backspace - Пробел или X" },
    ["TrumpWarning"] = { Gender = false, Time = 5.0, MSG = "Если труба застревает в вашей руке, перезагрузите скин через меню, чтобы исправить это" },
    ["ScenarioStop"] = { Gender = false, Time = 5.0, MSG = "Вы можете остановить сценарий, набрав [ /scenario stop ] в чате" },
    ["SetStatus"] = { Gender = false, Time = false, MSG = "Установите свой статус!" },
  },

  ["Stables"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Стабильный"},
    ["NPCName"] = { Gender = false, Time = false, MSG = "Стабильный оператор" },
    ["HorseNamed"] = { Gender = false, Time = 3.5, MSG = "Вы назвали свою лошадь: " },
    ["HorseBought"] = { Gender = false, Time = 5.0, MSG = "Теперь ваша лошадь готова! Было приятно иметь с вами дело." },
    ["HorseStored"] = { Gender = false, Time = 5.0, MSG = "Ваша лошадь сохранена, мы о ней позаботимся!" },
    ["NameHorse"] = { Gender = false, Time = false, MSG = "Назовите свою лошадь" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Боюсь, у вас недостаточно денег, чтобы купить эту лошадь!" },
    ["HorseReady"] = { Gender = false, Time = 5.0, MSG = "Твоя лошадь готова в своей конюшне!" },
    ["FetchHorse"] = { Gender = false, Time = 5.0, MSG = "Конечно, один момент, дай мне твою лошадь!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0, MSG = "Вот вам, сэр, как никогда здоров!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Открыть меню" },
    ["StoreHorse"] = { Gender = false, Time = false, MSG = "Хранить лошадь"},
    ["NoHorseName"] = { Gender = false, Time = 5.0, MSG = "Извините, но вам нужно дать вашей лошади имя" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Добро пожаловать, надеюсь, вы пришли в мой магазин в чистой обуви!" },
      { Gender = 'Male', Time = 5.0, MSG = "Да, мальчик, добро пожаловать в мой магазин, у меня есть для вас лошади, сэр!" },
      { Gender = 'Male', Time = 5.0, MSG = "О, посмотри на это, здравствуйте. Как ваш день сегодня, сэр?" },
      { Gender = 'Female', Time = 5.0, MSG = "Добро пожаловать, надеюсь, вы зайдете в мой магазин в чистой обуви!" },
      { Gender = 'Female', Time = 5.0, MSG = "Да, мальчик, добро пожаловать в мой магазин! О, простите меня, моя леди, я пережил." },
      { Gender = 'Female', Time = 5.0, MSG = "О, посмотри на это, здравствуй. Как твой день сегодня, моя леди?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Спасибо за визит! Безопасные путешествия, мой друг!" },
      { Gender = 'Male', Time = 5.0, MSG = "Желаю вам хорошего дня, желаю вам приятного дня, сэр!" },
      { Gender = 'Male', Time = 5.0, MSG = "Наслаждайтесь днем, сэр, спасибо за визит." },
      { Gender = 'Male', Time = 5.0, MSG = "Доброго пути, друг мой, спасибо за визит" },
      { Gender = 'Female', Time = 5.0, MSG = "Спасибо за визит! Безопасные путешествия, миледи!" },
      { Gender = 'Female', Time = 5.0, MSG = "Желаю вам хорошего дня, наслаждайтесь этим днем, мэм!" },
      { Gender = 'Female', Time = 5.0, MSG = "Наслаждайтесь днем, мэм, спасибо за визит." },
      { Gender = 'Female', Time = 5.0, MSG = "Доброго пути, миледи, спасибо за визит" },
    }
  },

  ["Stores"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Универсальный магазин"},
    ["NPCName"] = { Gender = false, Time = false, MSG = "Работник универсального магазина"},
    ["MenuBuy"] = { Gender = false, Time = false, MSG = "Универсальный магазин (Купить)"},
    ["MenuSell"] = { Gender = false, Time = false, MSG = "Инвентаризация (Продажа)"},
    ["ButtonBuy"] = { Gender = false, Time = false, MSG = "Купить" },
    ["ButtonSell"] = { Gender = false, Time = false, MSG = "Продать" },
    ["ButtonMan"] = { Gender = false, Time = false, MSG = "Управление" },
    ["NotInInvent"] = { Gender = false, Time = 3.5, MSG = "У вас нет столько в вашем инвентаре!" },
    ["Bought"] = { Gender = false, Time = 3.5, MSG = "Вы купили" },
    ["Sold"] = { Gender = false, Time = 3.5, MSG = "Вы продали" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно денег, чтобы купить это / это количество предметов!" },
    ["NoItem"] = { Gender = false, Time = false, MSG = "Вы еще не выбрали элемент!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Добро пожаловать! Надеюсь, вы вошли в мой магазин в чистой обуви!" },
      { Gender = false, Time = 5.0, MSG = "Эй, клиент, это чертовски круто!" },
      { Gender = false, Time = 5.0, MSG = "О, посмотри на это, привет." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Спасибо за визит! Безопасных путешествий!" },
      { Gender = false, Time = 5.0, MSG = "Желаю вам хорошего дня, пусть вам понравится!" },
      { Gender = false, Time = 5.0, MSG = "Наслаждайтесь днем, спасибо за визит." },
      { Gender = false, Time = 5.0, MSG = "Доброго пути, друг, спасибо за визит" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "Чем я могу вам помочь?" },
      { Gender = false, Time = 2.5, MSG = "А, ты хочешь что-нибудь купить, да?" },
      { Gender = false, Time = 2.5, MSG = "Вы ищете что-то особенное?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "Чем я могу вам помочь?" },
      { Gender = false, Time = 2.5, MSG = "Я поставлю несколько тегов, у меня в кармане только двадцать долларов!" },
      { Gender = false, Time = 2.5, MSG = "А, ты хочешь что-то продать, да?" },
      { Gender = false, Time = 2.5, MSG = "Я беру все, от рыбы до хлеба, от хлеба до кофе. Вы называете это!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Было приятно иметь с вами дело!" },
      { Gender = false, Time = 5.0, MSG = "Я рад, что мог быть вам полезен!" },
      { Gender = false, Time = 5.0, MSG = "Я рад, что смог вам помочь" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Интерактивный" }
  },

  ["WorldEdits"] = {
    ["GuarmaFishBar"] = { Gender = false, Time = false, MSG = "Guarma Fishers Bar"},
    ["GuarmaHideout"] = { Gender = false, Time = false, MSG = "Убежище Гуарма" },
    ["GuarmaArena"]   = { Gender = false, Time = false, MSG = "Арена гладиаторов" },
    ["MexicoBridge1"] = { Gender = false, Time = false, MSG = "Мост в Мексике"},
    ["HangingBridge"] = { Gender = false, Time = false, MSG = "Висячий мост" },
    ["NakotaNatCamp"] = { Gender = false, Time = false, MSG = "Лагерь коренных жителей Накота"},
    ["ApacheNatCamp"] = { Gender = false, Time = false, MSG = "Apache Native Camp"},
    ["LakotaNatCamp"] = { Gender = false, Time = false, MSG = "Лагерь коренных жителей Лакота"},
    ["ArthurGraveSt"] = { Gender = false, Time = false, MSG = "Надгробие Артура"},
  },























}
