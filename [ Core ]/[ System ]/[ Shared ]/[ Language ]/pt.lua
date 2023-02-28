Lang['pt'] = {

  ["System"] = {
    ["Yes"] = { Gender = false, Time = false, MSG = "Sim" },
    ["No"] = { Gender = false, Time = false, MSG = "Não" },
    ["Error"] = { Gender = false, Time = false, MSG = "ERRO" },
    ["System"] = { Gender = false, Time = false, MSG = "Sistema" },
    ["Success"] = { Gender = false, Time = false, MSG = "Sucesso" },
    ["BLCheck"] = { Gender = false, Time = false, MSG = "Verificando lista negra" },
    ["WLCheck"] = { Gender = false, Time = false, MSG = "Verificando lista de permissões" },
    ["SteamCheck"] = { Gender = false, Time = false, MSG = "Verificando a identificação do Steam" },
    ["SteamConFail"] = { Gender = false, Time = false, MSG = "Não foi possível conectar-se à API do Steam, verifique se você abriu o Steam antes de abrir o RedM!" },
    ["UserBanned"] = { Gender = false, Time = false, MSG = "Você foi banido deste servidor." },
    ["InfoDiscord"] = { Gender = false, Time = false, MSG = "Para mais informações, visite nosso Discord ".._DiscordInvite.."" },
    ["NoBanReason"] = { Gender = false, Time = false, MSG = "Nenhum motivo fornecido" },
    ["WLPending"] = { Gender = false, Time = false, MSG = "Sua solicitação de lista branca ainda está pendente..." },
    ["WLDenied"] = { Gender = false, Time = false, MSG = "Sua solicitação de lista de permissões foi negada pelo motivo:" },
    ["WLMade1"] = { Gender = false, Time = false, MSG = "Para acessar este servidor, você precisa estar na lista de permissões." },
    ["WLMade2"] = { Gender = false, Time = false, MSG = "A solicitação da lista de permissões foi feita automaticamente e agora está pendente." },
    ["NoCharFound"] = { Gender = false, Time = false, MSG = "Não foi possível executar esta ação, nenhum caractere encontrado!" },
    ["Language"] = { Gender = false, Time = false, MSG = "Idioma" },
    ["LangNotEnter"] = { Gender = false, Time = false, MSG = "O parâmetro de idioma estava vazio!" },
    ["LanguageSetTo"] = { Gender = false, Time = false, MSG = "O idioma do cliente está definido como " },
    ["LangNoSupport"] = { Gender = false, Time = 5.0, MSG = "Este idioma não é compatível!" },
    ["WelcomeTo"] = { Gender = false, Time = false, MSG = "Bem-vindo a:" },
    ["InProgress"] = { Gender = false, Time = false, MSG = "Em andamento" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Abrir Menu" },
    ["InDevelopment"] = { Gender = false, Time = 5.0, MSG = "Este recurso está em desenvolvimento!" },

    -- Cidades
    ["Guarma"] = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"] = { Gender = false, Time = false, MSG = "Prisão de Sisika" },
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Banco" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Bankier Worker" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "Estou ocupado com outro cidadão, um momento por favor!" },
    ["NoAccount"] = { Gender = false, Time = 3.5, MSG = "Sinto muito, mas não temos conta bancária cadastrada em nossos logs. Você primeiro precisa abrir uma conta bancária antes de poder usar uma!" },
    ["UseBankKey"] = { Gender = false, Time = 3.5, MSG = "Usar o banco" },
    ["AlAccount"] = { Gender = false, Time = 3.5, MSG = "Você já possui uma conta bancária neste banco!" },
    ["AcCreation"] = { Gender = false, Time = 3.5, MSG = "Você pagou a taxa da sua conta, conta sendo criada!" },
    ["AcCreated"] = { Gender = false, Time = 3.5, MSG = "Sua conta bancária foi aberta! Agora você pode abrir sua conta bancária." },
    ["NoDepMoney"] = { Gender = false, Time = 3.5, MSG = "Você não tem dinheiro suficiente para fazer este depósito!" },
    ["NoDepGold"] = { Gender = false, Time = 3.5, MSG = "Você não tem ouro suficiente para fazer este depósito!" },
    ["NoWitMoney"] = { Gender = false, Time = 3.5, MSG = "Você não tem dinheiro suficiente para fazer este saque!" },
    ["NoWitGold"] = { Gender = false, Time = 3.5, MSG = "Você não tem ouro suficiente para fazer esta retirada!" },
    ["DepMinMoney"] = { Gender = false, Time = 3.5, MSG = "O valor do depósito precisa ser maior que $ 0,01 centavo!" },
    ["DepMinGold"] = { Gender = false, Time = 3.5, MSG = "O valor do depósito precisa ser maior que 0,01 ouro!" },
    ["WitMinMoney"] = { Gender = false, Time = 3.5, MSG = "O valor do depósito precisa ser maior que $ 0,01 centavo!" },
    ["WitMinGold"] = { Gender = false, Time = 3.5, MSG = "O valor do depósito precisa ser maior que 0,01 ouro!" },
    ["ToFast"] = { Gender = false, Time = 3.5, MSG = "Sinto muito, mas só posso fazer 1 transação por vez. Um momento, por favor!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Você fez um depósito de $" },
    ["DepDoneGold"] = { Gender = false, Time = 3.5, MSG = "Você fez um depósito de " },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Você fez uma retirada de $" },
    ["WitDoneGold"] = { Gender = false, Time = 3.5, MSG = "Você fez uma retirada de " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Bem-vindo ao nosso banco, como posso ser útil?" },
      { Gender = false, Time = false, MSG = "Bem-vindo, como posso ajudá-lo?" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Obrigado pela visita, tenha um dia maravilhoso!" },
      { Gender = false, Time = false, MSG = "Fiz o favor de te ajudar hoje, até a próxima!" },
      { Gender = false, Time = false, MSG = "Se ainda houver algo em que eu possa ajudá-lo, é só me avisar!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0, MSG = "Nenhum caractere selecionado!" },
  },

  ["Clothing"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Loja de roupas" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Alfaiate" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "No momento, estou ocupado com outro cliente, aguarde um momento. Estarei com você o mais breve possível!" },
    ["NeedToGo"] = { Gender = false, Time = 3.5, MSG = "Tenho mais coisas para fazer e mais clientes para atender, avise-me quando precisar de mais ajuda" },
    ["DressingRoom"] = { Gender = false, Time = false, MSG = "Vestiário" },
    ["Confirmation"] = { Gender = false, Time = false, MSG = "Confirmação" },
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5, MSG = "Deseja trocar de roupa?" },
    ["Pay"] = { Gender = false, Time = false, MSG = "Pagar" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Abrir Menu" },
    ["Outfits"] = { Gender = false, Time = false, MSG = "Roupas" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Bem-vindo, espero que você entre em minha loja com sapatos limpos!" },
      { Gender = 'Male', Time = 3.5, MSG = "Sim, garoto, bem-vindo à minha loja, senhor, estou feliz em vê-lo!" },
      { Gender = 'Male', Time = 3.5, MSG = "Oh, olhe para isso, olá. Como está seu dia hoje, senhor?" },
      { Gender = 'Female', Time = 3.5, MSG = "Bem-vindo, espero que você entre em minha loja com sapatos limpos!" },
      { Gender = 'Female', Time = 3.5, MSG = "Sim, garoto, seja bem-vindo à minha loja! Oh, desculpe-me minha senTime, eu já existia." },
      { Gender = 'Female', Time = 3.5, MSG = "Oh, olhe para isso, olá. Como está seu dia hoje, minha senTime?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Obrigado pela sua visita! Viagens seguras, meu amigo!" },
      { Gender = 'Male', Time = 3.5, MSG = "Desejo-lhe um bom dia, que você aproveite seu dia senhor!" },
      { Gender = 'Male', Time = 3.5, MSG = "Bom dia senhor, obrigado pela visita." },
      { Gender = 'Male', Time = 3.5, MSG = "Boas viagens meu amigo, obrigado pela visita" },
      { Gender = 'Female', Time = 3.5, MSG = "Obrigado pela sua visita! Viagens seguras minha senTime!" },
      { Gender = 'Female', Time = 3.5, MSG = "Desejo-lhe um bom dia, que você aproveite seu dia, senTime!" },
      { Gender = 'Female', Time = 3.5, MSG = "Bom dia senTime, obrigado pela visita." },
      { Gender = 'Female', Time = 3.5, MSG = "Boas viagens minha senTime, obrigado pela sua visita" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.0, MSG = "Como posso ajudá-lo bom senhor?" },
      { Gender = 'Female', Time = 3.0, MSG = "Como posso ajudá-la, minha senTime?" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male', Time = 3.5, MSG = "É claro que poderei ajudá-lo, bom senhor. Por favor, caminhe até o lado do balcão e estarei com você o mais rápido possível." },
      { Gender = 'Male', Time = 3.5, MSG = "Ahh sim, roupas. Senhor, você veio ao lugar certo, por favor, siga-me." },
      { Gender = 'Female', Time = 3.5, MSG = "Como quiser, minha senTime, irei ajudá-la com muito prazer!" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Ahh sim, roupas. SenTime, você veio ao lugar certo, por favor me siga." },
    },

    ["Reactions"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Isso combina com você, senhor" },
      { Gender = 'Male', Time = 5.0, MSG = "Oh, olhe para isso, ver você assim me deixa com ciúmes." },
      { Gender = 'Male', Time = 5.0, MSG = "Nossa, olha isso, é maravilhoso." },
      { Gender = 'Male', Time = 5.0, MSG = "É o melhor que temos na cidade, você não encontra melhor em nenhum outro lugar!" },
      { Gender = 'Male', Time = 5.0, MSG = "Tão lindo, tão especial, e sou eu quem posso fazer pra você, se quiser de causa." },
      { Gender = 'Male', Time = 5.0, MSG = "Isso combina com você maravilhoso" },
      { Gender = 'Male', Time = 5.0, MSG = "Meu Deus, foi feito especialmente para você!" },
      { Gender = 'Female', Time = 5.0, MSG = "Isso combina com você, senhor" },
      { Gender = 'Female', Time = 5.0, MSG = "Oh, olhe para isso, ver você assim me deixa com ciúmes." },
      { Gender = 'Female', Time = 5.0, MSG = "Nossa, olha isso, é maravilhoso." },
      { Gender = 'Female', Time = 5.0, MSG = "É o melhor que temos na cidade, você não encontra melhor em nenhum outro lugar!" },
      { Gender = 'Female', Time = 5.0, MSG = "Tão lindo, tão especial, e sou eu que posso fazer pra você, se quiser de causa." },
      { Gender = 'Female', Time = 5.0, MSG = "Isso combina com você maravilhoso" },
      { Gender = 'Female', Time = 5.0, MSG = "Meu Deus, foi feito especialmente para você!" },
    }
  },

  ["Skins"] = {
    ['Male'] = { Gender = false, Time = false, MSG = "Male" },
    ['Female'] = { Gender = false, Time = false, MSG = "Female" },
    ['Select'] = { Gender = false, Time = false, MSG = "Select" },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Escolha o Gender" },
    ["ErrAge"] = { Gender = false, Time = 3.0, MSG = "Você não definiu a idade de seus personagens!" },
    ["ErrName"] = { Gender = false, Time = 3.0, MSG = "Você não definiu o nome do seu personagem!" },
    ["ErrNatio"] = { Gender = false, Time = 3.0, MSG = "Você não definiu a nacionalidade do seu personagem!" },
    ["ErrTorso"] = { Gender = false, Time = 3.0, MSG = "Você não definiu o tipo de torso do seu personagem!" },
    ["ErrLegs"] = { Gender = false, Time = 3.0, MSG = "Você não definiu o tipo de perna do seu personagem!" },
    ["ErrHead"] = { Gender = false, Time = 3.0, MSG = "Você não definiu o tipo de cabeça do seu personagem!" },
    ["ErrEyes"] = { Gender = false, Time = 3.0, MSG = "Você não definiu o tipo de olhos do seu personagem!" },
    ["ErrHair"] = { Gender = false, Time = 3.0, MSG = "Você não definiu o tipo de cabelo do seu personagem!" },
  },

  ["Spawner"] = {
    ['Cutscene'] = { Gender = false, Time = false, MSG = "Cutscene" },
    ["DriverName"] = { Gender = false, Time = false, MSG = "StageCoach Driver" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Você desligou a música" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Você ligou a música" },
    ["ErrStepOut"] = { Gender = false, Time = 5.0, MSG = "Você não pode sair na cena cortada." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Parar | Iniciar Música" },
    ["StepOut"] = { Gender = false, Time = false, MSG = "Sair" },
    ["Cinema"] = { Gender = false, Time = false, MSG = "Cinema" },

    ["Welcome"] = {
      { Gender = false, Time = 5.0, MSG = "Bem-vindo ao nosso concelho, que aproveite a sua estadia!" },
      { Gender = false, Time = 5.0, MSG = "Eu cen dizer que você é inteligente, porque você escolheu para este município! Haha, seja bem-vindo meu amigo!" },
    },

    ["Advice"] = {
      { Gender = false, Time = 5.0, MSG = "Vou levá-lo a um bom alfaiate que pode ajudá-lo com algumas roupas novas" },
      { Gender = false, Time = 5.0, MSG = "Depois de uma jornada tão longa, um bom alfaiate é o que você precisa. Deixe-me fazer a honra e levá-lo a um." },
    },

    ["Tailor"] = {
      { Gender = false, Time = 5.0, MSG = "Há um alfaiate por perto, eu consideraria comprar roupas novas." },
      { Gender = false, Time = 5.0, MSG = "Você encontrará um alfaiate na esquina, eu consideraria comprar roupas novas." },
    },

    ["Goodbye"] = {
      { Gender = false, Time = 5.0, MSG = "Adeus meu amigo, foi um prazer conhecê-lo! Aproveite a sua estadia!" },
      { Gender = false, Time = 5.0, MSG = "Foi um prazer conhecê-lo, que você aproveite sua estada!" },
      { Gender = false, Time = 5.0, MSG = "Então são $ 12,25... hah, brincadeira, aproveite sua estadia, meu amigo!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0, MSG = "É um belo condado onde você chegou, há muito o que fazer na cidade, você pode gostar." },
      { Gender = false, Time = 7.0, MSG = "Não é engraçado como o Time pode ser às vezes, pode mudar como um louco! Você realmente não quer ser tostado em uma daquelas tempestades, vou te dizer ." },
      { Gender = false, Time = 5.0, MSG = "Parece que você está viajando há algum Time. Espero que sua viagem tenha ocorrido sem problemas." },
      { Gender = false, Time = 5.0, MSG = "Não sou só eu, ou está muito fedorento aqui." },
      { Gender = false, Time = 5.0, MSG = "Olha esse Time, que lindo" },
      { Gender = false, Time = 5.0, MSG = "Estamos quase no nosso destino. Espero que você esteja gostando da viagem até agora." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Abrir Menu" },
    ["Inventory"] = { Gender = false, Time = false, MSG = "Inventário" },
    ["AdminMenu"] = { Gender = false, Time = false, MSG = "Menu Admin" },
    ["Zoning"] = { Gender = false, Time = false, MSG = "Zonamento" },
    ["AutoMove"] = { Gender = false, Time = false, MSG = "Iniciar movimento automático" },
    ["StopMove"] = { Gender = false, Time = false, MSG = "Stop Auto Move" },
    ["Unequipt"] = { Gender = false, Time = false, MSG = "Arma não equipada" },
    ["Error"] = { Gender = false, Time = false, MSG = "Erro" },
    ["System"] = { Gender = false, Time = false, MSG = "Sistema" },
    ["Initialize"] = { Gender = false, Time = 3.0, MSG = "Menu de configuração inicializado!" },
    ["Initialize2"] = { Gender = false, Time = 5.0, MSG = "Agora você pode abrir o menu de configurações com a tecla alt esquerda!" },
    ["NoNextPage"] = { Gender = false, Time = 3.0, MSG = "Não há próxima página no momento" },
    ["NoBackPage"] = { Gender = false, Time = 3.0, MSG = "Sem página traseira no momento" },
    ["CoordsSave"] = { Gender = false, Time = 5.0, MSG = "Você salvou suas coordenadas!" },
    ["ErrSkin"] = { Gender = false, Time = 5.0, MSG = "Você não tem skin para carregar! Crie uma skin primeiro!" },
    ["LogOut"] = { Gender = false, Time = 5.0, MSG = "Logout" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0, MSG = "Salvando a posição do seu personagem" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Todas as músicas do jogo foram ativadas!" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Todas as músicas do jogo foram desativadas!" },
    ["MusicUnable"] = { Gender = false, Time = 5.0, MSG = "Você desativou a música nas configurações, não é possível tocar música!" },
    ["VolSet"] = { Gender = false, Time = 5.0, MSG = "Volume definido como %" },
    ["VolSet2"] = { Gender = false, Time = 5.0, MSG = "O volume terá efeito na próxima música!" },
    ["CharDel"] = { Gender = false, Time = 10.0, MSG = "Exclusão de caractere em andamento" },
    ["DelDone"] = { Gender = false, Time = 5.0, MSG = "Todas as informações do personagem foram removidas, estamos trazendo você de volta ao menu de seleção de personagem" },
  },

  ["FastTravel"] = {
    ["ZoneName"] = { Gender = false, Time = false, MSG = "Viagem rápida" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Dokus Travel Agency" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0, MSG = "Tenha uma boa viagem e obrigado por viajar Dokus Industries" },
      { Gender = false, Time = 5.0, MSG = "Esperamos que você aproveite sua viagem, viagens seguras" },
      { Gender = false, Time = 5.0, MSG = "Estamos felizes por você ter escolhido a Dokus Industries para viajar!" },
      { Gender = false, Time = 5.0, MSG = "Você pode entrar no barco no cais, viagens seguras" },
    }

  },

  ["GunStore"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Traficante de armas" },
    ["BlipName"] = { Gender = false, Time = false, MSG = "Loja de armas" },
    ["NoMoney"] = { Gender = false, Time = 3.0, MSG = "Você não tem dinheiro suficiente!" },
    ["BoughtAmmo1"] = { Gender = false, Time = 3.0, MSG = "Você comprou" },
    ["BoughtAmmo2"] = { Gender = false, Time = 3.0, MSG = "Munição!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Abrir Menu" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0, MSG = "Este item não está funcionando conforme o esperado e não foi vendido no momento!" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Bem-vindo, espero que você entre em minha loja com sapatos limpos!" },
      { Gender = 'Male', Time = 3.5, MSG = "Sim garoto, bem-vindo à minha loja, senhor!" },
      { Gender = 'Male', Time = 3.5, MSG = "Oh, olhe para isso, olá. Como está seu dia hoje, senhor?" },
      { Gender = 'Female', Time = 3.5, MSG = "Bem-vindo, espero que você entre em minha loja com sapatos limpos!" },
      { Gender = 'Female', Time = 3.5, MSG = "Sim, garoto, seja bem-vindo à minha loja! Oh, desculpe-me minha senTime, eu já existia." },
      { Gender = 'Female', Time = 3.5, MSG = "Oh, olhe para isso, olá. Como está seu dia hoje, minha senTime?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Obrigado pela sua visita! Viagens seguras, meu amigo!" },
      { Gender = 'Male', Time = 3.5, MSG = "Desejo-lhe um bom dia, que você aproveite seu dia senhor!" },
      { Gender = 'Male', Time = 3.5, MSG = "Bom dia senhor, obrigado pela visita." },
      { Gender = 'Male', Time = 3.5, MSG = "Boas viagens meu amigo, obrigado pela visita" },
      { Gender = 'Female', Time = 3.5, MSG = "Obrigado pela sua visita! Viagens seguras minha senTime!" },
      { Gender = 'Female', Time = 3.5, MSG = "Desejo-lhe um bom dia, que você aproveite seu dia, senTime!" },
      { Gender = 'Female', Time = 3.5, MSG = "Bom dia senTime, obrigado pela visita." },
      { Gender = 'Female', Time = 3.5, MSG = "Boas viagens minha senTime, obrigado pela sua visita" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Como posso ajudá-lo bom senhor?" },
      {Gender = 'FeMale', Time = 3.5, MSG = "Como posso ajudá-la, minha senTime?" },
    }
  },

  ["Inventory"] = {
    ["DropBox"] = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"] = { Gender = false, Time = false, MSG = "Caixa de saque" },
    ["OpenBox"] = { Gender = false, Time = false, MSG = "Pressione ~color_green~E~q~ para abrir" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "Você não tem nenhum item selecionado para jogar no chão! Primeiro selecione um item!" },
    ["NotEnough"] = { Gender = false, Time = false, MSG = "Você não tem o suficiente deste item em seu inventário!" },
    ["NoAmount"] = { Gender = false, Time = false, MSG = "Você não tem valor definido no parâmetro de valor. Não é possível descartar seu item!" },
    ["ToClose"] = { Gender = false, Time = 5.0, MSG = "Você está muito perto de um DropBox diferente. Aproxime-se ou afaste-se!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Estou ficando com fome, preciso comer alguma coisa" },
      { Gender = false, Time = 5.0, MSG = "Estou com tanta fome, preciso muito comer algo" },
      { Gender = false, Time = 5.0, MSG = "Estou me sentindo tonto, preciso comer algo" },
      { Gender = false, Time = 5.0, MSG = "Ah, meu estômago dói, ainda não comi" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Estou com muita sede, preciso de algo para beber" },
      { Gender = false, Time = 5.0, MSG = "Minha boca está seca, preciso de um pouco de água" },
      { Gender = false, Time = 5.0, MSG = "Uhg, se eu não beber logo, posso desmaiar" },
      { Gender = false, Time = 5.0, MSG = "Nunca na minha vida senti tanta sede" },
    }
  },

  ["Scavenger"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Scavenger" },
    ["Rewards"] = { Gender = false, Time = 3.0, MSG = "Você colheu" },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0, MSG = "Este arbusto já foi colhido" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Colheita" },
  },

  ["ScratchCards"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Bank Worker" },
    ["NoTickets"] = { Gender = false, Time = 5.0, MSG = "Você não tem bilhetes de loteria em sua posse!" },
    ["WonCard"] = { Gender = false, Time = 5.0, MSG = "Você ganhou $" },
    ["WonTotal"] = { Gender = false, Time = 5.0, MSG = "Você ganhou um total geral de $" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Colheita" },
    ["BetterLuck"] = { Gender = false, Time = false, MSG = "Melhor sorte da próxima vez" },
    ["NoWin"] = { Gender = false, Time = 5.0, MSG = "Infelizmente você não ganhou nada desta vez" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"] = { Gender = false, Time = false, MSG = "Dança" },
    ["MenuStop"] = { Gender = false, Time = false, MSG = "Parar" },
    ["MenuNext"] = { Gender = false, Time = false, MSG = "Próximo" },
    ["MenuBack"] = { Gender = false, Time = false, MSG = "Voltar" },
    ["ShowFear"] = { Gender = false, Time = false, MSG = "Mostrar / Expres Medo" },
    ["StopTrumpet"] = { Gender = false, Time = 5.0, MSG = "Você pode parar de jogar pressionando Backspace - Barra de espaço ou X" },
    ["TrumpWarning"] = { Gender = false, Time = 5.0, MSG = "Se o trompete ficar preso na sua mão, recarregue sua skin através do menu para corrigi-lo" },
    ["ScenarioStop"] = { Gender = false, Time = 5.0, MSG = "Você pode parar o cenário digitando [ /scenario stop ] no chat" },
    ["SetStatus"] = { Gender = false, Time = false, MSG = "Defina seu status!" },
  },

  ["Stables"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Estável" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Atendente estável" },
    ["HorseNamed"] = { Gender = false, Time = 3.5, MSG = "Você nomeou seu cavalo: " },
    ["HorseBought"] = { Gender = false, Time = 5.0, MSG = "Seu cavalo está pronto! Foi um prazer negociar com você." },
    ["HorseStored"] = { Gender = false, Time = 5.0, MSG = "Seu cavalo está guardado, vamos cuidar muito bem dele!" },
    ["NameHorse"] = { Gender = false, Time = false, MSG = "Nomeie seu cavalo" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Você não tem dinheiro suficiente para comprar este cavalo, estou com medo!" },
    ["HorseReady"] = { Gender = false, Time = 5.0, MSG = "Seu cavalo está pronto em seu estábulo!" },
    ["FetchHorse"] = { Gender = false, Time = 5.0, MSG = "Claro, um momento, deixe-me pegar seu cavalo!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0, MSG = "Aqui está, senhor, tão saudável quanto antes!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Abrir Menu" },
    ["StoreHorse"] = { Gender = false, Time = false, MSG = "Cavalo de loja" },
    ["NoHorseName"] = { Gender = false, Time = 5.0, MSG = "Desculpe, mas você precisa dar um nome ao seu cavalo" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Bem-vindo, espero que entre na minha loja com sapatos limpos!" },
      { Gender = 'Male', Time = 5.0, MSG = "Sim, garoto, bem-vindo à minha loja, tenho alguns cavalos para o senhor!" },
      { Gender = 'Male', Time = 5.0, MSG = "Oh, olhe para isso, olá. Como está seu dia hoje, senhor?" },
      { Gender = 'Female', Time = 5.0, MSG = "Bem-vindo, espero que você entre em minha loja com sapatos limpos!" },
      { Gender = 'Female', Time = 5.0, MSG = "Sim, garoto, seja bem-vindo à minha loja! Oh, desculpe-me minha senTime, eu já existia." },
      { Gender = 'Female', Time = 5.0, MSG = "Oh, olhe para isso, olá. Como está seu dia hoje, minha senTime?" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Obrigado pela sua visita! Viagens seguras, meu amigo!" },
      { Gender = 'Male', Time = 5.0, MSG = "Desejo-lhe um bom dia, que você aproveite seu dia senhor!" },
      { Gender = 'Male', Time = 5.0, MSG = "Bom dia senhor, obrigado pela visita." },
      { Gender = 'Male', Time = 5.0, MSG = "Boas viagens meu amigo, obrigado pela visita" },
      { Gender = 'Female', Time = 5.0, MSG = "Obrigado pela sua visita! Viagens seguras minha senTime!" },
      { Gender = 'Female', Time = 5.0, MSG = "Desejo-lhe um bom dia, que você aproveite seu dia, senTime!" },
      { Gender = 'Female', Time = 5.0, MSG = "Bom dia senTime, obrigado pela visita." },
      { Gender = 'Female', Time = 5.0, MSG = "Boas viagens minha senTime, obrigado pela sua visita" },
    }
  },

  ["Stores"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Loja Geral" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Funcionário da loja geral" },
    ["MenuBuy"] = { Gender = false, Time = false, MSG = "Loja Geral (Comprar)" },
    ["MenuSell"] = { Gender = false, Time = false, MSG = "Inventário (Vender)" },
    ["ButtonBuy"] = { Gender = false, Time = false, MSG = "Comprar" },
    ["ButtonSell"] = { Gender = false, Time = false, MSG = "Vender" },
    ["ButtonMan"] = { Gender = false, Time = false, MSG = "Gerenciar" },
    ["NotInInvent"] = { Gender = false, Time = 3.5, MSG = "Você não tem tanto em seu inventário!" },
    ["Bought"] = { Gender = false, Time = 3.5, MSG = "Você comprou" },
    ["Sold"] = { Gender = false, Time = 3.5, MSG = "Você vendeu" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Você não tem dinheiro suficiente para comprar esta/essa quantidade de itens!" },
    ["NoItem"] = { Gender = false, Time = false, MSG = "Você ainda não selecionou um item!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Bem-vindo, espero que você entre em minha loja com sapatos limpos!" },
      { Gender = false, Time = 5.0, MSG = "Ei, cliente, isso é demais!" },
      { Gender = false, Time = 5.0, MSG = "Oh, olhe para isso, olá." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Obrigado pela sua visita! Boa viagem!" },
      { Gender = false, Time = 5.0, MSG = "Desejo-lhe um bom dia, que você aproveite!" },
      { Gender = false, Time = 5.0, MSG = "Bom dia, obrigado pela visita." },
      { Gender = false, Time = 5.0, MSG = "Boas viagens meu amigo, obrigado pela visita" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "Como posso ajudá-lo?" },
      { Gender = false, Time = 2.5, MSG = "Ah, você quer comprar alguma coisa hein?" },
      { Gender = false, Time = 2.5, MSG = "É algo especial que você está procurando?" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "Como posso ajudá-lo?" },
      { Gender = false, Time = 2.5, MSG = "Vou abrir algumas tags, só tenho vinte dólares no bolso!" },
      { Gender = false, Time = 2.5, MSG = "Ah, você quer vender alguma coisa hein?" },
      { Gender = false, Time = 2.5, MSG = "Eu tomo de tudo, de peixe a pão, de pão a café. Você escolhe!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Foi um prazer fazer negócios com você!" },
      { Gender = false, Time = 5.0, MSG = "Estou feliz por ter podido atendê-lo!" },
      { Gender = false, Time = 5.0, MSG = "Estou feliz por poder ajudá-lo" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Interacionável" }
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
