Lang['ru'] = {

  ["System"] = {
    ["Yes"] = { Gender = false, Time = false, MSG = "Да" },
    ["No"] = { Gender = false, Time = false, MSG = "Нет"},
    ["Error"] = { Gender = false, Time = false, MSG = "ОШИБКА" },
    ["System"] = { Gender = false, Time = false, MSG = "Система"},
    ["Success"] = { Gender = false, Time = false, MSG = "Готово" },
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
    ["WLMade2"] = { Gender = false, Time = false, MSG = "Запрос на белый список был отправлен автоматически и сейчас находится на рассмотрении." },
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
    ["Sisika"] = { Gender = false, Time = false, MSG = "Тюрьма Шишика"},
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Сен-Дени"},
  },

  ["Banking"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Банковское дело"},
    ["NPCName"] = { Gender = false, Time = false, MSG = "Банковский работник"},
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "В настоящее время я занят другим гражданином, подождите, пожалуйста!" },
    ["NoAccount"] = { Gender = false, Time = 3.5, MSG = "Извините, но в наших журналах нет зарегистрированного Вами банковского счета. Вам нужно открыть счет, прежде чем вы сможете его использовать!" },
    ["UseBankKey"] = { Gender = false, Time = 3.5, MSG = "Использовать банк" },
    ["AlAccount"] = { Gender = false, Time = 3.5, MSG = "У вас уже есть счет в этом банке!" },
    ["AcCreation"] = { Gender = false, Time = 3.5, MSG = "Вы оплатили сбор за учетную запись, учетная запись создается!" },
    ["AcCreated"] = { Gender = false, Time = 3.5, MSG = "Ваш банковский счет открыт! Теперь вы можете им воспользоваться." },
    ["NoDepMoney"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно денег, чтобы пополнить депозит!" },
    ["NoDepGold"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно золота, чтобы пополнить депозит!" },
    ["NoWitMoney"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно денег, чтобы произвести снятие!" },
    ["NoWitGold"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно золота, чтобы произвести снятие!" },
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
      { Gender = false, Time = false, MSG = "Я был рад Вам помочь, всего доброго!" },
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
    ["NeedToGo"] = { Gender = false, Time = 3.5, MSG = "У меня еще много дел и клиентов, которым уделить время. Дайте мне знать, если вам понадобится помощь" },
    ["DressingRoom"] = { Gender = false, Time = false, MSG = "Гардероб"},
    ["Confirmation"] = { Gender = false, Time = false, MSG = "Подтверждение"},
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5, MSG = "Хотите сменить одежду?" },
    ["Pay"] = { Gender = false, Time = false, MSG = "Оплата"},
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Открыть меню" },
    ["Outfits"] = { Gender = false, Time = false, MSG = "Одежда"},

    ['EnterStore'] = {
      { Gender = 'Male', Time = 3.5, MSG = "Добро пожаловать! Надеюсь, Вы пришли в мой магазин в чистой обуви!" },
      { Gender = 'Male', Time = 3.5, MSG = "Приветствую! Добро пожаловать в мой магазин! Сэр, я так рад вас видеть!" },
      { Gender = 'Male', Time = 3.5, MSG = "Здравствуйте! Как ваше настроение, сэр?" },
      { Gender = 'Female', Time = 3.5, MSG = "Добро пожаловать! Надеюсь, Вы пришли в мой магазин в чистой обуви!" },
      { Gender = 'Female', Time = 3.5, MSG = "Добро пожаловать в мой магазин! Вы прекрасно выглядите!" },
      { Gender = 'Female', Time = 3.5, MSG = "О, Здравствуй! Чем могу Вам помочь?" },
    },

    ['ExitStore'] = {
      { Gender = 'Male', Time = 3.5, MSG = "Спасибо за визит, мой друг!" },
      { Gender = 'Male', Time = 3.5, MSG = "Желаю вам хорошего дня, сэр!" },
      { Gender = 'Male', Time = 3.5, MSG = "Сэр, спасибо за визит!" },
      { Gender = 'Male', Time = 3.5, MSG = "Доброго пути, спасибо за визит!" },
      { Gender = 'Female', Time = 3.5, MSG = "Спасибо за визит, миледи!" },
      { Gender = 'Female', Time = 3.5, MSG = "Желаю вам хорошего дня, мэм!" },
      { Gender = 'Female', Time = 3.5, MSG = "Счастливого пути, мэм." },
      { Gender = 'Female', Time = 3.5, MSG = "Доброго пути, миледи! Спасибо за визит" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3, MSG = "Чем я могу вам помочь, сэр?" },
      { Gender = 'Female', Time = 3, MSG = "Чем я могу вам помочь, миледи?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Конечно, я смогу помочь вам, уважаемый. Пожалуйста, подойдите к прилавку." },
      { Gender = 'Male', Time = 3.5, MSG = "Нужна одежда? Сэр, вы попали в нужное место. Пожалуйста, следуйте за мной." },
      { Gender = 'Female', Time = 3.5, MSG = "Как вам будет угодно, миледи, я с большим удовольствием помогу вам!" },
      { Gender = 'Female', Time = 3.5, MSG = "Нужна одежда? Мэм, вы попали в нужное место. Пожалуйста, следуйте за мной." },
    },

    ["Reactions"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Это вам подходит, сэр" },
      { Gender = 'Male', Time = 5.0, MSG = "Вам это к лицу! Я даже немного завидую." },
      { Gender = 'Male', Time = 5.0, MSG = "О боже, выглядит потрясающе!" },
      { Gender = 'Male', Time = 5.0, MSG = "Это лучшее, что есть в нашем городе!" },
      { Gender = "Male", Time = 5.0, MSG = "Вы вряд-ли найдете предложение лучше моего!" },
      { Gender = 'Male', Time = 5.0, MSG = "Вам так это идет!" },
      { Gender = 'Male', Time = 5.0, MSG = "Боже мой, на Вас это сидит идеально!" },
      { Gender = 'Female', Time = 5.0, MSG = "Это вам подходит, сэр" },
      { Gender = 'Female', Time = 5.0, MSG = "О, Вы так прекрасно выглядите!" },
      { Gender = 'Female', Time = 5.0, MSG = "О боже, смотрится очень стильно!" },
      { Gender = 'Female', Time = 5.0, MSG = "Это лучшее, что есть в нашем городе!" },
      { Gender = 'Female', Time = 5.0, MSG = "Такая красивая, такая особенная, божественная!" },
      { Gender = 'Female', Time = 5.0, MSG = "Это прекрасно сочетается с Вашим гардеробом" },
      { Gender = 'Female', Time = 5.0, MSG = "Боже мой, Вы так прекрасны!" },
    }
  },

  ["Skins"] = {
    ['Male'] = { Gender = false, Time = false, MSG = "Мужчина"},
    ['Female'] = { Gender = false, Time = false, MSG = "Женщина"},
    ['Select'] = { Gender = false, Time = false, MSG = "Выбрать"},
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
    ['Cutscene'] = { Gender = false, Time = false, MSG = "Кат-сцена"},
    ["DriverName"] = { Gender = false, Time = false, MSG = "Кучер дилижанса" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Вы выключили музыку" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Вы включили музыку" },
    ["ErrStepOut"] = { Gender = false, Time = 5.0, MSG = "Вы не можете выходить из кат-сцены." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Стоп | Включить музыку" },
    ["StepOut"] = { Gender = false, Time = false, MSG = "Далее"},
    ["Cinema"] = { Gender = false, Time = false, MSG = "Кинотеатр"},

    ['Welcome'] = {
      { Gender = false, Time = 5.0, MSG = "Добро пожаловать в наш округ, желаю вам увлекательного путешествия!" },
      { Gender = false, Time = 5.0, MSG = "Вы основательно подготовились к приключениям. Добро пожаловать, мой друг!" },
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
      { Gender = false, Time = 5.0, MSG = "До свидания, друг, приятно было познакомиться! Приятного тебе путешествия!" },
      { Gender = false, Time = 5.0, MSG = "Было приятно познакомиться с вами, желаю вам приятного путешествия!" },
      { Gender = false, Time = 5.0, MSG = "С тебя $12,25... ха, шучу, друг!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0, MSG = "В городе есть чем заняться, вы обязательно найдете тут занятие по душе" },
      { Gender = false, Time = 7.0, MSG = "В этих краях погода может меняться как сумасшедша! Бывают иногда такие штормы - ужас!" },
      { Gender = false, Time = 5.0, MSG = "Похоже, вы путешествовали довольно долго. Надеюсь, ваше путешествие прошло без каких-либо проблем." },
      { Gender = false, Time = 5.0, MSG = "Мне кажется, или тут чем-то воняет?" },
      { Gender = false, Time = 5.0, MSG = "Посмотрите на эту погоду, разве она не прекрасна?" },
      { Gender = false, Time = 5.0, MSG = "Мы почти у цели. Надеюсь, вы не успели задремать" },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Открыть меню" },
    ["Inventory"] = { Gender = false, Time = false, MSG = "Инвентарь"},
    ["AdminMenu"] = { Gender = false, Time = false, MSG = "Меню администратора"},
    ["Zoning"] = { Gender = false, Time = false, MSG = "Зонирование" },
    ["AutoMove"] = { Gender = false, Time = false, MSG = "Начать автоперемещение" },
    ["StopMove"] = { Gender = false, Time = false, MSG = "Остановить автоматическое перемещение" },
    ["Unequipt"] = { Gender = false, Time = false, MSG = "Оружие в инвентаре" },
    ["Error"] = { Gender = false, Time = false, MSG = "Ошибка" },
    ["System"] = { Gender = false, Time = false, MSG = "Система"},
    ["Initialize"] = { Gender = false, Time = 3.0, MSG = "Меню настроек инициализировано" },
    ["Initialize2"] = { Gender = false, Time = 5.0, MSG = "Теперь вы можете открыть меню настроек с помощью левой клавиши Alt!" },
    ["NoNextPage"] = { Gender = false, Time = 3.0, MSG = "Нет следующей страницы" },
    ["NoBackPage"] = { Gender = false, Time = 3.0, MSG = "На данный нет такой страницы" },
    ["CoordsSave"] = { Gender = false, Time = 5.0, MSG = "Вы сохранили свои координаты" },
    ["ErrSkin"] = { Gender = false, Time = 5.0, MSG = "У вас нет скина для загрузки. Сначала создайте скин" },
    ["LogOut"] = { Gender = false, Time = 5.0, MSG = "Выход из системы"},
    ["LogOutCoords"] = { Gender = false, Time = 5.0, MSG = "Сохранение позиции вашего персонажа" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Включена вся музыка в игре" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Вся музыка в игре отключена" },
    ["MusicUnable"] = { Gender = false, Time = 5.0, MSG = "Вы отключили музыку в настройках!" },
    ["VolSet"] = { Gender = false, Time = 5.0, MSG = "Громкость установлена ​​на %" },
    ["VolSet2"] = { Gender = false, Time = 5.0, MSG = "Громкость повлияет на следующую песню!" },
    ["CharDel"] = { Gender = false, Time = 10.0, MSG = "Выполняется удаление персонажа" },
    ["DelDone"] = { Gender = false, Time = 5.0, MSG = "Вся информация о персонаже удалена, мы возвращаем вас в меню выбора персонажа" },
  },

  ["FastTravel"] = {
    ["ZoneName"] = { Gender = false, Time = false, MSG = "Быстрое путешествие" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Агенство путешествий" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0, MSG = "Приятного путешествия!" },
      { Gender = false, Time = 5.0, MSG = "Мы надеемся, что вам понравится ваше путешествие!" },
      { Gender = false, Time = 5.0, MSG = "Мы рады, что вы выбрали наше агенство путешествий!" },
      { Gender = false, Time = 5.0, MSG = "Вы можете войти в лодку в доке для начала путешествия" },
    }

  },

  ["GunStore"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "торговец оружием"},
    ["BlipName"] = { Gender = false, Time = false, MSG = "Оружейный магазин"},
    ["NoMoney"] = { Gender = false, Time = 3.0, MSG = "У вас недостаточно денег!" },
    ["BoughtAmmo1"] = { Gender = false, Time = 3.0, MSG = "Вы купили" },
    ["BoughtAmmo2"] = { Gender = false, Time = 3.0, MSG = "Боеприпасы" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Открыть меню" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0, MSG = "Этот товар в данный момент не продается!" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Добро пожаловать, надеюсь, вы пришли в мой магазин в чистой обуви?" },
      { Gender = 'Male', Time = 3.5, MSG = "Мой мальчик, добро пожаловать в мой магазин!" },
      { Gender = 'Male', Time = 3.5, MSG = "Здравствуйте. Как ваш день сегодня, сэр?" },
      { Gender = 'Female', Time = 3.5, MSG = "Добро пожаловать, надеюсь, вы пришли в мой магазин в чистой обуви?" },
      { Gender = 'Female', Time = 3.5, MSG = "Мальчик мой! Добро пожаловать в магазин! О, простите меня, моя леди, я обознался!" },
      { Gender = 'Female', Time = 3.5, MSG = "Здравствуйте. Как Ваш день сегодня, моя леди?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Спасибо за визит! Береги себя, мой друг!" },
      { Gender = 'Male', Time = 3.5, MSG = "Желаю вам хорошего дня, сэр!" },
      { Gender = 'Male', Time = 3.5, MSG = "Сэр, спасибо за визит." },
      { Gender = 'Male', Time = 3.5, MSG = "Доброго пути, друг мой, спасибо за визит" },
      { Gender = 'Female', Time = 3.5, MSG = "Спасибо за визит, миледи!" },
      { Gender = 'Female', Time = 3.5, MSG = "Желаю вам хорошего дня, мэм!" },
      { Gender = 'Female', Time = 3.5, MSG = "Мэм, спасибо за визит." },
      { Gender = 'Female', Time = 3.5, MSG = "Доброго пути, миледи, спасибо за визит" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Чем я могу вам помочь, сэр?" },
      { Gender = 'Female', Time = 3.5, MSG = "Чем я могу вам помочь, миледи?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"] = { Gender = false, Time = false, MSG = "ДропБокс" },
    ["LootBox"] = { Gender = false, Time = false, MSG = "Лутбокс"},
    ["OpenBox"] = { Gender = false, Time = false, MSG = "Нажмите ~color_green~E~q~, чтобы открыть" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "У вас нет выбранного предмета для сброса на землю! Сначала выберите предмет!" },
    ["NotEnough"] = { Gender = false, Time = false, MSG = "У Вас недостаточное количество этого предмета в инвентаре!" },
    ["NoAmount"] = { Gender = false, Time = false, MSG = "У Вас не указана сумма в параметре суммы. Невозможно выбросить это!" },
    ["ToClose"] = { Gender = false, Time = 5.0, MSG = "Вы находитесь рядом с другим ДропБоксом. Подойдите ближе или наоборот отойдите!" },
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
    ["Name"] = { Gender = false, Time = false, MSG = "Собиратель"},
    ["Rewards"] = { Gender = false, Time = 3.0, MSG = "Вы собрали урожай" },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0, MSG = "Этот куст уже собран" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Добыча"},
  },

  ["ScratchCards"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Банковский работник"},
    ["NoTickets"] = { Gender = false, Time = 5.0, MSG = "У вас нет лотерейных билетов!" },
    ["WonCard"] = { Gender = false, Time = 5.0, MSG = "Вы выиграли $" },
    ["WonTotal"] = { Gender = false, Time = 5.0, MSG = "Вы выиграли в общей сложности $" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Лоттерейный счет"},
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
    ["TrumpWarning"] = { Gender = false, Time = 5.0, MSG = "Если что-то застряло в руках (визуально), перезагрузите скин через меню, чтобы исправить это" },
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
    ["HorseReady"] = { Gender = false, Time = 5.0, MSG = "Твоя лошадь готова!" },
    ["FetchHorse"] = { Gender = false, Time = 5.0, MSG = "Конечно, один момент, давай я посмотрю твою лошадь!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0, MSG = "Вот вам, сэр!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Открыть меню" },
    ["StoreHorse"] = { Gender = false, Time = false, MSG = "Сохранить лошадь"},
    ["NoHorseName"] = { Gender = false, Time = 5.0, MSG = "Извините, но вам нужно дать вашей лошади имя" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Добро пожаловать, надеюсь, вы пришли в мой магазин в чистой обуви!" },
      { Gender = 'Male', Time = 5.0, MSG = "Добро пожаловать, у меня есть для вас лошади, сэр!" },
      { Gender = 'Male', Time = 5.0, MSG = "Здравствуйте. Как Вы, сэр?" },
      { Gender = 'Female', Time = 5.0, MSG = "Добро пожаловать, надеюсь, вы зайдете в мой магазин в чистой обуви!" },
      { Gender = 'Female', Time = 5.0, MSG = "Добро пожаловать в мой магазин! Миледи, я к Вашим услугам!" },
      { Gender = 'Female', Time = 5.0, MSG = "Как Ваш день сегодня, миледи?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Спасибо за визит!" },
      { Gender = 'Male', Time = 5.0, MSG = "Желаю вам хорошего дня, сэр!" },
      { Gender = 'Male', Time = 5.0, MSG = "Сэр, спасибо за визит." },
      { Gender = 'Male', Time = 5.0, MSG = "Доброго пути, спасибо за визит" },
      { Gender = 'Female', Time = 5.0, MSG = "Спасибо за визит, миледи!" },
      { Gender = 'Female', Time = 5.0, MSG = "Желаю вам хорошего дня, мэм!" },
      { Gender = 'Female', Time = 5.0, MSG = "Мэм, спасибо за визит." },
      { Gender = 'Female', Time = 5.0, MSG = "Доброго пути, миледи, спасибо за визит" },
    }
  },

  ["Stores"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Универсальный магазин"},
    ["NPCName"] = { Gender = false, Time = false, MSG = "Работник универсального магазина"},
    ["MenuBuy"] = { Gender = false, Time = false, MSG = "Универсальный магазин (Покупка)"},
    ["MenuSell"] = { Gender = false, Time = false, MSG = "Инвентаризация (Продажа)"},
    ["ButtonBuy"] = { Gender = false, Time = false, MSG = "Купить" },
    ["ButtonSell"] = { Gender = false, Time = false, MSG = "Продать" },
    ["ButtonMan"] = { Gender = false, Time = false, MSG = "Управление" },
    ["NotInInvent"] = { Gender = false, Time = 3.5, MSG = "У вас нет столько места в вашем инвентаре!" },
    ["Bought"] = { Gender = false, Time = 3.5, MSG = "Вы купили" },
    ["Sold"] = { Gender = false, Time = 3.5, MSG = "Вы продали" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "У вас недостаточно денег, чтобы купить это!" },
    ["NoItem"] = { Gender = false, Time = false, MSG = "Вы еще ничего не выбрали!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Добро пожаловать! Надеюсь, вы вошли в мой магазин в чистой обуви!" },
      { Gender = false, Time = 5.0, MSG = "Эй, привет!" },
      { Gender = false, Time = 5.0, MSG = "О, посмотри на это!" },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Спасибо за визит!" },
      { Gender = false, Time = 5.0, MSG = "Желаю вам хорошего дня!" },
      { Gender = false, Time = 5.0, MSG = "Спасибо за визит." },
      { Gender = false, Time = 5.0, MSG = "Доброго пути, друг, спасибо за визит" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "Чем я могу вам помочь?" },
      { Gender = false, Time = 2.5, MSG = "А, Вы хотите что-нибудь купить, да?" },
      { Gender = false, Time = 2.5, MSG = "Вы ищете что-то особенное?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "Чем я могу вам помочь?" },
      { Gender = false, Time = 2.5, MSG = "У меня в кармане только двадцать долларов!" },
      { Gender = false, Time = 2.5, MSG = "А, ты хочешь что-то продать, да?" },
      { Gender = false, Time = 2.5, MSG = "Я беру все, от рыбы до хлеба, от хлеба до кофе" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Было приятно иметь с вами дело!" },
      { Gender = false, Time = 5.0, MSG = "Я рад, что мог быть вам полезен!" },
      { Gender = false, Time = 5.0, MSG = "Я рад, что смог вам помочь" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Интерактив" }
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
