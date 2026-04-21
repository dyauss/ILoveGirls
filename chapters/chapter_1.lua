local chapter_1 = {}

-- Conte os números de linhas de diálogo abaixo para usar no índice de menu abaixo.
chapter_1.dialogos = {
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
}

-- Sistema de interações
chapter_1.interacoes = {
    [13] = { -- índice do diálogo onde a interação aparece
        nome_personagem = "Takashi", -- quem responde
        opcoes = {
            "Kimiko-chan",
            "Mio-chan",
            "Naomi-chan",
            "Iroha-chan"
        },
        respostas = {
            "Ah, então você gosta da Kimiko",
            "Ah, então você gosta da Mio",
            "Ah, então você gosta da Naomi",
            "Ah, então você gosta da Iroha"
        }
    },
    -- [14] = { -- índice do diálogo onde a segunda interação aparece
    --     nome_personagem = "Iroha Tachibana",
    --     opcoes = {
    --         "Persona 1",
    --         "Persona 2",
    --         "Persona 3",
    --         "Persona 4",
    --         "Persona 5"
    --     },
    --     respostas = {
    --         "Você é psicopata?",
    --         "Maya e Tatsuya <3",
    --         "Memento Mori",
    --         "Everydays's great at your Junes~",
    --         "Morgana é um lixo"
    --     }
    -- },
}

return chapter_1
