Lang['bg'] = {

  ["System"] = {
    ["Yes"]           = { Gender = false, Time = false, MSG = "Да" },
    ["No"]            = { Gender = false, Time = false, MSG = "Не" },
    ["Error"]         = { Gender = false, Time = false, MSG = "ГРЕШКА" },
    ["System"]        = { Gender = false, Time = false, MSG = "Система" },
    ["Success"]       = { Gender = false, Time = false, MSG = "Успех"},
    ["BLCheck"]       = { Gender = false, Time = false, MSG = "Проверка на черния списък" },
    ["WLCheck"]       = { Gender = false, Time = false, MSG = "Проверка на белия списък" },
    ["SteamCheck"]    = { Gender = false, Time = false, MSG = "Проверка на Steam идентификацията" },
    ["SteamConFail"]  = { Gender = false, Time = false, MSG = "Не можем да се свържем с API на Steam, уверете се, че сте отворили Steam, преди да отворите RedM!" },
    ["UserBanned"]    = { Gender = false, Time = false, MSG = "Бяхте забранени от този сървър." },
    ["InfoDiscord"]   = { Gender = false, Time = false, MSG = "За повече информация посетете нашия Discord ".._DiscordInvite.."" },
    ["NoBanReason"]   = { Gender = false, Time = false, MSG = "Няма посочена причина"},
    ["WLPending"]     = { Gender = false, Time = false, MSG = "Вашата заявка за бял списък все още чака..." },
    ["WLDenied"]      = { Gender = false, Time = false, MSG = "Вашата заявка за бял списък е отказана с причина:" },
    ["WLMade1"]       = { Gender = false, Time = false, MSG = "За достъп до този сървър трябва да сте в белия списък." },
    ["WLMade2"]       = { Gender = false, Time = false, MSG = "Заявката за белия списък е направена автоматично и сега чака." },
    ["NoCharFound"]   = { Gender = false, Time = false, MSG = "Не може да се изпълни това действие, няма намерен символ!" },
    ["Language"]      = { Gender = false, Time = false, MSG = "Език"},
    ["LangNotEnter"]  = { Gender = false, Time = false, MSG = "Езиковият параметър беше празен!" },
    ["LanguageSetTo"] = { Gender = false, Time = false, MSG = "Езикът на клиента е зададен на " },
    ["LangNoSupport"] = { Gender = false, Time = 5.0,   MSG = "Този език не се поддържа!" },
    ["WelcomeTo"]     = { Gender = false, Time = false, MSG = "Добре дошли в:" },
    ["InProgress"]    = { Gender = false, Time = false, MSG = "В ход"},
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Отворете менюто" },
    ["InDevelopment"] = { Gender = false, Time = 5.0,   MSG = "Тази функция е в процес на разработка!" },

    -- Градове
    ["Guarma"]     = { Gender = false, Time = false, MSG = "Гуарма" },
    ["Sisika"]     = { Gender = false, Time = false, MSG = "Затвор Сисика"},
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"]         = { Gender = false, Time = false, MSG = "Банкиране"},
    ["NPCName"]      = { Gender = false, Time = false, MSG = "Работник на банкера"},
    ["NPCBusy"]      = { Gender = false, Time = 3.5,   MSG = "В момента съм зает с друг гражданин, един момент, моля!" },
    ["NoAccount"]    = { Gender = false, Time = 3.5,   MSG = "Съжалявам, но нямаме регистрирана банкова сметка в нашите регистрационни файлове. Трябва да си отворите банкова сметка, преди да можете да я изGenderзвате!" },
    ["UseBankKey"]   = { Gender = false, Time = 3.5,   MSG = "ИзGenderзване на банката"},
    ["AlAccount"]    = { Gender = false, Time = 3.5,   MSG = "Вие вече имате банкова сметка в тази банка!" },
    ["AcCreation"]   = { Gender = false, Time = 3.5,   MSG = "Платихте таксата за акаунта си, акаунтът се създава!" },
    ["AcCreated"]    = { Gender = false, Time = 3.5,   MSG = "Вашата банкова сметка е направена! Вече можете да отворите банковата си сметка." },
    ["NoDepMoney"]   = { Gender = false, Time = 3.5,   MSG = "Нямате достатъчно пари, за да направите този депозит!" },
    ["NoDepGold"]    = { Gender = false, Time = 3.5,   MSG = "Нямате достатъчно злато, за да направите този депозит!" },
    ["NoWitMoney"]   = { Gender = false, Time = 3.5,   MSG = "Нямате достатъчно пари, за да направите това теглене!" },
    ["NoWitGold"]    = { Gender = false, Time = 3.5,   MSG = "Нямате достатъчно злато, за да направите това теглене!" },
    ["DepMinMoney"]  = { Gender = false, Time = 3.5,   MSG = "Сумата на депозита трябва да бъде по-голяма от $0,01 цента!" },
    ["DepMinGold"]   = { Gender = false, Time = 3.5,   MSG = "Сумата на депозита трябва да бъде по-голяма от 0.01 злато!" },
    ["WitMinMoney"]  = { Gender = false, Time = 3.5,   MSG = "Сумата на депозита трябва да бъде по-голяма от $0,01 цента!" },
    ["WitMinGold"]   = { Gender = false, Time = 3.5,   MSG = "Сумата на депозита трябва да бъде по-голяма от 0.01 злато!" },
    ["ToFast"]       = { Gender = false, Time = 3.5,   MSG = "Съжалявам, но мога да правя само 1 транзакция наведнъж. Един момент, моля!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5,   MSG = "Вие сте направили депозит от $" },
    ["DepDoneGold"]  = { Gender = false, Time = 3.5,   MSG = "Вие сте направили депозит от " },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5,   MSG = "Вие сте изтеглили $" },
    ["WitDoneGold"]  = { Gender = false, Time = 3.5,   MSG = "Извършихте теглене на " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Добре дошли в нашата банка, как мога да бъда Genderезен?" },
      { Gender = false, Time = false, MSG = "Добре дошли, как мога да ви помогна?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Благодаря, че се отбихте, прекрасен ден!" },
      { Gender = false, Time = false, MSG = "Моля ви да ви помогна днес, до следващия път!" },
      { Gender = false, Time = false, MSG = "Ако има нещо, с което все още мога да ви помогна, просто ме уведомете!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0, MSG = "Няма избран знак!" },
  },

  ["Clothing"] = {
    ["Name"]           = { Gender = false, Time = false, MSG = "Магазин за дрехи" },
    ["NPCName"]        = { Gender = false, Time = false, MSG = "Шивач" },
    ["NPCBusy"]        = { Gender = false, Time = 3.5,   MSG = "В момента съм зает с друг клиент, изчакайте за момент. Ще бъда при вас възможно най - скоро!" },
    ["NeedToGo"]       = { Gender = false, Time = 3.5,   MSG = "Имам още работа и повече клиенти, за които трябва да се грижа, уведомете ме, когато имате нужда от още помощ" },
    ["DressingRoom"]   = { Gender = false, Time = false, MSG = "Съблекалня" },
    ["Confirmation"]   = { Gender = false, Time = false, MSG = "Потвърждение" },
    ["ConfirmSwitch"]  = { Gender = false, Time = 3.5,   MSG = "Искате ли да смените облеклото?" },
    ["Pay"]            = { Gender = false, Time = false, MSG = "Плащане" },
    ["OpenMenu"]       = { Gender = false, Time = false, MSG = "Отворете менюто" },
    ["Outfits"]        = { Gender = false, Time = false, MSG = "Облекло" },

    ["EnterStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Добре дошли, надявам се да влезете в моя магазин с чисти обувки!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Yeee момче, добре дошли в моя магазин, сър, радвам се да ви видя!" },
      { Gender = 'Male',   Time = 3.5, MSG = "О, вижте това, здравейте. Как е денят ви днес, сър?" },
      { Gender = 'Female', Time = 3.5, MSG = "Добре дошли, надявам се да влезете в моя магазин с чисти обувки!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee момче, добре дошло в моя магазин!. О, извинете ме, госпожо, прекалявах." },
      { Gender = 'Female', Time = 3.5, MSG = "О, вижте това, здравейте. Как е денят ви днес, милейди?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Благодаря за посещението! Безопасни пътувания, приятелю!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Пожелавам ви добър ден, нека се насладите на деня си сър!" },
      { Gender = 'Male',   Time = 3.5, MSG = "Приятен ден, сър, благодаря за посещението." },
      { Gender = 'Male',   Time = 3.5, MSG = "Приятно пътуване, приятелю, благодаря за посещението" },
      { Gender = 'Female', Time = 3.5, MSG = "Благодарим ви за посещението! Безопасно пътуване, милейди!" },
      { Gender = 'Female', Time = 3.5, MSG = "Желая ви добър ден, нека се насладите на деня си, госпожо!" },
      { Gender = 'Female', Time = 3.5, MSG = "Приятен ден, госпожо, благодаря за посещението." },
      { Gender = 'Female', Time = 3.5, MSG = "Приятни пътувания, госпожо, благодаря за посещението" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3.0, MSG = "Как мога да ви помогна, господине?" },
      { Gender = 'Female', Time = 3.0, MSG = "Как мога да ви помогна, госпожо?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Разбира се, че ще мога да ви помогна, добри сър. Моля, отидете до гишето и ще бъда с вас възможно най-скоро." },
      { Gender = 'Male',   Time = 3.5, MSG = "Ааа, да, облекло. Сър, попаднахте на правилното място, моля, последвайте ме." },
      { Gender = 'Female', Time = 3.5, MSG = "Доколкото желаете, милейди, ще ви помогна с голямо удоволствие!" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Ааа, да, облекло. Госпожо, попаднахте на правилното място, моля, последвайте ме." },
    },

    ["Reactions"] = {
      { Gender = 'Male',   Time = 5.0, MSG = "Това ви пасва добре, сър" },
      { Gender = 'Male',   Time = 5.0, MSG = "О, виж това, като те видя такъв, ме кара да ревнувам." },
      { Gender = 'Male',   Time = 5.0, MSG = "О, момче, виж това, прекрасно е." },
      { Gender = 'Male',   Time = 5.0, MSG = "Това е най-доброто, което имаме в града, не можете да намерите по-добро никъде другаде!" },
      { Gender = 'Male',   Time = 5.0, MSG = "Толкова красива, толкова специална и аз съм този, който може да го направи за вас, ако искате по кауза." },
      { Gender = 'Male',   Time = 5.0, MSG = "Това ти стои чудесно"},
      { Gender = 'Male',   Time = 5.0, MSG = "Боже мой, тъй като е направено специално за вас!" },
      { Gender = 'Female', Time = 5.0, MSG = "Това ви пасва добре, сър" },
      { Gender = 'Female', Time = 5.0, MSG = "О, виж това, като те видя такъв, ме кара да ревнувам." },
      { Gender = 'Female', Time = 5.0, MSG = "О, момче, виж това, страхотно е." },
      { Gender = 'Female', Time = 5.0, MSG = "Това е най-доброто, което имаме в града, не можете да намерите по-добро никъде другаде!" },
      { Gender = 'Female', Time = 5.0, MSG = "Толкова красиво, толкова специално и аз съм този, който може да го направи за вас, ако искате по кауза." },
      { Gender = 'Female', Time = 5.0, MSG = "Страхотно ти стои"},
      { Gender = 'Female', Time = 5.0, MSG = "Боже мой, тъй като е направено специално за вас!" },
    }
  },

  ["Skins"] = {
    ['Male']      = { Gender = false, Time = false, MSG = "Male" },
    ['Female']    = { Gender = false, Time = false, MSG = "Female" },
    ['Select']    = { Gender = false, Time = false, MSG = "Select" },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Изберете Gender" },
    ["ErrAge"]    = { Gender = false, Time = 3.0, MSG = "Не сте задали възрастта на героите си!" },
    ["ErrName"]   = { Gender = false, Time = 3.0, MSG = "Не сте задали името на героите си!" },
    ["ErrNatio"]  = { Gender = false, Time = 3.0, MSG = "Не сте задали националността на героите си!" },
    ["ErrTorso"]  = { Gender = false, Time = 3.0, MSG = "Не сте задали типа на торса на героите си!" },
    ["ErrLegs"]   = { Gender = false, Time = 3.0, MSG = "Не сте задали типа на краката на вашите герои!" },
    ["ErrHead"]   = { Gender = false, Time = 3.0, MSG = "Не сте задали типа глава на вашите герои!" },
    ["ErrEyes"]   = { Gender = false, Time = 3.0, MSG = "Не сте задали типа очи на героите си!" },
    ["ErrHair"]   = { Gender = false, Time = 3.0, MSG = "Не сте задали типа коса на героите си!" },
  },

  ["Spawner"] = {
    ['Cutscene']    = { Gender = false, Time = false, MSG = "Cutscene" },
    ["DriverName"]  = { Gender = false, Time = false, MSG = "StageCoach Driver" },
    ["MusicOn"]     = { Gender = false, Time = 5.0, MSG = "Вие изключихте музиката" },
    ["MusicOff"]    = { Gender = false, Time = 5.0, MSG = "Вие включихте музиката" },
    ["ErrStepOut"]  = { Gender = false, Time = 5.0, MSG = "Не можете да излезете в изрязаната сцена." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Stop | Start Music" },
    ["StepOut"]     = { Gender = false, Time = false, MSG = "Излезте" },
    ["Cinema"]      = { Gender = false, Time = false, MSG = "Кино" },

    ["Welcome"] = {
      { Gender = false, Time = 5.0, MSG = "Добре дошли в нашия окръг, нека престоят ви бъде приятен!" },
      { Gender = false, Time = 5.0, MSG = "Казвам, че си умен, защото избираш този окръг! Ха - ха, добре дошъл приятелю!" },
    },

    ["Advice"] = {
      { Gender = false, Time = 5.0, MSG = "Ще ви заведа при добър шивач, който може да ви помогне с някои нови дрехи" },
      { Gender = false, Time = 5.0, MSG = "След толкова дълго пътуване добър шивач е това, от което се нуждаете. Позволете ми да окажа честта и да ви доведа до такъв." },
    },

    ["Tailor"] = {
      { Gender = false, Time = 5.0, MSG = "Наблизо има шивач, бих помислил да си купя нови дрехи." },
      { Gender = false, Time = 5.0, MSG = "Ще намерите шивач зад ъгъла, бих помислил да си купя нови дрехи." },
    },

    ["Goodbye"] = {
      { Gender = false, Time = 5.0, MSG = "Сбогом, приятелю, беше ми приятно да се запознаем! Приятен престой!" },
      { Gender = false, Time = 5.0, MSG = "Беше чудесно да се запознаем, желая ви приятен престой!" },
      { Gender = false, Time = 5.0, MSG = "Това е $12, 25... хах просто се шегувам, приятен престой, приятелю!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0, MSG = "Това е хубав окръг, в който сте пристигнали, има много неща за правене в града, може да ви хареса." },
      { Gender = false, Time = 7.0, MSG = "Не е ли смешно как Timeто понякога може да бъде, може да се променя като лудо! Вие наистина не искате да бъдете хванати в една от тези бури, ще ви кажа ." },
      { Gender = false, Time = 5.0, MSG = "Изглежда, че сте пътували от доста Time. Надявам се, че пътуването ви е било безпроблемно." },
      { Gender = false, Time = 5.0, MSG = "Не съм ли само аз, или тук много мирише." },
      { Gender = false, Time = 5.0, MSG = "Вижте това Time, не е ли красиво" },
      { Gender = false, Time = 5.0, MSG = "Почти сме на нашата дестинация. Надявам се, че ви харесва пътуването досега." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"]     = { Gender = false, Time = false, MSG = "Отворете менюто" },
    ["Inventory"]    = { Gender = false, Time = false, MSG = "Инвентар" },
    ["AdminMenu"]    = { Gender = false, Time = false, MSG = "Административно меню"},
    ["Zoning"]       = { Gender = false, Time = false, MSG = "Зониране" },
    ["AutoMove"]     = { Gender = false, Time = false, MSG = "Стартиране на автоматично преместване" },
    ["StopMove"]     = { Gender = false, Time = false, MSG = "Спиране на автоматичното преместване" },
    ["Unequipt"]     = { Gender = false, Time = false, MSG = "Оръжие без оборудване"},
    ["Error"]        = { Gender = false, Time = false, MSG = "Грешка" },
    ["System"]       = { Gender = false, Time = false, MSG = "Система" },
    ["Initialize"]   = { Gender = false, Time = 3.0,   MSG = "Менюто за настройка е инициализирано!" },
    ["Initialize2"]  = { Gender = false, Time = 5.0,   MSG = "Вече можете да отворите менюто с настройки с левия клавиш alt!" },
    ["NoNextPage"]   = { Gender = false, Time = 3.0,   MSG = "Няма следваща страница в момента" },
    ["NoBackPage"]   = { Gender = false, Time = 3.0,   MSG = "Няма задна страница в момента" },
    ["CoordsSave"]   = { Gender = false, Time = 5.0,   MSG = "Вие запазихте вашите координати!" },
    ["ErrSkin"]      = { Gender = false, Time = 5.0,   MSG = "Нямате кожа за зареждане! Моля, първо създайте кожа!" },
    ["LogOut"]       = { Gender = false, Time = 5.0,   MSG = "Излизане"},
    ["LogOutCoords"] = { Gender = false, Time = 5.0,   MSG = "Запазване на позицията на вашия герой" },
    ["MusicOn"]      = { Gender = false, Time = 5.0,   MSG = "Цялата музика в играта е включена!" },
    ["MusicOff"]     = { Gender = false, Time = 5.0,   MSG = "Цялата музика в играта е изключена!" },
    ["MusicUnable"]  = { Gender = false, Time = 5.0,   MSG = "Вие сте изключили музиката в настройките, не можете да възпроизвеждате музика!" },
    ["VolSet"]       = { Gender = false, Time = 5.0,   MSG = "Сила на звука, зададена на %" },
    ["VolSet2"]      = { Gender = false, Time = 5.0,   MSG = "Сила на звука ще влезе в сила при следващата песен!" },
    ["CharDel"]      = { Gender = false, Time = 10.0,  MSG = "Изтриването на символ е в ход" },
    ["DelDone"]      = { Gender = false, Time = 5.0,   MSG = "Цялата информация за символи е изчистена, връщаме ви обратно в менюто за избор на символи" },
  },

  ["FastTravel"] = {
    ["ZoneName"] = { Gender = false, Time = false, MSG = "Бързо пътуване" },
    ["NPCName"]  = { Gender = false, Time = false, MSG = "Докус туристическа агенция" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0, MSG = "Приятно пътуване и благодаря за пътуването Dokus Industries" },
      { Gender = false, Time = 5.0, MSG = "Надяваме се, че ще се насладите на пътуването си, безопасни пътувания" },
      { Gender = false, Time = 5.0, MSG = "Радваме се, че избирате Dokus Industries за пътуване!" },
      { Gender = false, Time = 5.0, MSG = "Можете да влезете в лодката на дока, безопасно пътуване" },
    }

  },

  ["GunStore"] = {
    ["NPCName"]       = { Gender = false, Time = false, MSG = "Търговец на оръжия" },
    ["BlipName"]      = { Gender = false, Time = false, MSG = "Магазин за оръжия" },
    ["NoMoney"]       = { Gender = false, Time = 3.0,   MSG = "Нямате достатъчно пари!" },
    ["BoughtAmmo1"]   = { Gender = false, Time = 3.0,   MSG = "Купихте" },
    ["BoughtAmmo2"]   = { Gender = false, Time = 3.0,   MSG = " Амуниции!" },
    ["OpenMenu"]      = { Gender = false, Time = false, MSG = "Отворете менюто" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0,   MSG = "Този артикул в момента не работи според очакванията и не се продава в момента!" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Добре дошли, надявам се да влезете в моя магазин с чисти обувки!" },
      { Gender = 'Male', Time = 3.5, MSG = "Yeee момче, добре дошли в моя магазин сър!" },
      { Gender = 'Male', Time = 3.5, MSG = "О, вижте това, здравейте. Как е денят ви днес, сър?" },
      { Gender = 'Female', Time = 3.5, MSG = "Добре дошли, надявам се да влезете в моя магазин с чисти обувки!" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee момче, добре дошло в моя магазин!. О, извинете ме, госпожо, прекалявах." },
      { Gender = 'Female', Time = 3.5, MSG = "О, вижте това, здравейте. Как е денят ви днес, милейди?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Благодаря за посещението! Безопасни пътувания, приятелю!" },
      { Gender = 'Male', Time = 3.5, MSG = "Пожелавам ви добър ден, нека се насладите на деня си сър!" },
      { Gender = 'Male', Time = 3.5, MSG = "Приятен ден, сър, благодаря за посещението." },
      { Gender = 'Male', Time = 3.5, MSG = "Приятно пътуване, приятелю, благодаря за посещението" },
      { Gender = 'Female', Time = 3.5, MSG = "Благодарим ви за посещението! Безопасно пътуване, милейди!" },
      { Gender = 'Female', Time = 3.5, MSG = "Желая ви добър ден, нека се насладите на деня си, госпожо!" },
      { Gender = 'Female', Time = 3.5, MSG = "Приятен ден, госпожо, благодаря за посещението." },
      { Gender = 'Female', Time = 3.5, MSG = "Приятни пътувания, госпожо, благодаря за посещението" },
    },

    ["NearNPC"] = {
      { Gender = 'Male',   Time = 3.5, MSG = "Как мога да ви помогна, господине?" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Как мога да ви помогна, госпожо?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"]      = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"]      = { Gender = false, Time = false, MSG = "Кутия за плячка"},
    ["OpenBox"]      = { Gender = false, Time = false, MSG = "Натиснете ~color_green~E~q~ за отваряне" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "Нямате избран предмет за пускане на земята! Първо изберете елемент!" },
    ["NotEnough"]    = { Gender = false, Time = false, MSG = "Нямате достатъчно от този артикул в инвентара си!" },
    ["NoAmount"]     = { Gender = false, Time = false, MSG = "Нямате зададена сума в параметъра сума. Не можете да пуснете вашия артикул!" },
    ["ToClose"]      = { Gender = false, Time = 5.0,   MSG = "Трябва да се приближите до друг DropBox. Приближете се или се отдалечете!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Огладнявам, имам нужда от нещо за ядене" },
      { Gender = false, Time = 5.0, MSG = "Много съм гладен, наистина имам нужда от нещо за ядене" },
      { Gender = false, Time = 5.0, MSG = "Чувствам се замаян, имам нужда от нещо за ядене" },
      { Gender = false, Time = 5.0, MSG = "О, стомахът ме боли, още не съм ял" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Много съм жаден, имам нужда от нещо за пиене" },
      { Gender = false, Time = 5.0, MSG = "Устата ми е суха, имам нужда от вода" },
      { Gender = false, Time = 5.0, MSG = "Uhg, ако не пия скоро, може да припадна" },
      { Gender = false, Time = 5.0, MSG = "Никога в живота си не съм изпитвал такава жажда" },
    }
  },

  ["Scavenger"] = {
    ["Name"]        = { Gender = false, Time = false, MSG = "Чистач"},
    ["Rewards"]     = { Gender = false, Time = 3.0,   MSG = "Вие сте събрали реколтата" },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0,   MSG = "Този ​​храст вече е събран" },
    ["PromptHarv"]  = { Gender = false, Time = false, MSG = "Жътва"},
  },

  ["ScratchCards"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Банков служител"},
    ["NoTickets"] = { Gender = false, Time = 5.0, MSG = "Нямате лотарийни билети у вас!" },
    ["WonCard"] = { Gender = false, Time = 5.0, MSG = "Спечелихте $" },
    ["WonTotal"] = { Gender = false, Time = 5.0, MSG = "Спечелихте общо $" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Жътва"},
    ["BetterLuck"] = { Gender = false, Time = false, MSG = "Повече късмет следващия път" },
    ["NoWin"] = { Gender = false, Time = 5.0, MSG = "За съжаление не спечелихте нищо този път" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"]    = { Gender = false, Time = false, MSG = "Танц"},
    ["MenuStop"]     = { Gender = false, Time = false, MSG = "Спри"},
    ["MenuNext"]     = { Gender = false, Time = false, MSG = "Напред"},
    ["MenuBack"]     = { Gender = false, Time = false, MSG = "Назад" },
    ["ShowFear"]     = { Gender = false, Time = false, MSG = "Покажи / Изрази страх" },
    ["StopTrumpet"]  = { Gender = false, Time = 5.0,   MSG = "Можете да спрете да играете, като натиснете Backspace - Spacebar или X" },
    ["TrumpWarning"] = { Gender = false, Time = 5.0,   MSG = "Ако тромпетът остане заседнал в ръката ви, презаредете кожата си чрез менюто, за да го поправите" },
    ["ScenarioStop"] = { Gender = false, Time = 5.0,   MSG = "Можете да спрете сценария, като напишете [ /scenario stop] в чата" },
    ["SetStatus"]    = { Gender = false, Time = false, MSG = "Задайте статуса си!" },
  },

  ["Stables"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Стабилен" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Стабилен придружител"},
    ["HorseNamed"] = { Gender = false, Time = 3.5, MSG = "Вие сте кръстили коня си: " },
    ["HorseBought"] = { Gender = false, Time = 5.0, MSG = "Вашият кон вече е готов! За мен беше удоволствие да правя бизнес с вас." },
    ["HorseStored"] = { Gender = false, Time = 5.0, MSG = "Вашият кон е съхранен, ние ще се погрижим много за него!" },
    ["NameHorse"] = { Gender = false, Time = false, MSG = "Назовете коня си" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Страхувам се, че нямате достатъчно пари, за да купите този кон!" },
    ["HorseReady"] = { Gender = false, Time = 5.0, MSG = "Вашият кон е готов в конюшнята си!" },
    ["FetchHorse"] = { Gender = false, Time = 5.0, MSG = "Разбира се, един момент ми позволи да взема твоя кон!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0, MSG = "Ето ви, сър, толкова здрав, колкото винаги е бил!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Отворете менюто" },
    ["StoreHorse"] = { Gender = false, Time = false, MSG = "Съхранявай кон"},
    ["NoHorseName"] = { Gender = false, Time = 5.0, MSG = "Съжаляваме, но трябва да дадете име на коня си" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Добре дошли, надявам се да влезете в моя магазин с чисти обувки!" },
      { Gender = 'Male', Time = 5.0, MSG = "Yeee момче, добре дошли в моя магазин, имам ли коне за вас, сър!" },
      { Gender = 'Male', Time = 5.0, MSG = "О, вижте това, здравейте. Как е денят ви днес, сър?" },
      { Gender = 'Female', Time = 5.0, MSG = "Добре дошли, надявам се да влезете в моя магазин с чисти обувки!" },
      { Gender = 'Female', Time = 5.0, MSG = "Yeee момче, добре дошло в моя магазин!. О, извинете ме, госпожо, прекалявах." },
      { Gender = 'Female', Time = 5.0, MSG = "О, вижте това, здравейте. Как е денят ви днес, милейди?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Благодаря за посещението! Безопасни пътувания, приятелю!" },
      { Gender = 'Male', Time = 5.0, MSG = "Желая ви хубав ден, желая ви да се насладите на деня си сър!" },
      { Gender = 'Male', Time = 5.0, MSG = "Приятен ден, сър, благодаря за посещението." },
      { Gender = 'Male', Time = 5.0, MSG = "Приятно пътуване, приятелю, благодаря за посещението" },
      { Gender = 'Female', Time = 5.0, MSG = "Благодарим ви за посещението! Безопасни пътувания, милейди!" },
      { Gender = 'Female', Time = 5.0, MSG = "Желая ви хубав ден, нека се насладите на деня си, госпожо!" },
      { Gender = 'Female', Time = 5.0, MSG = "Приятен ден, госпожо, благодаря за посещението." },
      { Gender = 'Female', Time = 5.0, MSG = "Добри пътувания, госпожо, благодаря за посещението" },
    }
  },

  ["Stores"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Общ магазин" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Служител в обикновен магазин"},
    ["MenuBuy"] = { Gender = false, Time = false, MSG = "Общ магазин (Купете)" },
    ["MenuSell"] = { Gender = false, Time = false, MSG = "Инвентар (Продажба)" },
    ["ButtonBuy"] = { Gender = false, Time = false, MSG = "Купете" },
    ["ButtonSell"] = { Gender = false, Time = false, MSG = "Продавам"},
    ["ButtonMan"] = { Gender = false, Time = false, MSG = "Управление" },
    ["NotInInvent"] = { Gender = false, Time = 3.5, MSG = "Нямате толкова много в инвентара си!" },
    ["Bought"] = { Gender = false, Time = 3.5, MSG = "Купихте" },
    ["Sold"] = { Gender = false, Time = 3.5, MSG = "Продадохте" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Нямате достатъчно пари, за да купите това / това количество артикули!" },
    ["NoItem"] = { Gender = false, Time = false, MSG = "Все още не сте избрали елемент!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Добре дошли, надявам се да влезете в моя магазин с чисти обувки!" },
      { Gender = false, Time = 5.0, MSG = "Хей клиент, това е F**** страхотно!" },
      { Gender = false, Time = 5.0, MSG = "О, вижте това, здравейте." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Благодарим ви за посещението! Безопасни пътувания!" },
      { Gender = false, Time = 5.0, MSG = "Желая ви добър ден, да ви е приятно!" },
      { Gender = false, Time = 5.0, MSG = "Приятен ден, благодаря за посещението." },
      { Gender = false, Time = 5.0, MSG = "Приятни пътувания, приятелю, благодаря за посещението" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "Как мога да ви помогна?" },
      { Gender = false, Time = 2.5, MSG = "А, искаш ли да купиш нещо, а?" },
      { Gender = false, Time = 2.5, MSG = "Нещо специално ли е, което търсите?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "Как мога да ви помогна?" },
      { Gender = false, Time = 2.5, MSG = "Ще извадя няколко етикета, имам само двадесет долара в джоба си!" },
      { Gender = false, Time = 2.5, MSG = "А, искате да продадете нещо, а?" },
      { Gender = false, Time = 2.5, MSG = "Взимам всичко от риба до хляб, от хляб до кафе." },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "За мен беше удоволствие да правя бизнес с вас!" },
      { Gender = false, Time = 5.0, MSG = "Радвам се, че можех да бъда от ваша страна!" },
      { Gender = false, Time = 5.0, MSG = "Радвам се, че успях да ви помогна" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Взаимодействащо" }
  },

  ["WorldEdits"] = {
    ["GuarmaFishBar"] = { Gender = false, Time = false, MSG = "Guarma Fishers Bar" },
    ["GuarmaHideout"] = { Gender = false, Time = false, MSG = "Скривалището на Гуарма"},
    ["GuarmaArena"] = { Gender = false, Time = false, MSG = "Gladiator Arena" },
    ["MexicoBridge1"] = { Gender = false, Time = false, MSG = "The Mexico Bridge" },
    ["HangingBridge"] = { Gender = false, Time = false, MSG = "Висящият мост" },
    ["NakotaNatCamp"]  = { Gender = false, Time = false, MSG = "Накота Native Camp" },
    ["ApacheNatCamp"] = { Gender = false, Time = false, MSG = "Родният лагер на Apache"},
    ["LakotaNatCamp"] = { Gender = false, Time = false, MSG = "Лакота роден лагер" },
    ["ArthurGraveSt"] = { Gender = false, Time = false, MSG = "Гробният камък на Артър" },
  },























}
