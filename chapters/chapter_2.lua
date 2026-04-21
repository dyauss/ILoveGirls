local chapter_2 = {}

-- Conte os números de linhas de diálogo abaixo para usar no índice de menu abaixo.
chapter_2.dialogos = {
    { nome = "Takashi", texto = "Queria bolo" },
    { nome = "Kenji", texto = "?????????"},
    { nome = "Kenji", texto = "Oooo laia" },
    { nome = "Kenji", texto = "O que eu faço?" },
    { nome = "Takashi", texto = "A vida é foda" },
    { nome = "Takashi", texto = "Chegamos nessa porra", bg = "praia" },
    { nome = "Kimiko", texto = "Oi" },
    { nome = "Kimiko", texto = "Mó calor né? Vou tirar a roupa" },
    { nome = "Kimiko Biquini", texto = "Bem melhor!" },
    { nome = "Kimiko Smirk", texto = "E aí, o que acharam?" },
    { nome = "Takashi", texto = "Ki-ki-kimiko?? O-o que você está fazendo??" }
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
    }
}

return chapter_2
