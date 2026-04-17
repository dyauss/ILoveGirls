local fonte
local bg_atual
local kaede_chan
local mc

local dialogueBoxSimple1 = require("common.dialogue_box_simple_1")

local dialogos = { -- Conte os números de linhas de diálogo abaixo para usar no índice de menu abaixo.
    { nome = "Kaede", texto = "Olá" },
    { nome = "Kaede", texto = "Esse é seu primeiro dia de aula não é mesmo?" },
    { nome = "Kaede", texto = "Eu serei sua professora e irei te ensinar a arte de pegar waifus" },
    { nome = "???", texto = "Obrigado, Kaede-sensei" },
    { nome = "???",   texto = "Seguirei a risca tudo que me ensinar" },
    { nome = "Kaede", texto = "Muito bem, meu caro" },
    { nome = "Kaede", texto = "Agora me diga, por que você se interessou em entrar para o clube?" },
    -- interacao_1
    { nome = "Iroha Tachibana", texto = "Olá", bg = "terraco_escola" },
    { nome = "Iroha Tachibana", texto = "Do que estão falando aí?" },
    { nome = "???",             texto = "Caralho, como você é gata :O"},
    { nome = "Iroha Tachibana", texto = "É uma pena que eu não possa dizer o mesmo de você" },
    { nome = "Iroha Tachibana", texto = "Ei você aí, fracassado!" },
    { nome = "Iroha Tachibana", texto = "Qual seu Persona favorito?"},
    -- interacao_2
    { nome = "???", texto = "Meu Deus, essa é a mulher da minha vida T.T" },
    {nome = "Iroha Tachibana", texto = "Quer ir na minha casa hoje à noite?"},

}

-- Sistema de interações
local interacoes = {
    [7] = { -- índice do diálogo onde a interação aparece
        nome_personagem = "Kaede",
        opcoes = {
            "Quero aprender a conquistar waifus!",
            "Preciso de dicas para conversar com garotas.",
            "Estou nervoso, me ajude a relaxar."
        },
        respostas = {
            "Então esse ano você vai pegar geral",
            "Ah, então você não consegue falar com mulher sem tremer? Fracassado...",
            "Como assim, não entendi?"
        }
    },
    [14] = { -- índice do diálogo onde a segunda interação aparece
        nome_personagem = "Iroha Tachibana",
        opcoes = {
            "Persona 1",
            "Persona 2",
            "Persona 3",
            "Persona 4",
            "Persona 5"
        },
        respostas = {
            "Você é psicopata?",
            "Maya e Tatsuya <3",
            "Memento Mori",
            "Everydays's great at your Junes~",
            "Morgana é um lixo"
        }
    },
}

local opcaoSelecionada = 1 -- Índice da opção selecionada
local exibirMenu = false   -- Controla se o menu deve ser exibido
local interacaoAtual = nil -- Armazena qual interação está ativa

local indice = 1

function love.load()
    -- load all the assets
    -- Para adicionar novos backgrounds, declare-os abaixo e também dentro de fundos. Depois chame "bg = [nome da variavel em fundos]", como bg = "fiap" lá na linha de diálogo
    background_fiap = love.graphics.newImage("assets/background_fiap.png")
    background_terraco_escola = love.graphics.newImage("assets/terraco_escola.png")
    background_praia = love.graphics.newImage("assets/background_praia.png")

    bg_atual = background_fiap

    fundos = {
        fiap = background_fiap,
        terraco_escola = background_terraco_escola,
        praia = background_praia
    }
    kaede_chan = love.graphics.newImage("assets/girl21.png")
    mc = love.graphics.newImage("assets/boy1.png")
    iroha_tachibana = love.graphics.newImage("assets/IrohaTachibana.png")

    fonte = love.graphics.newFont(24)
end

local function getLeftPosition(image, user_screen_width, user_screen_height)
    local img_width = image:getWidth()
    local img_height = image:getHeight()

    -- Escala do personagem baseada na altura da tela (ajuste o fator conforme necessário)
    local escala_personagem = (user_screen_height * 0.8) / img_height

    -- Posição X: margem de 5% da largura da tela
    local pos_x = user_screen_width * 0.05

    -- Posição Y: alinhado ao fundo da tela, com pequena margem
    local pos_y = user_screen_height - (img_height * escala_personagem) - (user_screen_height * 0.15)

    return pos_x, pos_y, escala_personagem
end

local function getRightPosition(image, user_screen_width, user_screen_height)
    local img_width = image:getWidth()
    local img_height = image:getHeight()

    -- Escala do personagem baseada na altura da tela
    local escala_personagem = (user_screen_height * 0.8) / img_height

    -- Posição X: alinhado à direita com margem de 5%
    local pos_x = user_screen_width - (img_width * escala_personagem) - (user_screen_width * 0.05)

    -- Posição Y: alinhado ao fundo da tela, com pequena margem
    local pos_y = user_screen_height - (img_height * escala_personagem) - (user_screen_height * 0.15)

    return pos_x, pos_y, escala_personagem
end

