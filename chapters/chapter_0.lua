local chapter_0 = {}

-- Conte os números de linhas de diálogo abaixo para usar no índice de menu abaixo.
chapter_0.dialogos = {
    { nome = "Kenji", texto = "Vamos. Atende logo esse telefone."}, -- no celular por ligação
    { nome = "Takashi", texto = "Fala, meu consagrado!"}, -- no celular por ligação
    { nome = "Kenji", texto = "Cadê você, cara?"}, -- no celular por ligação
    { nome = "Takashi", texto = "Estou deitado na cama. Por quê?"}, -- no celular por ligação
    { nome = "Kenji", texto = "Só pode ser brincadeira!"}, -- no celular por ligação
    { nome = "Takashi", texto = "Claro que é brincadeira. Estou a caminho."}, -- no celular por ligação
    { nome = "Kenji", texto = "Sua sorte é que deu algum problema no ônibus e estão arrumando."},-- no celular por ligação
    { nome = "Takashi", texto = "Relaxa! Não pense que perderei essa excursão. É a grande chance de conseguir uma gatinha."},-- no celular por ligação
    { nome = "Kenji", texto = "Espero que chegue logo, ou vai sobrar todas para mim. Incluindo sua amada Naomi-chan." },-- no celular por ligação
    { nome = "Takashi", texto = "Desgraçado! Essa aí será minha futura esposa e você sabe disso." },-- no celular por ligação
    { nome = "Takashi", texto = "Inclusive, já vai procurando uma roupa legal pra ir no meu casamento com a Naomi-chan." },-- no celular por ligação
    { nome = "Kenji", texto = "Vou fingir que não ouvi isso. Já está perto?" },-- no celular por ligação
    { nome = "Takashi", texto = "Sim. Se tudo der certo, chegarei em um piscar de olhos."},-- no celular por ligação
    { nome = "Kenji", texto = "Beleza. Qualquer coisa eu invento uma desculpa aqui pra enrolar até você chegar." },-- no celular por ligação
    { nome = "Kenji", texto = "Falou!" },-- no celular por ligação
    { nome = "Takashi", texto = "Valeu!" },-- no celular por ligação
    { nome = "Kenji", texto = "(Essa será a última excursão do segundo ano. Creio que seja uma grande oportunidade para fazer grandes memórias.)" }, -- monólogo interno
    { nome = "Kenji", texto = "(Ah! Aquelas duas...)" },-- monólogo interno
    { nome = "Naomi",           texto = "Fiquei acordada até tarde ontem vendo o jogo dos Chiba Jets. Eu sei que precisava dormir mais cedo, mas o Yuta jogou como nos tempos de NBA ontem!" },
    { nome = "Iroha Tachibana",           texto = "Ah... mais um jogo dos Chiba Jets, uau..." },
    { nome = "Iroha Tachibana", texto="Bem, eu também não dormi cedo. A ansiedade pra essa viagem me fez ficar acordada até tarde."},
    { nome = "Naomi", texto="Até parece! Você dorme tarde de qualquer jeito."},
    { nome = "Naomi", texto="Aliás, da próxima vez eu vou te ligar e te fazer assistir uma partida junto comigo."},
    { nome = "Iroha Tachibana", texto="Pra quê? Pra me fazer dormir?"},
    { nome = "Naomi", texto="Aff! hahahahaha!", som="cute-laugh" },
    { nome = "Naomi", texto="A propósito, preparada para interagir com pessoas em Kamakura?" },
    { nome = "Iroha Tachibana", texto="Acho que sim. Se eu tentar conversar com alguém como eu converso com você, deve dar bom." },
    { nome = "Naomi", texto="Isso aí! Quero te ver vencer essa timidez." },
    { nome = "Iroha Tachibana", texto="Se eu passar vergonha, fico trancada no quarto do hotel e nunca mais volto pra Kamakura." },
    { nome = "Naomi", texto="Vou estar do seu lado pra te passar confiança e te fazer se soltar um pouco mais." },
    { nome = "Naomi", texto="Se tudo der errado e você quiser se trancar no quarto, poderá ler Slam Dunk. Ou 'o melhor mangá da história', para os mais íntimos." }, -- MC descobre que Naomi tem Slam Dunk como mangá favorito
    { nome = "Naomi", texto="Viu? Você só tem a ganhar. Até no pior dos casos." },
    { nome = "Iroha Tachibana", texto = "Agora sim você me convenceu a não me trancar no quarto." },
    { nome = "Naomi",           texto = "Vem Iroha, vamos..." },
    -- Kimiko, Sayuri e Mio trombam com a Naomi
    { nome = "Naomi",           texto = "Ai" },
    { nome = "Sayuri",          texto = "Vê se olha por onde anda, garota. Sai da minha frente" },
    { nome = "Naomi",           texto = "Ei!! Foi você quem esbarrou em mim" },
    { nome = "Mio",             texto = "Sai do caminho" },
    { nome = "Kimiko",          texto = "..." },
    { nome = "Kimiko",          texto = "Ficam aí paradas igual a duas baratas tontas." },
    { nome = "Naomi",           texto = "O ônibus quebrou, você quer que a gente fique onde?" },
    { nome = "Kimiko",          texto = "Que tal na frente do ônibus no instante em que ele for sair?" },
    { nome = "Sayuri",          texto = "Hahahahah não é má ideia" },
    { nome = "Naomi",           texto = "O que você falou, Kimiko? Quem você pensa que é??" },
    { nome = "Kimiko",          texto = "Fiquem quietas e longe da gente" },
    { nome = "Iroha Tachibana", texto = "*Segura a Naomi* Vem Naomi, deixa elas pra lá, elas só querem confusão." },
    { nome = "Naomi",           texto = "Eu não suporto mais essas três, Iroha. Eu juro que um dia vou ensinar uma lição pra elas" },
    { nome = "Iroha Tachibana", texto = "Não vamos deixar elas estragarem nossa viagem, vem, vamos pro outro lado" },
    { nome = "Naomi",           texto = "Que meninas desagradáveis... mas sim, você tem razão" },
    { nome = "Iroha Tachibana", texto = "É, Naomi, vamos esquecer isso." },
    { nome = "Iroha Tachibana", texto = "Ah, olha, é o Kenji" },
    { nome = "Naomi",           texto = "Ué, mas ele tá sozinho, será que o Takashi não vai vir pra viagem mais legal do ano?" },
    { nome = "Iroha Tachibana", texto = "Nossa, é verdade." },
    { nome = "Naomi",           texto = "Vamos perguntar pra ele" },
    -- param e conversam com o Kenji
    { nome = "Naomi", texto="Ah! Bom dia, Kenji!" },
    { nome = "Kenji", texto="Bom dia, Naomi. Bom dia, Iroha." },
    { nome = "Iroha Tachibana", texto="B-bom d-dia!" },
    { nome = "Naomi", texto="Calma, amiga. Não precisa gaguejar. O Kenji não vai te morder." },
    { nome = "Iroha Tachibana", texto="*Respira fundo* Bom dia, Kenji! Tudo bom?" },
    { nome = "Kenji", texto="Estou ótimo. E você?" },
    { nome = "Iroha Tachibana", texto="Bem também. Obrigada por perguntar." },
    { nome = "Naomi", texto="Perfeito! Viu só? Não precisa ter medo de falar com outras pessoas." },
    { nome = "Iroha Tachibana", texto="Você tem razão. Ainda bem que te conheço desde a infância, ou nem com você eu conseguiria falar." },
    { nome = "Kenji", texto="Você só precisa tornar isso um hábito." },
    { nome = "Naomi",           texto = "Exatamente. E teremos muitas pessoas para falar em Kamakura." },
    { nome = "Naomi",           texto = "Ei Kenji, cadê o Takashi? Ele não vem?" },
    { nome = "Naomi",           texto = "Ah, aquele tapado perdeu o horário, mas ele virá sim" },
    { nome = "Kaede", texto="Atenção! O reparo no ônibus terminou." },
    { nome = "Naomi", texto="Paramos pra conversar e eu esqueci que queria comprar uns lanchinhos ali na máquina de vendas." },
    { nome = "Naomi", texto="Vamos lá, Iroha. Até mais, Kenji!" },
    { nome = "Iroha Tachibana", texto="Tchau, Kenji." },
    { nome = "Kenji", texto="Até mais, meninas." },
    { nome = "Kenji", texto="(Takashi vai odiar saber que a Naomi veio falar comigo.)" }, -- monólogo interno
    { nome = "Kaede", texto="Vou fazer a chamada e quem eu chamar, vai entrando no ônibus." },
    -- ver nomes melhores e talvez alguma arte genérica tipo sombra
    -- Mio e Kimiko abaixo
    { nome = "Kaede", texto="Akemi." },
    { nome = "Kaede", texto="Akihiko." },
    { nome = "Kaede", texto="*Fala nomes*" },
    { nome = "Kaede", texto="Iroha." },
    { nome = "Iroha Tachibana", texto="Vou guardar lugar pra você na parte de trás, Naomi." },
    { nome = "Naomi", texto="Tá bom." },
    { nome = "Kaede", texto="*Fala nomes*" },
    { nome = "Kaede", texto="Kenji." },
    { nome = "Kenji", texto="(Droga! Preciso enrolar pro Takashi chegar.)" }, -- monólogo interno
    { nome = "Kenji", texto="Eu... eu preciso ir ao banhei-" },
    { nome = "Kimiko", texto="Faz cerca de meia hora que estamos esperando o ônibus estar pronto e só agora você quer ir ao banheiro?" },
    { nome = "Kenji", texto ="Bom, é que..."},
    { nome = "Kimiko", texto="Admiro o seu amigo nerd. Viu que seria um incômodo e decidiu ficar em casa." },
    { nome = "Mio", texto="Por que você não fez igual ao teu amigo e ficou em casa também?" },
    { nome = "Mio", texto="Entra logo nesse ônibus!" },
    { nome = "Mio", texto="*Mandei bem, Kimi-chan?*" }, -- cochicho
    { nome = "Kimiko", texto="*suspiro* Só vai logo ao banheiro." },
    { nome = "Kaede", texto="Calma! Não precisam brigar com ele, meninas. Todos nós estamos empolgados pela viagem." },
    { nome = "Kaede", texto="Vai logo ao banheiro, Kenji. Nós te esperamos." },
    { nome = "Kenji", texto="Eu já volto." },
    { nome = "Mio", texto="Eu recebi umas ligações mais cedo. Já que temos que esperar por esse imbecil, vou retornar a ligação." },
    { nome = "Mio", texto="Só vou me afastar um pouco por causa do barulho." },
    { nome = "Kimiko", texto="Certo." },
    -- correndo a caminho do banheiro
    { nome = "Kenji", texto="O Takashi me deve e muito por tudo isso." },
    { nome = "Kenji", texto="Vamos. Atende logo!" },
    { nome = "Takashi", texto="Opa!" }, -- no celular
    { nome = "Kenji", texto="Que 'opa!' o quê?! Chegue logo! Até levei esporro daquelas duas metidas." }, -- no celular por ligação
    { nome = "Takashi", texto="Kimiko e Mio? Que se dane essas duas." }, -- no celular por ligação
    { nome = "Takashi", texto="Já estou no portão da escola." }, -- no celular por ligação
    { nome = "Kenji", texto="Beleza. Vou sair do banheiro e ir para o ônibus. Vou guardar teu lugar lá." }, -- no celular por ligação
    { nome = "Takashi", texto="Que lugar? A cama de casal que eu vou dormir com a Naomi?" }, -- no celular por ligação
    { nome = "Kenji", texto="Sem comentários...Desligando." }, -- no celular por ligação
    { nome = "Kenji", texto="(Espero que não impliquem comigo de novo no ôni-)" }, -- monólogo interno
    { nome = "Kenji", texto="(Hã? O que a Mio está fazendo ali?)" }, -- monólogo interno
    { nome = "Kenji", texto="(Não era pra ela estar dentro do ônibus?)" }, -- monólogo interno
    -- Sobre a Mio. Alterar depois caso necessário
    { nome = "Mio", texto="Ah! Obrigada, pai. Você é um anjo!" }, -- no celular por ligação
    { nome = "Mio", texto="Pode deixar que quando eu chegar lá, ligo para o senhor. Não me esquecerei também da sua lembrancinha." }, -- no celular por ligação
    { nome = "Mio", texto="Beijos. Também te amo!" }, -- no celular por ligação
    { nome = "Kenji", texto="Viu só? Se eu não tivesse ido ao banheiro, você não teria falado com seu pai no celular." },
    { nome = "Mio", texto="D-Desde quando você está ouvindo?" },
    { nome = "Mio", texto="E eu poderia atender ao celular no ônibus, sabia?" },
    { nome = "Kenji", texto="Então por que se afastou pra falar no celular?" },
    { nome = "Mio", texto="Por causa do barulho. Não é óbvio?" },
    { nome = "Kenji", texto="Sei lá. Você parecia uma pessoa bem diferente na ligação." },
    { nome = "Mio", texto="Do que você está falando?" },
    { nome = "Kenji", texto="Estou falando que você seria mais popular se agisse mais como você mesma e menos como a Kimiko." },
    { nome = "Mio", texto="DO QUE VOCÊ ESTÁ FALANDO?! Eu não estou imitando ela." },
    { nome = "Kenji", texto="Ok. Só quero que saiba que ela é um péssimo exemplo." },
    { nome = "Mio", texto="Cala essa boca e vai logo pro ônibus!" },
    { nome = "Kenji", texto="O ônibus não vai sair sem você também, 'princesa'. Então vamos logo." },
    -- no ônibus
    { nome = "Kaede", texto="Escolha um lugar e sente-se.", bg="bus"},
    { nome = "Takashi", texto="Aqui! Chega mais, meu consagrado." },
    { nome = "Takashi", texto="Reclamou tanto e no final eu ainda tive que ficar te esperando." },
    { nome = "Kenji", texto="Ah! Tive uns imprevistos enquanto voltava pro ônibus." },
    { nome = "Takashi", texto="Tipo o quê? Tua menstruação desceu?" },
    { nome = "Kenji", texto="Cala essa boca." },
    { nome = "Takashi", texto="Cara, essa pode ser a grande oportunidade que eu estava esperando." },
    { nome = "Takashi", texto="Cinco dias em Kamakura. Cinco dias e noites podendo ver minha Naomi-chan." }, -- ajustar o tempo se necessário
    { nome = "Takashi", texto="E você? Quando vai tomar vergonha na cara e se apaixonar novamente?" },
    -- pode mudar motivo depois (abaixo)
    { nome = "Kenji", texto="Ah! Tudo tem seu tempo, cara. Depois daquilo que aconteceu na nossa excursão da oitava série..." },
    { nome = "Takashi", texto="Qual foi, cara? Isso é passado. Não é porque uma te deu o pé na bunda que todas irão." },
    { nome = "Takashi", texto="Por exemplo, eu sempre fui rejeitado. Isso quer dizer que serei rejeitado pela Naomi-chan? Não responda!" },
    { nome = "Kenji", texto="É. Você tem razão. Talvez as coisas mudem pra mim." },
    { nome = "Takashi", texto="É assim que se fala, meu chegado!" },
    { nome = "Takashi", texto="Quando estivermos nesse ônibus de novo, voltando pra casa, vamos estar rindo à toa por tudo o que aconteceu com a gente na viagem." },
    { nome = "Takashi", texto="Não deixe que um trauma te assombre pelo resto da vida." },
    -- monólogo interno abaixo
    { nome = "Kenji", texto="(Odeio concordar com o Takashi, mas ele tem razão.)" },
    { nome = "Kenji", texto="(Não é porque a Hanako destruiu meu coração que eu tenho que desistir de ter uma namorada.)" },
    { nome = "Kenji", texto="(Mas... mas eu confesso que aquelas palavras ainda me machucam.)" },
    -- pensamento do passado ainda dentro do monólogo
    -- mudar essa história do passado depois. Só inventei uma desculpa pra avançar a história.
    { nome = "Kenji", texto="(Droga! Vou me atrasar. Minha namorada está me esperando na praia.)", bg="fiap"},
    { nome = "Kenji", texto="(Essa excursão veio em ótima hora. Tem vários lugares ótimos pra se ter um encontro aqui em Hokkaido.)" },
    { nome = "Kenji", texto="(Preciso aproveitar ao máximo pra aprofundar minha relação com a Hanako.)" },
    { nome = "Kenji", texto="(Oi, meu amor. Desculpa te fazer esperar.)", bg="praia"}, -- bg temporário
    { nome ="Kenji", texto="Tem vários lugares que eu queria visitar com vo-"},
    { nome = "Hanako", texto="(Estou cansada de você. Quero terminar.)" },
    { nome = "Kenji", texto="(Mas... Mas por quê?)"},
    { nome = "Hanako", texto="(Só me deixe em paz. Nunca mais apareça na minha vida!)" },
    { nome = "Hanako", texto="(Eu te odeio.)" },
    -- fim do pensamento do passado
    { nome = "Kenji", texto="(Isso nunca saiu da minha cabeça.)", bg="bus"},
    { nome = "Kenji", texto="(Até hoje não entendo o motivo de ela ter dito aquilo. Eu não sei o que fiz de errado.)"},
    -- fim do monólogo interno
    { nome = "Takashi", texto="Acorda, cara. Tá dormindo acordado?" },
    { nome = "Kenji", texto="Ah! Foi mal. O que tu estava falando?" },
    { nome = "Takashi", texto="De mulher, ué. Eu só sei falar disso e de bolo." },
    { nome = "Kenji", texto="Entendível." },
    { nome = "Takashi", texto="Enfim, terá várias gatinhas pra gente ficar de olho em Kamakura." },
    { nome = "Takashi", texto="Claro que a Naomi-chan é minha prioridade, mas é sempre bom ter um plano B." },
    { nome = "Kenji", texto="Boa sorte! Vai precisar. E muita." },
    { nome = "Takashi", texto="NÃO ACREDITA NO MEU POTENCIAL? EU VOU CONSEGUIR UMA NAMORADA E ESFREGAR ISSO NA SUA CARA." }, -- falou alto
    -- Kimiko e Mio falando abaixo
    { nome = "Kimiko", texto="Cala essa boca, nerdão. A única mulher que olha pra você é sua mãe. Isso se ela não te abandonou." },
    { nome = "Takashi", texto="Ei! Tem a minha avó também." },
    { nome = "Mio", texto="Kimi-chan, o Junpei me mandou mensagem pedindo pra você desbloquear ele." },
    { nome = "Kimiko", texto="Ah! Já cansei desse." },
    { nome = "Kimiko", texto="Com certeza tem garotos bem melhores em Kamakura." },
    -- fim das falas da Kimiko e Mio
    { nome = "Kenji", texto="(Essa aí troca de namorado que nem troca de calcinha.)" }, -- monólogo interno
    { nome = "Kenji", texto="(Bom... Eu acho que ela troca de calcinha com frequência...)" }, -- monólogo interno
    { nome = "Kaede", texto="Vamos partir agora. Peço para que se comportem durante a viagem." },
    { nome = "Kenji", texto = "(Sinto que essa viagem será inesquecível.)" },-- monólogo interno
    { nome = "Kenji", texto = "(As paisagens e a comida são coisas excelentes que terei em Kamakura.)" },-- monólogo interno
    { nome = "Kenji", texto = "(Mas eu não sei. Eu sinto que...)" },-- monólogo interno
    { nome = "Kenji", texto = "(Eu sinto que essa viagem irá mudar minha vida para sempre.)" },-- monólogo interno
    -- aqui começa o gancho para as escolhas do capítulo 1
    { nome = "Takashi", texto = "Você não pode ficar se limitando por causa do passado. Especialmente porque temos várias gatinhas na nossa turma." },
    { nome = "Takashi", texto = "Olha em volta. Tem certeza que nenhuma te atrai?" },
    -- Aparece aqui uma breve descrição de um narrador falando sobre as escolhas e depois pede pra escolher
    { nome = "Takashi", texto = "Me fala aí, quem você gostaria que estivesse sentada aqui no meu lugar agora?", som="cute-giggle" },
    -- ôninus parte
    -- aparece imagem do ônibus de cima e o nome do jogo
    -- aparece "algumas horas depois"
    -- eles chegam e fim de capítulo
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },

}

