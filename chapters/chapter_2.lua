local chapter_2 = {}

-- Conte os números de linhas de diálogo abaixo para usar no índice de menu abaixo.
chapter_2.dialogos = {
    { nome = "Takashi", texto = "Queria bolo" },
    { nome = "Kenji", texto = "?????????"},
    { nome = "Kenji", texto = "Oooo laia" },
    { nome = "Kenji", texto = "O que eu faço?" },
    { nome = "Takashi", texto = "A vida é foda" },
}

-- Sistema de interações
chapter_2.interacoes = {
    [4] = { -- índice do diálogo onde a interação aparece
        nome_personagem = "Takashi", -- quem responde
        opcoes = {
            "Assisto anime",
            "Jogo lol",
            "Durmo",
            "Leio mangá"
        },
        respostas = {
            "Ok",
            "Ok kkk",
            "Tá",
            "Tá bom"
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

return chapter_2
