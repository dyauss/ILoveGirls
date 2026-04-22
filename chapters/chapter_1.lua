local chapter_1 = {}

-- Diálogos comuns a todas as rotas (antes da escolha)
chapter_1.dialogos_comuns = {
    { nome = "Kenji", texto = "Ah... mais uma dessas excursões escolares chatas, não aguento mais isso"},
    { nome = "Kenji", texto = "Ainda bem que esse é nosso último ano"},
    { nome = "Kenji", texto = "Será que dessa vez vai acontecer algo diferente?"},
    { nome = "Kenji", texto = "Mais uma vez saindo com os mesmos caras idiotas"},
    { nome = "Kenji", texto = "Cadê as gatinhas?"},
    { nome = "Takashi", texto = "E aí, Kenji, pensando em mulher de novo?"},
    { nome = "Kenji", texto = "Claro, e você não?"},
    { nome = "Takashi", texto = "Nem me fale... Cara, eu faria de tudo pra ter uma gatinha sentada no seu lugar, pra ir do meu ladinho a viagem inteira"},
    { nome = "Takashi", texto = "Como eu queria que a Naomi-chan estivesse aqui"},
    { nome = "Takashi", texto = "Eu não tiraria os olhos das coxas dela nem por 1 minuto"},
    { nome = "Kenji", texto = "Você é um pervertido mesmo, não tem jeito né"},
    { nome = "Takashi", texto = "Até parece que você não faria o mesmo ou até pior"},
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
        { nome = "Mio", texto = "Eu sou burra?" }
    },

    -- ROTA 3: Naomi
    [3] = {
        {nome = "Kenji", texto="Sim. A Naomi faz mais o meu tipo. Ela é muito gata."},
        {nome = "Takashi", texto="Naomi é realmente incrível!"},
    },

    -- ROTA 4: Iroha
    [4] = {
        {nome = "Kenji", texto="Sim. A Iroha faz mais o meu tipo. Ela é muito gata."},
        {nome = "Takashi", texto="Eu adoraria rir da sua cara depois de tomar um fora, então vou te ajudar."},
        {nome = "Kenji", texto="Como você pretende fazer isso?"},
        {nome = "Takashi", texto="Só observe e aprenda com o mestre."},
        {nome = "Takashi", texto="Kaede-sensei, eu estou com nauseas. Posso trocar de lugar com a Iroha-chan? Ela está sentada perto da janela pro lado da estrada."},
        {nome = "Takashi", texto="Se eu trocar de lugar com o Kenji, eu vou vomitar em um carro."},
        {nome = "Kaede", texto="Ah! Tudo bem. Troca de lugar com ele, Iroha. Por favor."},
        {nome= "Iroha Tachibana", texto="Sério? Eu queria olhar para a floresta. Não pode trocar com outra pessoa?"},
        {nome = "Takashi", texto="É que gosto mais de sentar na parte da frente. Por favor!"},
        {nome = "Kaede", texto= "Não seja assim, Iroha. Não custa nada. Na volta eu prometo que te deixo sentar pro lado da melhor vista pela janela."},
        {nome ="Iroha Tachibana", texto="Aff! Está bem. Vamos trocar de lugar então."},
        {nome ="Kenji", texto="Te devo uma, meu mano."},
        {nome ="Takashi", texto="Relaxa. As risadas que darei de você já pagarão o favor."},
        {nome ="Iroha Tachibana", texto="Oi. Espero que não se incomode em eu estar sentada aqui."},
        {nome ="Kenji", texto="Que nada! Desculpe pelo meu amigo, ele tem cinetose."},
        {nome ="Iroha Tachibana", texto="E eu não tenho ideia do que significa isso. O que é cinetose?"},
        -- INTERAÇÃO índice 30 (13 comuns + 1 resposta + 16 da rota = 30)
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
        {nome = "Iroha Tachibana", texto="Bom, acho que é uma boa última chance pra fazer amigos, mesmo que já já nos formaremos."},
        {nome = "Iroha Tachibana", texto="Preciso mudar esse comportamento para encarar a vida adulta."},
        -- interacao 3
        {nome = "Kenji", texto="Agora que tenho o seu número, podemos manter contato até depois de nos formarmos."},
        {nome = "Iroha Tachibana", texto="Sim. Seria ótimo."},
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
            "Ah, então você também gosta da Naomi-chan, isso significa que somos rivais",
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
    },

    -- Rota 4: Iroha
    [4] = {
        [30] = { -- Interação sobre cinetose (SÓ na Rota 4: Iroha)
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
        [43] = { -- índice do diálogo onde a interação aparece
            nome_personagem = "Iroha Tachibana", -- quem responde
            opcoes = {
                "Bom, podemos manter contato, se quiser. Posso pegar seu número?",
                "Ah! Não se preocupe. Você conseguirá fazer amigos.",
                "E a Kimiko? Achei que ela fosse sua amiga.",
            },
            respostas = {
                "Claro. Podemos tentar sermos amigos. Aqui está meu número.",
                "Obrigada. Espero que essa viagem seja ótima para nós dois.",
                "Ela é uma babaca. Ela implica comigo desde a sexta série."
            }
        },
        [48] = { -- índice do diálogo onde a interação aparece
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