-- Interações GLOBAIS (aparecem independente da rota)
chapter_0.interacoes = {
    [153] = { -- ESCOLHA DE ROTA - índice do diálogo onde a interação aparece
        nome_personagem = "Takashi",
        tipo = "escolha_rota", -- Marca que essa interação define a rota
        opcoes = {
            "Kimiko-chan",  -- Opção 1 -> Rota 1
            "Mio-chan",     -- Opção 2 -> Rota 2
            "Naomi-chan",   -- Opção 3 -> Rota 3
            "Iroha-chan"    -- Opção 4 -> Rota 4
        },
        respostas = {
            "A KIMIKO??",
            "Ah, então você gosta da Mio",
            "Ah, então você também gosta da Naomi-chan, está tentando me passar para trás é?",
            "Ah... Então é das tímidas que você gosta?"
        },
        rotas = {1, 2, 3, 4} -- Mapeia cada opção para uma rota
    }
}

-- Sistema de Rotas
chapter_0.rotas = {
    -- ROTA 1: Kimiko
    [1] = {
        { nome = "Takashi", texto = "Você só gosta de mulher maluca, eu hein!" },
        { nome = "Kenji",   texto = "Shhh! fala baixo, seu escandaloso." },
        { nome = "Kenji",   texto="Sim. A Kimiko faz mais o meu tipo. Não sei explicar, mas tem algo nessa mulher que me chama muito a atenção." },
        { nome = "Kimiko",  texto = "Eu sou maluca?" },
        { nome = "Kenji",   texto = "Eh... Oi, Kimiko. Desculpa o meu amigo idiota, ele só estava pensando alto." },
        { nome = "Kenji",   texto = "Até que parte você ouviu da conversa?" },
        { nome = "Kimiko",  texto = "Só ouvi o grito desse esquisito." },
        { nome = "Takashi", texto = "Me-me desculpa, Kimiko, o que eu quis dizer é que..." },
        { nome = "Kimiko",  texto = "Cala essa boca, filhote de cruz credo. Não quero ouvir você latindo no meu ouvido." },
        { nome = "Takashi", texto = "..." },
        { nome = "Kimiko",  texto = "Agora levanta e vai sentar em outro lugar, eu quero falar com o Kenji" },
        { nome = "Kimiko",  texto = "Em particular." },
        { nome = "Kenji",   texto = "..." },
        { nome = "Kenji",   texto = "Senta ali atrás, Takashi. Tem dois bancos vazios. Depois a gente conversa." },
        { nome = "Takashi", texto = "Tá bom, tá bom." },
        { nome = "Kimiko",  texto = "Enfim, longe desse ser patético." },
        { nome = "Kimiko",  texto = "Você deveria parar de andar com gente assim, senão todas as meninas vão pensar que você é esquisito igual a ele." },
        -- interação 1
        { nome = "Kenji",   texto = "Mas então... o que você quer falar comigo?" },
        { nome = "Kimiko",  texto = "Eu ouvi você falando que gosta de mim." },
    },

    -- ROTA 2: Mio
    [2] = {
        { nome = "Kenji",   texto=  "Sim. A Mio faz mais o meu tipo. Ela é muito gata." },
        { nome = "Takashi", texto = "Ela é linda, mas tão burrinha..." },
        { nome = "Takashi", texto = "Eu estudei no fundamental com ela, e vi a inteligência negativa dessa menina de perto muitas vezes." },
        { nome = "Kenji",   texto = "Ei! Não fala assim dela. Ninguém é tão esperto assim com essa idade." },
        { nome = "Takashi", texto = "Não, cara. Você não tá entendendo." },
        { nome = "Takashi", texto = "Se liga só. Vou te mostrar o que eu to falando." },
        { nome = "Kenji",   texto = "Ei, Kimiko." },
        { nome = "Kimiko",  texto = "O que você quer?" },
        { nome = "Takashi", texto = "Chama a Mio pra mim, por favor?" },
        { nome = "Takashi", texto = "Mio, você lembra da pergunta 7 na prova de ontem da Kaede-sensei? Aquela sobre o que é a cadeia alimentar?" },
        { nome = "Takashi", texto = "O que você respondeu nela? Eu quero ver se eu e o Kenji acertamos." },
        { nome = "Mio",     texto = "Ah, essa eu tenho certeza que eu acertei!" },
        { nome = "Mio",     texto = "Eu respondi que a cadeia alimentar é o lugar para onde os presos gordos vão, e lá a punição deles consiste em dieta rigorosa e exercício físico." },
        { nome = "Takashi", texto = "Ah sim... faz sentido Mio, eu respondi algo parecido, obrigado!" },
        { nome = "Takashi", texto = "E aí, o que eu te falei?" },
        { nome = "Kenji",   texto = "Caramba..." },
        { nome = "Takashi", texto = "Eu aposto que com uma lábia boa, você consegue pegar ela." },
        { nome = "Takashi", texto = "Deixa que eu te ajudo nessa, amigão." },
        { nome = "Kenji",   texto = "Ei, Takashi. O que você vai fazer?" },
        { nome = "Takashi", texto = "Mio, você pode dar mais dicas de biologia pro Kenji aqui? Ele tá com muito medo de não passar na prova final de semana que vem e repetir o ano." },
        { nome = "Mio",     texto = "Claro! Eu ajudo sim!" },
        { nome = "Mio",     texto = "Eu já volto, Kimiko. Tá bom?" },
        { nome = "Kimiko",  texto = "Vai lá, mas não fica muito tempo perto desses moleques esquisitos, vai te fazer mal." },
        { nome = "Mio",     texto = "Eu só vou dar uma ajudinha pro Kenji. Tadinho dele." },
    },

    -- ROTA 3: Naomi

    [3] = {
        {nome = "Kenji", texto = "(Eu sei que esse idiota gosta da Naomi. Estou percebendo uma oportunidade aqui...)"}, -- Pensamento
        {nome = "Kenji", texto="Sim. A Naomi faz mais o meu tipo. Ela é muito gata."},
        {nome = "Takashi", texto="Ah! então somos rivais, meu caro. Tire os seus olhos da minha futura esposa."},
        {nome = "Kenji", texto ="Foi você queM perguntou, cara. estou sendo sincero aqui, mas, se tivermos que competir, que vença o melhor!"},
        {nome = "Takashi", texto ="Dúvido que você saiba qual é o mangá favorito dela."},
        {nome = "Kenji", texto = "Você deve ser um psicopata para saber disso... \nMas então... qual é?"},
        {nome = "Takashi", texto = "Acha mesmo que irei dar uma informação importante dessas fácil assim logo para meu rival? hahaha!"},
        {nome = "Kenji", texto = "Bem, eu sei que ela gosta de basquete, aliás, comecei a ler recentemente Slam Dunk por causa disso."},
        {nome = "Takashi", texto = "Aaa... hmmm... eh... ela deve gostar mesmo de Slam dunk, mas não acho que seja o mangá favorito dela, cara. Acho melhor nem tentar."},
        {nome = "Naomi", texto = "Eii! Estou ouvindo alguém falando de Slam Dunk. Quem é que tem esse excelente gosto por mangás?"},
        {nome = "Kenji", texto = "'*Acho melhor nem tentar*' né, meu caro amigo?"}, --Cochichando
        {nome = "Kenji", texto = "Oi! Estava falando pro meu amigo que comecei a ler Slam Dunk há pouco tempo. Estou gostando muito. Você também é uma fã?"},
        {nome = "Naomi", texto = "Mas é claro! É o melhor mangá de todos os tempos para mim. Foi ele que popularizou o esporte no Japão. Você está em que parte?"},
        -- INTERAÇÃO índice 27 (13 comuns + 1 resposta + 13 da rota = 27)
        {nome = "Kenji", texto = "Não quer discutir um pouco da história comigo até chegarmos lá? Seria legal comentar sobre o mangá com uma especialista como você."},
        {nome = "Naomi", texto = "Até que não seria má idéia.\nEi, Iroha, se importa que eu troque de lugar com o Takashi?"},
        {nome = "Naomi", texto = "E Takashi, é claro, se importaria de trocar de lugar comigo também?"},
        {nome = "Iroha Tachibana", texto = "Ah, claro. Sem problemas, Naomi-chan."},
        {nome = "Takashi", texto = "Mas que miserável! Não é que você conseguiu desta vez? Mas não irei desistir. Ainda me casarei com essa mulher."}, --cochichando
        {nome = "Takashi", texto = "Não sei, Naomi-chan. Meu banco está uma porcaria. Suas costas vão ficar doendo."},
        {nome = "Naomi", texto = "Ah! Não tem problema. O meu também está assim. Aliás, eu duvido que o seu esteja pior. hahaha!"},
        {nome = "Kenji", texto = "Eu posso trocar de lugar com ela depois. Deixo ela na janela e eu sento aí no seu lugar. :D"},
        {nome = "Takashi", texto = "Ah... hmm... eh... hahaha! Ok. Então, eu troco com você, Naomi."},
        ---Narrador diz que ambos trocam de lugar, e ao sentar, Takashi ja diz:
        {nome = "Takashi", texto = "Puta que pariu! Mas que merda! Caralho! Não é que esse lugar está uma porcaria mesmo?!"},
        {nome = "Iroha Tachibana", texto = "..."}, --procede a por o fone de ouvido
        ----- continuar
    },

    -- ROTA 4: Iroha
    [4] = {
        {nome = "Kenji", texto="Sim. A Iroha faz mais o meu tipo. Ela é muito fofa e gata."},
        {nome = "Takashi", texto="Eu adoraria rir da sua cara depois de tomar um fora, então vou te ajudar."},
        {nome = "Kenji", texto="Como você pretende fazer isso?"},
        {nome = "Takashi", texto="Só observe e aprenda com o mestre."},
        {nome = "Takashi", texto="Kaede-sensei, eu estou com náuseas. Posso trocar de lugar com a Iroha-chan? Ela está sentada perto da janela pro lado da floresta."},
        {nome = "Takashi", texto="Se eu trocar de lugar com o Kenji, eu vou vomitar em um carro."},
        {nome = "Kaede", texto="Ah! Tudo bem. Troca de lugar com ele, Iroha. Por favor."},
        {nome = "Iroha Tachibana", texto="Ah! É que eu estou com minha amiga e gosto de ficar perto da janela olhando para a natureza. Não pode ser outra pessoa?"},
        {nome = "Kaede", texto="Está bem. Vou ver com a Kimiko."},
        {nome = "Takashi", texto="Ah! Não! É que... eu gosto mais de sentar na parte de trás do ônibus."},
        {nome = "Kaede", texto= "Troca com ele então, Iroha. Na volta eu prometo que te deixo sentar pro lado da melhor vista pela janela."},
        {nome ="Iroha Tachibana", texto="Está bem. Vamos trocar de lugar então."},
        {nome ="Kenji", texto="Te devo uma, meu consagrado."},
        {nome ="Takashi", texto="Relaxa. As risadas que darei de você já pagarão o favor."},
        {nome ="Iroha Tachibana", texto="Oi. Espero que não se incomode em eu estar sentada aqui."},
        {nome ="Kenji", texto="Que nada! Desculpe pelo meu amigo. Ele tem cinetose."},
        {nome ="Iroha Tachibana", texto="E eu não tenho ideia do que significa isso. O que é cinetose?"},
        -- INTERAÇÃO índice 30 (13 comuns + 1 resposta + 20 da rota = 34)
        {nome ="Iroha Tachibana", texto="E então? Está animado pela viagem?"},
        {nome ="Kenji", texto="Estou. Essa é a última excursão do segundo ano. Já já estaremos no terceiro ano. O tempo passa rápido e eu quero aproveitar ao máximo."},
        {nome ="Iroha Tachibana", texto="Verdade. Como planeja aproveitar ao máximo a viagem?"},
        {nome ="Kenji", texto="Ah... eh... Rindo bastante do Takashi vomitando dentro do ônibus."},
        {nome = "Takashi", texto="blaarrrgh!", som="puke"},
        {nome = "Kenji", texto="Obrigado por existir, cinetose. Você é muito foda!"},
        {nome = "Takashi", texto ="Eu sei o que você está pensando, seu filho da... blaaaarrrgh", som="puke"},
        {nome ="Iroha Tachibana", texto="Coitado do seu amigo. Será que ele ficará bem?"},
        {nome = "Kenji", texto="Ah! Relaxa. Se morrer, a vida continua. Brincadeira. Ele ficará bem."},
        {nome = "Kenji", texto="Mas e você? Ansiosa pela nossa última excursão escolar do segundo ano?"},
        {nome = "Iroha Tachibana", texto="Eu tenho tentado mudar. Naomi é a minha única amiga e até ela diz que eu preciso ser mais social."},
        {nome = "Iroha Tachibana", texto="Acho que essa excursão vai ser um grande desafio para mim."},
        -- interacao 3
        {nome = "Kenji", texto="Podemos sim. Falando nisso, quais lugares em Kamakura você mais quer visitar?", som="hmmm"},
        {nome = "Iroha Tachibana", texto="A Floresta de Bambus, lá no Templo Hokoku-ji. Já vi fotos e parece um lugar lindo."},
        {nome="Iroha Tachibana", texto="Uau! Olha ali!"},
        {nome ="Iroha Tachibana", texto="Parece que estamos chegando no nosso hotel."},
        {nome = "Iroha Tachibana", texto="Mas e você, Kenji? O que está mais ansioso para visitar em Kamakura?"},
        -- interacao 4
        {nome ="Kenji", texto="Parece que chegamos."},
        {nome = "Kaede", texto="Atenção, alunos. Chegamos em Kamakura. Peço para que dos que estão mais na frente saiam primeiro e em ordem. Sem baderna. Ouviram?"},
        {nome = "Kaede", texto="Está se sentindo melhor, Takashi?"},
        {nome = "Takashi", texto="Acho que sim, Kaede-sensei."},
        {nome = "Kaede", texto="Ótimo. Kenji, ajude o seu amigo a chegar até o hotel."},
        {nome = "Kenji", texto="Ok, Kaede-sensei. Nos falamos outra hora, Iroha."},
        {nome = "Kenji", texto="Foi legal passar esse tempo conversando com você."},
        {nome="Iroha Tachibana", texto="Digo o mesmo. Até mais tarde, Kenji-kun."}
    }
}