function love.draw()
    local user_screen_width = love.graphics.getWidth()
    local user_screen_height = love.graphics.getHeight()

    local background_width = bg_atual:getWidth()
    local background_height = bg_atual:getHeight()

    local escala = math.max(
        user_screen_width / background_width,
        user_screen_height / background_height
    )

    local nova_largura = background_width * escala
    local nova_altura = background_height * escala

    local offset_x = (user_screen_width - nova_largura) / 2
    local offset_y = (user_screen_height - nova_altura) / 2

    love.graphics.draw(bg_atual, offset_x, offset_y, 0, escala, escala)

    -- Posição responsiva para Kaede (à direita)
    local kaede_x, kaede_y, kaede_escala = getRightPosition(kaede_chan, user_screen_width, user_screen_height)
    love.graphics.draw(kaede_chan, kaede_x, kaede_y, 0, kaede_escala, kaede_escala)

    dialogueBoxSimple1.drawDialogueBox(fonte, 40, user_screen_height - 170, user_screen_width - 80, 130,
        dialogos[indice].nome,
        dialogos[indice].texto
    )

    if dialogos[indice].nome == "???" then
        love.graphics.setColor(1, 1, 1)

        -- Posição responsiva para MC (à esquerda)
        local mc_x, mc_y, mc_escala = getLeftPosition(mc, user_screen_width, user_screen_height)
        love.graphics.draw(mc, mc_x, mc_y, 0, mc_escala, mc_escala)

        dialogueBoxSimple1.drawDialogueBox(fonte, 40, user_screen_height - 170, user_screen_width - 80, 130,
            dialogos[indice].nome,
            dialogos[indice].texto
        )
    end

    if dialogos[indice].nome == "Iroha Tachibana" then
        love.graphics.setColor(1, 1, 1)

        -- Posição responsiva para Iroha (à esquerda)
        local iroha_x, iroha_y, iroha_escala = getLeftPosition(iroha_tachibana, user_screen_width, user_screen_height)
        love.graphics.draw(iroha_tachibana, iroha_x, iroha_y, 0, iroha_escala, iroha_escala)

        dialogueBoxSimple1.drawDialogueBox(fonte, 40, user_screen_height - 170, user_screen_width - 80, 130,
            dialogos[indice].nome,
            dialogos[indice].texto
        )
    end

    -- Verifica se há uma interação neste índice
    if interacoes[indice] and not exibirMenu then
        exibirMenu = true
        interacaoAtual = interacoes[indice]
        opcaoSelecionada = 1 -- Reset da seleção
    end

    if exibirMenu and interacaoAtual then
        local larguraCaixa = user_screen_width - 600
        local numOpcoes = #interacaoAtual.opcoes
        local alturaCaixa = 60 + (numOpcoes * 40) -- Altura dinâmica baseada no número de opções
        local posX = 30
        local posY = user_screen_height * 0.4 -- Posição responsiva para o menu

        love.graphics.setColor(0, 0, 0, 0.7)
        love.graphics.rectangle("fill", posX, posY, larguraCaixa, alturaCaixa)
        love.graphics.setColor(1, 1, 1)

        -- Desenha as opções do menu
        for i, opcao in ipairs(interacaoAtual.opcoes) do
            if i == opcaoSelecionada then
                love.graphics.setColor(1, 0, 0) -- Cor vermelha para a opção selecionada
            else
                love.graphics.setColor(1, 1, 1) -- Cor branca para as outras opções
            end
            love.graphics.print(opcao, posX + 20, posY + 20 + (i - 1) * 40)
        end
    end

    love.graphics.setColor(1, 1, 1)
end

function love.keypressed(key)
    if key == "r" then
        love.event.quit("restart")
    end

    if exibirMenu and interacaoAtual then
        -- Navegação no menu
        if key == "up" then
            opcaoSelecionada = opcaoSelecionada - 1
            if opcaoSelecionada < 1 then
                opcaoSelecionada = #interacaoAtual.opcoes
            end
        elseif key == "down" then
            opcaoSelecionada = opcaoSelecionada + 1
            if opcaoSelecionada > #interacaoAtual.opcoes then
                opcaoSelecionada = 1
            end
        elseif key == "space" then
    -- Pega a resposta correspondente à opção selecionada
    local respostaEspecifica = interacaoAtual.respostas[opcaoSelecionada]

    -- Insere a resposta no diálogo
    table.insert(dialogos, indice + 1, {
        nome = interacaoAtual.nome_personagem,
        texto = respostaEspecifica
    })

    indice = indice + 1

    -- 👇 AQUI entra a troca de background
    local dialogoAtual = dialogos[indice]
    if dialogoAtual.bg and fundos[dialogoAtual.bg] then
        bg_atual = fundos[dialogoAtual.bg]
    end

    exibirMenu = false
    interacaoAtual = nil -- Limpa a interação atual
end
    else
        if key == "space" then
            indice = indice + 1

            -- evita passar do último diálogo
            if indice > #dialogos then
                indice = #dialogos
            end
            -- 👇 FALTAVA ISSO AQUI
            local dialogoAtual = dialogos[indice]
            if dialogoAtual.bg and fundos[dialogoAtual.bg] then
                bg_atual = fundos[dialogoAtual.bg]
            end
        end
    end
end
