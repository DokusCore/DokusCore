Lang['fr'] = {

  ["System"] = {
    ["Yes"] = { Gender = false, Time = false, MSG = "Oui" },
    ["No"] = { Gender = false, Time = false, MSG = "Non" },
    ["Error"] = { Gender = false, Time = false, MSG = "ERREUR" },
    ["System"] = { Gender = false, Time = false, MSG = "Système" },
    ["Success"] = { Gender = false, Time = false, MSG = "Succès" },
    ["BLCheck"] = { Gender = false, Time = false, MSG = "Vérification de la liste noire" },
    ["WLCheck"] = { Gender = false, Time = false, MSG = "Vérification de la liste blanche" },
    ["SteamCheck"] = { Gender = false, Time = false, MSG = "Vérification de l'identification Steam" },
    ["SteamConFail"] = { Gender = false, Time = false, MSG = "Nous ne parvenons pas à nous connecter à l'API Steam, assurez-vous que Steam était ouvert avant d'ouvrir RedM !" },
    ["UserBanned"] = { Gender = false, Time = false, MSG = "Vous avez été banni de ce serveur." },
    ["InfoDiscord"] = { Gender = false, Time = false, MSG = "Pour plus d'informations, visitez notre Discord ".._DiscordInvite.."" },
    ["NoBanReason"] = { Gender = false, Time = false, MSG = "Aucune raison fournie" },
    ["WLPending"] = { Gender = false, Time = false, MSG = "Votre demande de liste blanche est toujours en attente..." },
    ["WLDenied"] = { Gender = false, Time = false, MSG = "Votre demande de liste blanche a été refusée avec raison :" },
    ["WLMade1"] = { Gender = false, Time = false, MSG = "Pour accéder à ce serveur, vous devez être sur liste blanche." },
    ["WLMade2"] = { Gender = false, Time = false, MSG = "La demande de liste blanche a été automatiquement effectuée et est maintenant en attente." },
    ["NoCharFound"] = { Gender = false, Time = false, MSG = "Impossible d'effectuer cette action, aucun personnage trouvé !" },
    ["Language"] = { Gender = false, Time = false, MSG = "Langue" },
    ["LangNotEnter"] = { Gender = false, Time = false, MSG = "Le paramètre de langue était vide !" },
    ["LanguageSetTo"] = { Gender = false, Time = false, MSG = "La langue du client est définie sur " },
    ["LangNoSupport"] = { Gender = false, Time = 5.0, MSG = "Cette langue n'est pas prise en charge !" },
    ["WelcomeTo"] = { Gender = false, Time = false, MSG = "Bienvenue à :" },
    ["InProgress"] = { Gender = false, Time = false, MSG = "En cours" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Ouvrir le menu" },
    ["InDevelopment"] = { Gender = false, Time = 5.0, MSG = "Cette fonctionnalité est en développement !" },

    -- Villes
    ["Guarma"] = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"] = { Gender = false, Time = false, MSG = "Sisika Jail" },
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Banque" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Banquier Travailleur" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "Je suis actuellement occupé avec un autre citoyen, un instant s'il vous plait !" },
    ["NoAccount"] = { Gender = false, Time = 3.5, MSG = "Je suis désolé, mais nous n'avons aucun compte bancaire enregistré dans nos journaux. Vous devez d'abord ouvrir un compte bancaire avant de pouvoir en utiliser un !" },
    ["UseBankKey"] = { Gender = false, Temps = 3, 5, MSG = "Utiliser la banque" },
    ["AlAccount"] = { Gender = false, Time = 3.5, MSG = "Vous avez déjà un compte bancaire dans cette banque !" },
    ["AcCreation"] = { Gender = false, Time = 3.5, MSG = "Vous avez payé les frais de votre compte, compte en cours de création !" },
    ["AcCreated"] = { Gender = false, Time = 3.5, MSG = "Votre compte bancaire a été créé ! Vous pouvez maintenant ouvrir votre compte bancaire." },
    ["NoDepMoney"] = { Gender = false, Time = 3.5, MSG = "Vous n'avez pas assez d'argent pour effectuer ce dépôt !" },
    ["NoDepGold"] = { Gender = false, Time = 3.5, MSG = "Vous n'avez pas assez d'or pour effectuer ce dépôt !" },
    ["NoWitMoney"] = { Gender = false, Time = 3.5, MSG = "Vous n'avez pas assez d'argent pour effectuer ce retrait !" },
    ["NoWitGold"] = { Gender = false, Time = 3.5, MSG = "Vous n'avez pas assez d'or pour faire ce retrait !" },
    ["DepMinMoney"] = { Gender = false, Time = 3.5, MSG = "Le montant du dépôt doit être supérieur à 0,01 cent !" },
    ["DepMinGold"] = { Gender = false, Time = 3.5, MSG = "Le montant du dépôt doit être supérieur à 0,01 pièce d'or !" },
    ["WitMinMoney"] = { Gender = false, Time = 3.5, MSG = "Le montant du dépôt doit être supérieur à 0,01 cent !" },
    ["WitMinGold"] = { Gender = false, Time = 3.5, MSG = "Le montant du dépôt doit être supérieur à 0,01 pièce d'or !" },
    ["ToFast"] = { Gender = false, Time = 3.5, MSG = "Je suis désolé, mais je ne peux effectuer qu'une seule transaction à la fois. Un instant s'il vous plaît !" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Vous avez effectué un dépôt de $" },
    ["DepDoneGold"] = { Gender = false, Time = 3.5, MSG = "Vous avez effectué un dépôt de " },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Vous avez effectué un retrait de $" },
    ["WitDoneGold"] = { Gender = false, Time = 3.5, MSG = "Vous avez effectué un retrait de " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Bienvenue dans notre banque, comment puis-je vous être utile ?" },
      { Gender = false, Time = false, MSG = "Bienvenue, comment puis-je vous aider ?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Merci d'être passé, passez une merveilleuse journée !" },
      { Gender = false, Time = false, MSG = "J'étais mon plaisir de vous aider aujourd'hui, jusqu'à la prochaine fois !" },
      { Gender = false, Time = false, MSG = "Si je peux encore vous aider, faites-le moi savoir !" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0, MSG = "Aucun personnage sélectionné !" },
  },

  ["Clothing"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Magasin de vêtements" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Tailor" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "Je suis actuellement occupé avec un autre client, attendez un instant. Je serai avec vous dès que possible !" },
    ["NeedToGo"] = { Gender = false, Time = 3.5, MSG = "J'ai plus de choses à faire et plus de clients à gérer, faites-moi savoir quand vous avez besoin d'aide supplémentaire" },
    ["DressingRoom"] = { Gender = false, Time = false, MSG = "Vestiaire" },
    ["Confirmation"] = { Gender = false, Time = false, MSG = "Confirmation" },
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5, MSG = "Voulez-vous changer de vêtements ?" },
    ["Pay"] = { Gender = false, Time = false, MSG = "Payer" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Ouvrir le menu" },
    ["Outfits"] = { Gender = false, Time = false, MSG = "Tenues" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Bienvenue, j'espère que vous entrerez dans mon magasin avec des chaussures propres !" },
      { Gender = 'Male', Time = 3.5, MSG = "Yeee boy, bienvenue dans mon magasin monsieur, je suis content de vous voir !" },
      { Gender = 'Male', Time = 3.5, MSG = "Oh regardez ça, bonjour. Comment se passe votre journée aujourd'hui monsieur ?" },
      { Gender = 'Female', Time = 3.5, MSG = "Bienvenue, j'espère que vous entrerez dans mon magasin avec des chaussures propres !" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee boy, bienvenue dans mon magasin !. Oh, excusez-moi ma dame, j'existais plus." },
      { Gender = 'Female', Time = 3.5, MSG = "Oh regardez ça, bonjour. Comment est votre journée aujourd'hui ma dame ?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Merci pour votre visite ! Bon voyage mon ami !" },
      { Gender = 'Male', Time = 3.5, MSG = "Je vous souhaite une bonne journée, puissiez-vous profiter de votre journée monsieur !" },
      { Gender = 'Male', Time = 3.5, MSG = "Bonne journée monsieur, merci pour votre visite." },
      { Gender = 'Male', Time = 3.5, MSG = "Bon voyage mon ami, merci pour ta visite" },
      { Gender = 'Female', Time = 3.5, MSG = "Merci pour votre visite ! Bon voyage ma dame !" },
      { Gender = 'Female', Time = 3.5, MSG = "Je vous souhaite une bonne journée, que vous profitiez de votre journée Madame !" },
      { Gender = 'Female', Time = 3.5, MSG = "Bonne journée Madame, merci de votre visite." },
      { Gender = 'Female', Time = 3.5, MSG = "Bon voyage ma dame, merci de votre visite" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.0, MSG = "Comment puis-je vous aider mon bon monsieur ?" },
      { Gender = 'Female', Time = 3.0, MSG = "Comment puis-je vous aider ma dame ?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Parce que je pourrai vous aider bon monsieur. Veuillez vous diriger vers le côté du comptoir et je serai avec vous dès que possible." },
      { Gender = 'Male', Time = 3.5, MSG = "Ah oui, des vêtements. Monsieur, vous êtes au bon endroit, veuillez me suivre." },
      { Gender = 'Female', Time = 3.5, MSG = "Comme il vous plaira à madame, je vous aiderai avec beaucoup de plaisir !" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Ah oui, des vêtements. Madame, vous êtes au bon endroit, veuillez me suivre." },
    },

    ["Reactions"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Ça vous va bien monsieur" },
      { Gender = 'Male', Time = 5.0, MSG = "Oh regarde ça, te voir comme ça me rend jaloux." },
      { Gender = 'Male', Time = 5.0, MSG = "Oh mon Dieu, regarde ça, c'est merveilleux." },
      { Gender = 'Male', Time = 5.0, MSG = "C'est le meilleur que nous ayons en ville, on ne trouve pas mieux ailleurs !" },
      { Gender = 'Male', Time = 5.0, MSG = "Si beau, si spécial, et je suis celui qui peut le faire pour vous, si vous aimez la cause." },
      { Gender = 'Male', Time = 5.0, MSG = "Ça te va à merveille" },
      { Gender = 'Male', Time = 5.0, MSG = "Mon Dieu, car il a été fait spécialement pour vous !" },
      { Gender = 'Female', Time = 5.0, MSG = "Ça vous va bien monsieur" },
      { Gender = 'Female', Time = 5.0, MSG = "Oh regarde ça, te voir comme ça me rend jaloux." },
      { Gender = 'Female', Time = 5.0, MSG = "Oh mon Dieu, regarde ça, c'est merveilleux." },
      { Gender = 'Female', Time = 5.0, MSG = "C'est le meilleur que nous ayons en ville, on ne trouve pas mieux ailleurs !" },
      { Gender = 'Female', Time = 5.0, MSG = "Si belle, si spéciale, et c'est moi qui suis capable de le faire pour vous, si vous aimez la cause." },
      { Gender = 'Female', Time = 5.0, MSG = "Ça te va à merveille" },
      { Gender = 'Female', Time = 5.0, MSG = "Mon Dieu, car il a été fait spécialement pour vous !" },
    }
  },

  ["Skins"] = {
    ['Male'] = { Gender = false, Time = false, MSG = "Homme" },
    ['Female'] = { Gender = false, Time = false, MSG = "Femme" },
    ['Select'] = { Gender = false, Time = false, MSG = "Select" },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Choisir le Gender" },
    ["ErrAge"] = { Gender = false, Time = 3.0, MSG = "Vous n'avez pas défini l'âge de vos personnages !" },
    ["ErrName"] = { Gender = false, Time = 3.0, MSG = "Vous n'avez pas défini le nom de votre personnage !" },
    ["ErrNatio"] = { Gender = false, Time = 3.0, MSG = "Vous n'avez pas défini la nationalité de vos personnages !" },
    ["ErrTorso"] = { Gender = false, Time = 3.0, MSG = "Vous n'avez pas défini le type de torse de vos personnages !" },
    ["ErrLegs"] = { Gender = false, Time = 3.0, MSG = "Vous n'avez pas défini le type de jambes de vos personnages !" },
    ["ErrHead"] = { Gender = false, Time = 3.0, MSG = "Vous n'avez pas défini le type de tête de vos personnages !" },
    ["ErrEyes"] = { Gender = false, Time = 3.0, MSG = "Vous n'avez pas défini le type d'yeux de vos personnages !" },
    ["ErrHair"] = { Gender = false, Time = 3.0, MSG = "Vous n'avez pas défini le type de cheveux de vos personnages !" },
  },

  ["Spawner"] = {
    ['Cutscene'] = { Gender = false, Time = false, MSG = "Cutscene" },
    ["DriverName"] = { Gender = false, Time = false, MSG = "Chauffeur StageCoach" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Vous avez éteint la musique" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Vous avez allumé la musique" },
    ["ErrStepOut"] = { Gender = false, Time = 5.0, MSG = "Vous ne pouvez pas sortir de la cinématique." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Arrêter | Démarrer la musique" },
    ["StepOut"] = { Gender = false, Time = false, MSG = "Sortir" },
    ["Cinema"] = { Gender = false, Time = false, MSG = "Cinéma" },

    ["Welcome"] = {
      { Gender = false, Time = 5.0, MSG = "Bienvenue dans notre comté, puissiez-vous profiter de votre séjour !" },
      { Gender = false, Time = 5.0, MSG = "Je peux dire que tu es intelligent, parce que tu as choisi ce comté ! Haha, bienvenue mon ami !" },
    },

    ["Advice"] = {
      { Gender = false, Time = 5.0, MSG = "Je vais vous amener chez un bon tailleur qui pourrait vous aider à acheter de nouveaux vêtements" },
      { Gender = false, Time = 5.0, MSG = "Après un si long voyage, un excellent tailleur est ce dont vous avez besoin. Laissez-moi vous faire l'honneur de vous en amener un." },
    },

    ["Tailor"] = {
      { Gender = false, Time = 5.0, MSG = "Il y a un tailleur à proximité, j'envisagerais d'acheter de nouveaux vêtements." },
      { Gender = false, Time = 5.0, MSG = "Vous trouverez un tailleur au coin de la rue, j'envisagerais d'acheter de nouveaux vêtements." },
    },

    ["Goodbye"] = {
      { Gender = false, Time = 5.0, MSG = "Au revoir mon ami, c'était un plaisir de vous rencontrer ! Profitez de votre séjour !" },
      { Gender = false, Time = 5.0, MSG = "C'était merveilleux de vous rencontrer, puissiez-vous profiter de votre séjour !" },
      { Gender = false, Time = 5.0, MSG = "C'est donc 12,25 $... hah je plaisante, profite bien de ton séjour mon ami !" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0, MSG = "C'est un joli comté dans lequel vous êtes arrivé, il y a beaucoup à faire dans la ville, ça pourrait vous plaire." },
      { Gender = false, Time = 7.0, MSG = "N'est-ce pas drôle comme le temps peut être parfois, il peut changer comme un fou ! Vous ne voulez vraiment pas être craché dans l'une de ces tempêtes, je vais vous le dire ." },
      { Gender = false, Time = 5.0, MSG = "Il semble que vous voyagiez depuis un certain temps. J'espère que votre voyage s'est déroulé sans aucun problème." },
      { Gender = false, Time = 5.0, MSG = "Ce n'est pas juste moi, ou ça sent très mauvais ici." },
      { Gender = false, Time = 5.0, MSG = "Regarde ce temps, n'est-il pas beau" },
      { Gender = false, Time = 5.0, MSG = "Nous sommes presque arrivés à destination. J'espère que vous appréciez le trajet jusqu'à présent." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Ouvrir le menu" },
    ["Inventory"] = { Gender = false, Time = false, MSG = "Inventaire" },
    ["AdminMenu"] = { Gender = false, Time = false, MSG = "Menu Admin" },
    ["Zoning"] = { Gender = false, Time = false, MSG = "Zonage" },
    ["AutoMove"] = { Gender = false, Time = false, MSG = "Démarrer le déplacement automatique" },
    ["StopMove"] = { Gender = false, Time = false, MSG = "Arrêter le déplacement automatique" },
    ["Unequipt"] = { Gender = false, Time = false, MSG = "Arme sans équipement" },
    ["Error"] = { Gender = false, Time = false, MSG = "Erreur" },
    ["System"] = { Gender = false, Time = false, MSG = "Système" },
    ["Initialize"] = { Gender = false, Time = 3.0, MSG = "Setting Menu Initialized!" },
    ["Initialize2"] = { Gender = false, Time = 5.0, MSG = "Vous pouvez maintenant ouvrir le menu des paramètres avec la touche alt gauche !" },
    ["NoNextPage"] = { Gender = false, Time = 3.0, MSG = "Pas de page suivante pour le moment" },
    ["NoBackPage"] = { Gender = false, Time = 3.0, MSG = "Pas de page arrière pour le moment" },
    ["CoordsSave"] = { Gender = false, Time = 5.0, MSG = "Vous avez enregistré vos coordonnées !" },
    ["ErrSkin"] = { Gender = false, Time = 5.0, MSG = "Vous n'avez pas de skin à charger ! Veuillez d'abord créer un skin !" },
    ["LogOut"] = { Gender = false, Time = 5.0, MSG = "Déconnexion" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0, MSG = "Sauvegarder la position de votre personnage" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Toutes les musiques du jeu sont activées !" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Toutes les musiques du jeu ont été désactivées !" },
    ["MusicUnable"] = { Gender = false, Time = 5.0, MSG = "Vous avez désactivé la musique dans les paramètres, impossible d'écouter de la musique !" },
    ["VolSet"] = { Gender = false, Time = 5.0, MSG = "Volume réglé sur %" },
    ["VolSet2"] = { Gender = false, Time = 5.0, MSG = "Le volume prendra effet sur la prochaine chanson !" },
    ["CharDel"] = { Gender = false, Time = 10.0, MSG = "Suppression de personnage en cours" },
    ["DelDone"] = { Gender = false, Time = 5.0, MSG = "Toutes les informations sur les personnages sont purgées, nous vous ramenons au menu de sélection des personnages" },
  },

  ["FastTravel"] = {
    ["ZoneName"] = { Gender = false, Time = false, MSG = "Voyage rapide" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Dokus Travel Agency" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0, MSG = "Bon voyage, et merci de voyager Dokus Industries" },
      { Gender = false, Time = 5.0, MSG = "Nous espérons que vous apprécierez votre voyage, voyagez en toute sécurité" },
      { Gender = false, Time = 5.0, MSG = "Nous sommes ravis que vous choisissiez Dokus Industries pour voyager !" },
      { Gender = false, Time = 5.0, MSG = "Vous pouvez entrer dans le bateau à quai, voyagez en toute sécurité" },
    }

  },

  ["GunStore"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Marchand d'armes" },
    ["BlipName"] = { Gender = false, Time = false, MSG = "Magasin d'armes" },
    ["NoMoney"] = { Gender = false, Time = 3.0, MSG = "Vous n'avez pas assez d'argent !" },
    ["BoughtAmmo1"] = { Gender = false, Time = 3.0, MSG = "Vous avez acheté " },
    ["BoughtAmmo2"] = { Gender = false, Time = 3.0, MSG = " Munitions !" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Ouvrir le menu" },
    ["ErrNotWorking"] = { Gender = false, Time = 5.0, MSG = "Cet article ne fonctionne actuellement pas comme prévu et n'est pas vendu pour le moment !" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Bienvenue, j'espère que vous entrerez dans mon magasin avec des chaussures propres !" },
      { Gender = 'Male', Time = 3.5, MSG = "Yeee boy, bienvenue dans mon magasin monsieur !" },
      { Gender = 'Male', Time = 3.5, MSG = "Oh regardez ça, bonjour. Comment se passe votre journée aujourd'hui monsieur ?" },
      { Gender = 'Female', Time = 3.5, MSG = "Bienvenue, j'espère que vous entrerez dans mon magasin avec des chaussures propres !" },
      { Gender = 'Female', Time = 3.5, MSG = "Yeee boy, bienvenue dans mon magasin !. Oh, excusez-moi ma dame, j'existais plus." },
      { Gender = 'Female', Time = 3.5, MSG = "Oh regardez ça, bonjour. Comment est votre journée aujourd'hui ma dame ?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Merci pour votre visite ! Bon voyage mon ami !" },
      { Gender = 'Male', Time = 3.5, MSG = "Je vous souhaite une bonne journée, puissiez-vous profiter de votre journée monsieur !" },
      { Gender = 'Male', Time = 3.5, MSG = "Bonne journée monsieur, merci pour votre visite." },
      { Gender = 'Male', Time = 3.5, MSG = "Bon voyage mon ami, merci pour ta visite" },
      { Gender = 'Female', Time = 3.5, MSG = "Merci pour votre visite ! Bon voyage ma dame !" },
      { Gender = 'Female', Time = 3.5, MSG = "Je vous souhaite une bonne journée, que vous profitiez de votre journée Madame !" },
      { Gender = 'Female', Time = 3.5, MSG = "Bonne journée Madame, merci de votre visite." },
      { Gender = 'Female', Time = 3.5, MSG = "Bon voyage ma dame, merci de votre visite" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Comment puis-je vous aider mon bon monsieur ?" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Comment puis-je vous aider ma dame ?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"] = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"] = { Gender = false, Time = false, MSG = "Loot Box" },
    ["OpenBox"] = { Gender = false, Time = false, MSG = "Appuyez sur ~color_green~E~q~ pour ouvrir" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "Vous n'avez pas sélectionné d'objet à déposer par terre ! Sélectionnez d'abord un objet !" },
    ["NotEnough"] = { Gender = false, Time = false, MSG = "Vous n'avez pas assez de cet article dans votre inventaire !" },
    ["NoAmount"] = { Gender = false, Time = false, MSG = "Vous n'avez pas défini de montant dans le paramètre de montant. Impossible de déposer votre article !" },
    ["ToClose"] = { Gender = false, Time = 5.0, MSG = "Vous êtes trop proche d'une DropBox différente. Rapprochez-vous ou éloignez-vous !" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "J'ai faim, j'ai besoin de quelque chose à manger" },
      { Gender = false, Time = 5.0, MSG = "J'ai tellement faim, j'ai vraiment besoin de quelque chose à manger" },
      { Gender = false, Time = 5.0, MSG = "J'ai la tête légère, j'ai besoin de quelque chose à manger" },
      { Gender = false, Time = 5.0, MSG = "Oh j'ai mal au ventre, je n'ai pas encore mangé" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "J'ai tellement soif, j'ai besoin de quelque chose à boire" },
      { Gender = false, Time = 5.0, MSG = "Ma bouche est sèche, j'ai besoin d'eau" },
      { Gender = false, Time = 5.0, MSG = "Uhg, si je ne bois pas bientôt, je pourrais m'évanouir" },
      { Gender = false, Time = 5.0, MSG = "Jamais de ma vie je n'ai eu aussi soif" },
    }
  },

  ["Scavenger"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Récupérateur" },
    ["Rewards"] = { Gender = false, Time = 3.0, MSG = "Vous avez récolté" },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0, MSG = "Ce buisson a déjà été récolté" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Récolte" },
  },

  ["ScratchCards"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Employé de banque" },
    ["NoTickets"] = { Gender = false, Time = 5.0, MSG = "Vous n'avez aucun ticket de loterie en votre possession !" },
    ["WonCard"] = { Gender = false, Time = 5.0, MSG = "You've Won $" },
    ["WonTotal"] = { Gender = false, Time = 5.0, MSG = "Vous avez gagné un grand total de $" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Récolte" },
    ["BetterLuck"] = { Gender = false, Time = false, MSG = "Plus de chance la prochaine fois" },
    ["NoWin"] = { Gender = false, Time = 5.0, MSG = "MalTimeusement, vous n'avez rien gagné cette fois" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"] = { Gender = false, Time = false, MSG = "Danse" },
    ["MenuStop"] = { Gender = false, Time = false, MSG = "Stop" },
    ["MenuNext"] = { Gender = false, Time = false, MSG = "Suivant" },
    ["MenuBack"] = { Gender = false, Time = false, MSG = "Retour" },
    ["ShowFear"] = { Gender = false, Time = false, MSG = "Afficher / Exprimer la peur" },
    ["StopTrumpet"] = { Gender = false, Time = 5.0, MSG = "Vous pouvez arrêter de jouer en appuyant sur Backspace - Spacebar ou X" },
    ["TrumpWarning"] = { Gender = false, Time = 5.0, MSG = "Si la trompette reste coincée dans votre main, rechargez votre skin via le menu pour y remédier" },
    ["ScenarioStop"] = { Gender = false, Time = 5.0, MSG = "Vous pouvez arrêter le scénario en tapant [ /scenario stop ] dans le chat" },
    ["SetStatus"] = { Gender = false, Time = false, MSG = "Définissez votre statut !" },
  },

  ["Stables"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Stable" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Stable Attendant" },
    ["HorseNamed"] = { Gender = false, Time = 3.5, MSG = "Vous avez nommé votre cheval : " },
    ["HorseBought"] = { Gender = false, Time = 5.0, MSG = "Votre cheval est maintenant prêt ! Ce fut un plaisir de faire affaire avec vous." },
    ["HorseStored"] = { Gender = false, Time = 5.0, MSG = "Votre cheval est stocké, nous en prendrons grand soin !" },
    ["NameHorse"] = { Gender = false, Time = false, MSG = "Nommez votre cheval" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Vous n'avez pas assez d'argent pour acheter ce cheval j'en ai peur !" },
    ["HorseReady"] = { Gender = false, Time = 5.0, MSG = "Votre cheval est prêt à son écurie !" },
    ["FetchHorse"] = { Gender = false, Time = 5.0, MSG = "Bien sûr, un instant, laisse-moi récupérer ton cheval !" },
    ["HorseFetched"] = { Gender = false, Time = 5.0, MSG = "Et voilà monsieur, aussi sain que jamais !" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Ouvrir le menu" },
    ["StoreHorse"] = { Gender = false, Time = false, MSG = "Magasin Cheval" },
    ["NoHorseName"] = { Gender = false, Time = 5.0, MSG = "Désolé, mais vous devez donner un nom à votre cheval" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Bienvenue, j'espère que vous entrerez dans mon magasin avec des chaussures propres !" },
      { Gender = 'Male', Time = 5.0, MSG = "Yeee boy, bienvenue dans mon magasin, est-ce que j'ai des chevaux pour vous monsieur !" },
      { Gender = 'Male', Time = 5.0, MSG = "Oh regardez ça, bonjour. Comment se passe votre journée aujourd'hui monsieur ?" },
      { Gender = 'Female', Time = 5.0, MSG = "Bienvenue, j'espère que vous entrerez dans mon magasin avec des chaussures propres !" },
      { Gender = 'Female', Time = 5.0, MSG = "Yeee boy, bienvenue dans mon magasin !. Oh, excusez-moi ma dame, j'existais plus." },
      { Gender = 'Female', Time = 5.0, MSG = "Oh regardez ça, bonjour. Comment est votre journée aujourd'hui ma dame ?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Merci pour votre visite ! Bon voyage mon ami !" },
      { Gender = 'Male', Time = 5.0, MSG = "Je vous souhaite une bonne journée, puissiez-vous profiter de votre journée monsieur !" },
      { Gender = 'Male', Time = 5.0, MSG = "Bonne journée monsieur, merci pour votre visite." },
      { Gender = 'Male', Time = 5.0, MSG = "Bon voyage mon ami, merci pour ta visite" },
      { Gender = 'Female', Time = 5.0, MSG = "Merci pour votre visite ! Bon voyage ma dame !" },
      { Gender = 'Female', Time = 5.0, MSG = "Je vous souhaite une bonne journée, que vous profitiez de votre journée Madame !" },
      { Gender = 'Female', Time = 5.0, MSG = "Bonne journée Madame, merci de votre visite." },
      { Gender = 'Female', Time = 5.0, MSG = "Bon voyage ma dame, merci de votre visite" },
    }
  },

  ["Stores"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Magasin général" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Ouvrier général du magasin" },
    ["MenuBuy"] = { Gender = false, Time = false, MSG = "Magasin général (Acheter)" },
    ["MenuSell"] = { Gender = false, Time = false, MSG = "Inventaire (Vendre)" },
    ["ButtonBuy"] = { Gender = false, Time = false, MSG = "Acheter" },
    ["ButtonSell"] = { Gender = false, Time = false, MSG = "Vendre" },
    ["ButtonMan"] = { Gender = false, Time = false, MSG = "Gérer" },
    ["NotInInvent"] = { Gender = false, Time = 3.5, MSG = "Vous n'en avez pas autant dans votre inventaire !" },
    ["Bought"] = { Gender = false, Time = 3.5, MSG = "Vous avez acheté " },
    ["Sold"] = { Gender = false, Time = 3.5, MSG = "Vous avez vendu " },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Vous n'avez pas assez d'argent pour acheter cette/cette quantité d'articles !" },
    ["NoItem"] = { Gender = false, Time = false, MSG = "Vous n'avez pas encore sélectionné d'article !" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Bienvenue, j'espère que vous entrerez dans mon magasin avec des chaussures propres !" },
      { Gender = false, Time = 5.0, MSG = "Hey un client, c'est F**** génial !" },
      { Gender = false, Time = 5.0, MSG = "Oh regarde ça, bonjour." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Merci pour votre visite ! Bon voyage !" },
      { Gender = false, Time = 5.0, MSG = "Je vous souhaite une bonne journée, profitez-en !" },
      { Gender = false, Time = 5.0, MSG = "Profitez de votre journée, merci pour votre visite." },
      { Gender = false, Time = 5.0, MSG = "Bon voyage mon ami, merci pour ta visite" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "Comment puis-je vous aider ?" },
      { Gender = false, Time = 2.5, MSG = "Ah tu veux acheter quelque chose hein ?" },
      { Gender = false, Time = 2.5, MSG = "Est-ce quelque chose de spécial que vous recherchez ?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "Comment puis-je vous aider ?" },
      { Gender = false, Time = 2.5, MSG = "Je vais faire éclater des tags, je n'ai que vingt dollars en poche !" },
      { Gender = false, Time = 2.5, MSG = "Ah tu veux vendre quelque chose hein ?" },
      { Gender = false, Time = 2.5, MSG = "Je prends tout, du poisson au pain, du pain au café. Vous l'appelez !" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Ce fut un plaisir de faire affaire avec vous !" },
      { Gender = false, Time = 5.0, MSG = "Je suis content d'avoir pu être à votre service !" },
      { Gender = false, Time = 5.0, MSG = "Je suis content d'avoir pu vous aider" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Interactable" }
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