-- Interações ESPECÍFICAS POR ROTA (só aparecem na rota indicada)
-- Estrutura: interacoes_por_rota[numero_da_rota][indice_do_dialogo] = {...}
chapter_0.interacoes_por_rota = {
    -- Rota 1: Kimiko
    [1] = {
        -- Adicione interações específicas da rota Kimiko aqui
    },

    -- Rota 2: Mio
    [2] = {
        -- Adicione interações específicas da rota Mio aqui
    },

    -- Rota 3: Naomi
    [3] = {
        -- Adicione interações específicas da rota Naomi aqui
        [167] = { -- Interação capítulo de Slam Dunk (Só na rota 3: Naomi)
            nome_personagem = "Naomi",
            opcoes = {
               "Estou no 3° volume ainda, estou gostando dos personagens e do rumo da história", -- (sincero)
               "Estou na parte em que eles estão na final do Nacional !", -- (mentir)
               "Na verdade, só falei isso para você se interessar em mim, sentar aqui do meu lado, e a gente dar uns amassos." -- (meter o loko)
            },
            respostas = {
                "Ah, que legal, então você começou a pouco tempo, espero que continue lendo, tenho certeza que vai adorar o desenvolvimento do Sakuragi e dos outros",
                "Hmmm, tem certeza que estamos falando do mesmo mangá? Não é kuroko no basket?",
                "Admiro sua falta de vergonha na cara, mas... KAEDE SENSEI, UM TARADO !!!"
            }
        }
    },

    -- Rota 4: Iroha
    [4] = {
        [171] = { -- Interação sobre cinetose (SÓ na Rota 4: Iroha)
            nome_personagem = "Iroha Tachibana",
            opcoes = {
                "A cinetose é um distúrbio neurofisiológico provocado por um conflito sensorial entre diferentes sistemas responsáveis pela percepção de movimento e orientação espacial.",
                "É basicamente a sensação de enjoo enquanto está em algum veículo.",
                "Eu também não sei. Ele fala que tem isso e eu só repito.",
            },
            respostas = {
                "Ah... Eu... Eu não entendi ainda assim. Enfim, deixa pra lá.",
                "Ah! Obrigada por me explicar. Não conhecia essa palavra.",
                "Hahahaha! Eu não esperava por essa."
            }
        },
        [183] = { -- índice do diálogo onde a interação aparece
            nome_personagem = "Iroha Tachibana", -- quem responde
            opcoes = {
                "Bom, podemos tentar conversar mais daqui pra frente, se quiser. Podemos ser amigos.",
                "Ah! Não se preocupe. Você conseguirá fazer amigos.",
                "E a Kimiko? Achei que ela fosse sua amiga.",
            },
            respostas = {
                "Seria ótimo! Podemos até visitar juntos alguns lugares em Kamakura.",
                "Obrigada. Espero que essa viagem seja ótima para nós dois.",
                "Na verdade, ela não é minha amiga... Vamos falar de outra coisa."
            }
        },
        [190] = { -- índice do diálogo onde a interação aparece
            nome_personagem = "Iroha Tachibana", -- quem responde
            opcoes = {
                "O Templo Hokoku-ji.",
                "A Praia de Yuigahama.",
                "O seu coração.",
            },
            respostas = {
                "Ah! Podemos visitar juntos, se quiser.",
                "Não sou muito de praia, mas faz parte do roteiro de excursão da turma.",
                "Ei! P-Pare de brincar com isso!"
            }
        }
    }
}

return chapter_0
