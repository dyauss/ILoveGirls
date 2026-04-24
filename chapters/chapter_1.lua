local chapter_1 = {}

-- Diálogos comuns a todas as rotas (antes da escolha)
chapter_1.dialogos_comuns = {
    { nome = "Kenji", texto = "Ah... mais uma dessas excursões escolares chatas. Não aguento mais isso."},
    { nome = "Kenji", texto = "Ainda bem que esse é nosso último ano."},
    { nome = "Kenji", texto = "Será que dessa vez vai acontecer algo diferente?"},
    { nome = "Kenji", texto = "Mais uma vez saindo com os mesmos caras idiotas."},
    { nome = "Kenji", texto = "Cadê as gatinhas?"},
    { nome = "Takashi", texto = "E aí, Kenji, pensando em mulher de novo?"},
    { nome = "Kenji", texto = "Claro, e você não?"},
    { nome = "Takashi", texto = "Nem me fale... Cara, eu faria de tudo pra ter uma gatinha sentada no seu lugar, pra ir do meu ladinho a viagem inteira."},
    { nome = "Takashi", texto = "Como eu queria que a Naomi-chan estivesse aqui."},
    { nome = "Takashi", texto = "Eu não tiraria os olhos das coxas dela nem por um minuto."},
    { nome = "Kenji", texto = "Você é um pervertido mesmo. Não tem jeito, né?"},
    { nome = "Takashi", texto = "Até parece que você não faria o mesmo ou até pior."},
    { nome = "Takashi", texto = "Mas me fala aí, quem você gostaria que estivesse sentada aqui no meu lugar agora?" },
    -- ESCOLHA DE ROTA (interação índice 13)
}

-- Sistema de Rotas
chapter_1.rotas = {
    -- ROTA 1: Kimiko
    [1] = {
        { nome = "Takashi", texto = "Você só gosta de mulher maluca, eu hein" },
        { nome = "Kenji",   texto = "Shhh fala baixo seu escandaloso" },
        { nome = "Kenji", texto="Sim. A Kimiko faz mais o meu tipo. Não sei explicar, mas tem algo nessa mulher que me chama muito a atenção." },
        { nome = "Kimiko",  texto = "Eu sou maluca?" },
        { nome = "Kenji",   texto = "Eh... Oi, Kimiko. Desculpa o meu amigo idiota, ele só estava pensando alto" },
        { nome = "Kenji",   texto = "Até que parte você ouviu da conversa?" },
        { nome = "Kimiko",  texto = "Só ouvi o grito desse esquisito" },
        { nome = "Takashi", texto = "Me-me desculpa, Kimiko, o que eu quis dizer é que..." },
        { nome = "Kimiko",  texto = "Cala essa boca, filhote de cruz credo. Não quero ouvir você latindo no meu ouvido" },
        { nome = "Takashi", texto = "..." },
        { nome = "Kimiko",  texto = "Agora levanta e vai sentar em outro lugar, eu quero falar com o Kenji" },
        { nome = "Kimiko",  texto = "Em particular" },
        { nome = "Kenji",   texto = "..." },
        { nome = "Kenji",   texto = "Senta ali atrás Takashi, tem dois bancos vazios. Depois a gente conversa" },
        { nome = "Takashi", texto = "Tá bom, tá bom" },
        { nome = "Kimiko",  texto = "Enfim longe desse ser patético" },
        { nome = "Kimiko",  texto = "Você deveria parar de andar com gente assim, se não todas as meninas vão pensar que você é esquisito igual a ele" },
        -- interação 1
        { nome = "Kenji",   texto = "Mas então... o que você quer falar comigo?" },
        { nome = "Kimiko",  texto = "Eu ouvi você falando que gosta de mim" },
    },

    -- ROTA 2: Mio
    [2] = {
        { nome = "Kenji", texto="Sim. A Mio faz mais o meu tipo. Ela é muito gata." },
        { nome = "Takashi", texto = "Ela é linda, mas tão burrinha" },
        { nome = "Takashi", texto = "Eu estudei no fundamental com ela, e vi a inteligência negativa dessa menina de perto muitas vezes" },
        { nome = "Kenji",   texto = "Ei, não fala assim dela, ninguém é tão esperto assim com essa idade" },
        { nome = "Takashi", texto = "Não, cara, você não tá entendendo" },
        { nome = "Takashi", texto = "Se liga só, vou te mostrar o que eu to falando" },
        { nome = "Kenji",   texto = "Ei, Kimiko" },
        { nome = "Kimiko",  texto = "O que você quer?" },
        { nome = "Takashi", texto = "Chama a Mio pra mim, por favor?" },
        { nome = "Takashi", texto = "Mio, você lembra da pergunta 7 na prova de ontem da Kaede-sensei? Aquela sobre o que é a cadeia alimentar?" },
        { nome = "Takashi", texto = "O que você respondeu nela? Eu quero ver se eu e o Kenji acertamos" },
        { nome = "Mio",     texto = "Ah, essa eu tenho certeza que eu acertei!" },
        { nome = "Mio",     texto = "Eu respondi que a cadeia alimentar é o lugar para onde os presos gordos vão, e lá a punição deles consiste em dieta rigorosa e exercício físico" },
        { nome = "Takashi", texto = "Ah sim... faz sentido Mio, eu respondi algo parecido, obrigado!" },
        { nome = "Takashi", texto = "E aí, o que eu te falei?" },
        { nome = "Kenji",   texto = "Caramba..." },
        { nome = "Takashi", texto = "Eu aposto que com uma lábia boa, você consegue pegar ela" },
        { nome = "Takashi", texto = "Deixa que eu te ajudo nessa amigão" },
        { nome = "Kenji",   texto = "Ei, Takashi, o que você vai fazer?" },
        { nome = "Takashi", texto = "Mio, você pode dar mais dicas de biologia pro Kenji aqui? Ele tá com muito medo de não passar na prova final de semana que vem e repetir o ano" },
        { nome = "Mio",     texto = "Claro! Eu ajudo sim!" },
        { nome = "Mio",     texto = "Eu já volto, Kimiko. Tá bom?" },
        { nome = "Kimiko",  texto = "Vai lá, mas não fica muito tempo perto desses moleques esquisitos, vai te fazer mal" },
        { nome = "Mio",     texto = "Eu só vou dar uma ajudinha pro Kenji, tadinho dele." },
    },

    -- ROTA 3: Naomi

    [3] = {
        {nome = "Kenji", texto = "(Eu sei que esse idiota gosta da Naomi, estou percebendo uma oportunidade aqui...)"}, -- Pensamento
        {nome = "Kenji", texto="Sim. A Naomi faz mais o meu tipo. Ela é muito gata."},
        {nome = "Takashi", texto="Ah, então somos rivais meu caro. Tire os seus olhos da minha futura esposa."},
        {nome = "Kenji", texto ="Foi você que perguntou cara, estou sendo sincero aqui, mas, se tivermos que competir, que vença o melhor !"},
        {nome = "Takashi", texto ="Dúvido que você saiba qual é o mangá favorito dela"},
        {nome = "Kenji", texto = "Você deve ser um psicopata para saber disso... \nMas então... qual é?"},
        {nome = "Takashi", texto = "Acha mesmo que irei dar uma informação importante dessas fácil assim logo para meu rival? hahaha"},
        {nome = "Kenji", texto = "Bem, eu sei que ela gosta de basquete, aliás, comecei a ler recentemente Slam Dunk por causa disso"},
        {nome = "Takashi", texto = "Aaa, hmmm, é... ela deve gostar msm de Slam dunk, mas não acho que seja o mangá favorito dela cara, acho melhor nem tentar"},
        {nome = "Naomi", texto = "Eii ! Estou ouvindo alguém falando de Slam Dunk, quem é que tem esse excelente gosto por mangás?"},
        {nome = "Kenji", texto = "'*Acho melhor nem tentar*' né meu caro amigo?"}, --Cochichando
        {nome = "Kenji", texto = "Oi ! Estava discutindo com meu amigo que comecei a ler Slam Dunk a pouco tempo, e estou gostando muito, você também é uma fã?"},
        {nome = "Naomi", texto = "Mas é claro ! É o melhor mangá de todos os tempos para mim, foi ele que popularizou o esporte no Japão. Você está em que parte?"},
        -- INTERAÇÃO índice 27 (13 comuns + 1 resposta + 13 da rota = 27)
        {nome = "Kenji", texto = "Não quer discutir um pouco da história comigo até chegarmos lá, seria legal comentar sobre o mangá com uma especialista como você !"},
        {nome = "Naomi", texto = "Até que não seria má idéia.\nEi Iroha, se importa que eu troque de lugar com o Takashi?"},
        {nome = "Naomi", texto = "E Takashi, é claro, se importaria de trocar de lugar comigo também?"},
        {nome = "Iroha", texto = "Ah, claro, sem problemas Naomi-chan"},
        {nome = "Takashi", texto = "Mas que mizerável, não que você conseguiu desta vez, mas não irei desistir, ainda me casarei com essa mulher !!"}, --cochichando
        {nome = "Takashi", texto = "Não sei não Naomi-chan, meu banco está uma porcaria, suas costas vão ficar doendo"},
        {nome = "Naomi", texto = "Ahhh não tem problema, o meu também está assim, dúvido que o seu esteja pior alías hahaha"},
        {nome = "Kenji", texto = "É Takashi, aliás, eu posso trocar de lugar com ela, deixo ela na janela e eu sento ai no seu lugar. :D"},
        {nome = "Takashi", texto = "Ah, hmm, é, ah haha ok então, eu troco com você Naomi"},
        ---Narrador diz que ambos trocam de lugar, e ao sentar, Takashi ja diz:
        {nome = "Takashi", texto = "Puta que pariu, mas que merda, caralho, não é que esse lugar está uma porcaria mesmo"},
        {nome = "Iroha", texto = "..."}, --procede a por o fone de ouvido
        ----- continuar
    },

    -- ROTA 4: Iroha
    [4] = {
        {nome = "Kenji", texto="Sim. A Iroha faz mais o meu tipo. Ela é muito gata."},
        {nome = "Takashi", texto="Eu adoraria rir da sua cara depois de tomar um fora, então vou te ajudar."},
        {nome = "Kenji", texto="Como você pretende fazer isso?"},
        {nome = "Takashi", texto="Só observe e aprenda com o mestre."},
        {nome = "Takashi", texto="Kaede-sensei, eu estou com náuseas. Posso trocar de lugar com a Iroha-chan? Ela está sentada perto da janela pro lado da floresta."},
        {nome = "Takashi", texto="Se eu trocar de lugar com o Kenji, eu vou vomitar em um carro."},
        {nome = "Kaede", texto="Ah! Tudo bem. Troca de lugar com ele, Iroha. Por favor."},
        {nome = "Kaede", texto="Iroha? Iroha? Eu estou falando com você. Tire esse fone de ouvido."},
        {nome = "Iroha Tachibana", texto="Oi? D-desculpa. O que disse?"},
        {nome = "Kaede", texto="Eu pedi para que você trocasse de lugar com o Takashi."},
        {nome= "Iroha Tachibana", texto="Bom... É que eu queria olhar para a floresta. Não pode trocar com outra pessoa?"},
        {nome= "Iroha Tachibana", texto="Pra esse lado só tem uma vista sem graça da pista e prédios e eu nem estaria perto da janela."},
        {nome = "Takashi", texto="É que gosto mais de sentar na parte da frente. Por favor!"},
        {nome = "Kaede", texto= "Não seja assim, Iroha. Não custa nada. Na volta eu prometo que te deixo sentar pro lado da melhor vista pela janela."},
        {nome ="Iroha Tachibana", texto="Está bem. Vamos trocar de lugar então."},
        {nome ="Kenji", texto="Te devo uma, meu consagrado."},
        {nome ="Takashi", texto="Relaxa. As risadas que darei de você já pagarão o favor."},
        {nome ="Iroha Tachibana", texto="Oi. Espero que não se incomode em eu estar sentada aqui."},
        {nome ="Kenji", texto="Que nada! Desculpe pelo meu amigo, ele tem cinetose."},
        {nome ="Iroha Tachibana", texto="E eu não tenho ideia do que significa isso. O que é cinetose?"},
        -- INTERAÇÃO índice 30 (13 comuns + 1 resposta + 20 da rota = 34)
        {nome ="Iroha Tachibana", texto="E então? Está animado pela viagem?"},
        {nome ="Kenji", texto="Estou. Afinal, é a última excursão da nossa turma. Já já todos estaremos formados. Sinto que tenho que aproveitar ao máximo."},
        {nome ="Iroha Tachibana", texto="E como planeja aproveitar ao máximo a viagem?"},
        {nome ="Kenji", texto="Ah... eh... Rindo bastante do Takashi vomitando dentro do ônibus"},
        {nome = "Takashi", texto="blaarrrgh!"},
        {nome = "Kenji", texto="Obrigado por ter dado cinetose para o Takashi, Deus."},
        {nome = "Takashi", texto ="Eu sei o que você está pensando, seu filho da... blaaaarrrgh"},
        {nome ="Iroha Tachibana", texto="Coitado do seu amigo. Será que ele ficará bem?"},
        {nome = "Kenji", texto="Ah! Relaxa. Ele é assim desde que o conheço."},
        {nome = "Kenji", texto="Mas e você? Ansiosa pela nossa última excursão escolar?"},
        {nome = "Iroha Tachibana", texto="Eu tenho tentado mudar. Me sinto isolada por conta do meu jeito introvertido."},
        {nome = "Iroha Tachibana", texto="Acho que essa excursão vai ser um grande desafio para mim."},
        {nome = "Iroha Tachibana", texto="Preciso mudar para encarar a vida adulta."},
        -- interacao 3
        {nome = "Kenji", texto="Agora que tenho o seu número, podemos manter contato até depois de nos formarmos."},
        {nome = "Iroha Tachibana", texto="Sim. Seria ótimo."},
        {nome="Iroha Tachibana", texto="Uau! Olha ali."},
        {nome ="Iroha Tachibana", texto="Parece que estamos chegando em Kamakura. Confesso que não gosto muito de praia, mas estou ansiosa pra visitar o Templo Hokokuji."},
        {nome = "Iroha Tachibana", texto="E você, Kenji? O que está mais ansioso para visitar em Kamakura?"},
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

-- Interações GLOBAIS (aparecem independente da rota)
chapter_1.interacoes = {
    [13] = { -- ESCOLHA DE ROTA - índice do diálogo onde a interação aparece
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
            "Ah, então você gosta da Iroha"
        },
        rotas = {1, 2, 3, 4} -- Mapeia cada opção para uma rota
    }
}

-- Interações ESPECÍFICAS POR ROTA (só aparecem na rota indicada)
-- Estrutura: interacoes_por_rota[numero_da_rota][indice_do_dialogo] = {...}
chapter_1.interacoes_por_rota = {
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
        [27] = { -- Interação capítulo de Slam Dunk (Só na rota 3: Naomi)
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
        [34] = { -- Interação sobre cinetose (SÓ na Rota 4: Iroha)
            nome_personagem = "Iroha Tachibana",
            opcoes = {
                "A cinetose é um distúrbio neurofisiológico provocado por um conflito sensorial entre diferentes sistemas responsáveis pela percepção de movimento e orientação espacial.",
                "É basicamente a sensação de enjoo enquanto está em algum veículo.",
                "Você é extremamente burra. Me pergunto como você consegue ter a capacidade de entender o que eu estou falando. Conseguiu chegar aqui no ônibus sozinha?",
            },
            respostas = {
                "Ah... Eu... Eu não entendi ainda assim. Enfim, deixa pra lá.",
                "Ah! Obrigada por me explicar. Não conhecia essa palavra. Você é muito inteligente!",
                "Como você é grosseiro! Um completo babaca. Não fale mais comigo."
            }
        },
        [48] = { -- índice do diálogo onde a interação aparece
            nome_personagem = "Iroha Tachibana", -- quem responde
            opcoes = {
                "Bom, podemos manter contato, se quiser. Posso pegar seu número?",
                "Ah! Não se preocupe. Você conseguirá fazer amigos.",
                "E a Kimiko? Achei que ela fosse sua amiga.",
            },
            respostas = {
                "Claro. Podemos tentar sermos amigos. Aqui está meu número.",
                "Obrigada. Espero que essa viagem seja ótima para nós dois.",
                "Ela é uma babaca. Ela implica comigo desde a sexta série. Bom, não quero falar sobre isso agora."
            }
        },
        [54] = { -- índice do diálogo onde a interação aparece
            nome_personagem = "Iroha Tachibana", -- quem responde
            opcoes = {
                "O Templo Hokokuji",
                "A Praia de Yuigahama",
                "O vestiário feminino",
            },
            respostas = {
                "Ah! Podemos visitar juntos, se quiser.",
                "Bom, podemos dar uma volta na praia, apesar de eu não ser muito fã.",
                "TARADO"
            }
        }
    }
}

chapter_1.dialogos = chapter_1.dialogos_comuns

return chapter_1
