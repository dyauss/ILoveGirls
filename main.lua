local fonte
local background_fiap
local kaede_chan
local mc

local dialogueBoxSimple1 = require("common.dialogue_box_simple_1")

local dialogos = {
    { nome = "Kaede", texto = "Olá" },
    { nome = "Kaede", texto = "Esse é seu primeiro dia de aula não é mesmo?" },
    { nome = "Kaede", texto = "Eu serei sua professora e irei te ensinar a arte de pegar waifus" },
    { nome = "???", texto = "Obrigado, Kaede-sensei" },
    { nome = "???",   texto = "Seguirei a risca tudo que me ensinar" },
    { nome = "Kaede", texto = "Muito bem, meu caro" },
    { nome = "Kaede", texto = "Agora me diga, por que você se interessou em entrar para o clube?" },
    -- opções do menu 1 + resposta Kaede
    { nome = "Iroha Tachibana", texto = "Olá" },
    { nome = "Iroha Tachibana", texto = "Do que estão falando aí?" }
}

-- opções do menu
local opcoesMenu = {
    "Quero aprender a conquistar waifus!",
    "Preciso de dicas para conversar com garotas.",
    "Estou nervoso, me ajude a relaxar."
}
local opcaoSelecionada = 1 -- Índice da opção selecionada
local exibirMenu = false   -- Controla se o menu deve ser exibido
local dialogoPosMenu = nil -- Armazena o diálogo após a seleção da opção


local indice = 1

function love.load()
    background_fiap = love.graphics.newImage("assets/background_fiap.png")
    kaede_chan = love.graphics.newImage("assets/girl21.png")
    mc = love.graphics.newImage("assets/boy1.png")
    iroha_tachibana = love.graphics.newImage("assets/IrohaTachibana.png")
    fonte = love.graphics.newFont(24)
end

function love.draw()
    local largura_tela = love.graphics.getWidth()
    local altura_tela = love.graphics.getHeight()

    local largura_img = background_fiap:getWidth()
    local altura_img = background_fiap:getHeight()

    local escala = math.max(
        largura_tela / largura_img,
        altura_tela / altura_img
    )

    local nova_largura = largura_img * escala
    local nova_altura = altura_img * escala

    local offset_x = (largura_tela - nova_largura) / 2
    local offset_y = (altura_tela - nova_altura) / 2

    love.graphics.draw(background_fiap, offset_x, offset_y, 0, escala, escala)

    love.graphics.draw(kaede_chan, 900, 10)

    dialogueBoxSimple1.drawDialogueBox(fonte, 40, altura_tela - 170, largura_tela - 80, 130,
        dialogos[indice].nome,
        dialogos[indice].texto
    )

    if dialogos[indice].nome == "???" then
        love.graphics.setColor(1, 1, 1)

        love.graphics.draw(mc, 100, 10)

        dialogueBoxSimple1.drawDialogueBox(fonte, 40, altura_tela - 170, largura_tela - 80, 130,
            dialogos[indice].nome,
            dialogos[indice].texto
        )
    end

    if dialogos[indice].nome == "Iroha Tachibana" then
        love.graphics.setColor(1, 1, 1)

        love.graphics.draw(iroha_tachibana, 0, 80)

        dialogueBoxSimple1.drawDialogueBox(fonte, 40, altura_tela - 170, largura_tela - 80, 130,
            dialogos[indice].nome,
            dialogos[indice].texto
        )
    end

    if indice == 7 then
        exibirMenu = true
    end

    if exibirMenu then
        local larguraCaixa = largura_tela - 600
        local alturaCaixa = 160
        local posX = 30
        local posY = 400

        love.graphics.setColor(0, 0, 0, 0.7)
        love.graphics.rectangle("fill", posX, posY, larguraCaixa, alturaCaixa)
        love.graphics.setColor(1, 1, 1)

        -- Desenha as opções do menu
        for i, opcao in ipairs(opcoesMenu) do
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

    if exibirMenu then
        -- Navegação no menu
        if key == "up" then
            opcaoSelecionada = opcaoSelecionada - 1
            if opcaoSelecionada < 1 then
                opcaoSelecionada = #opcoesMenu
            end
        elseif key == "down" then
            opcaoSelecionada = opcaoSelecionada + 1
            if opcaoSelecionada > #opcoesMenu then
                opcaoSelecionada = 1
            end
        elseif key == "space" then
            local resposta

            if opcaoSelecionada == 1 then
                resposta = "Então esse ano você vai pegar geral"
                table.insert(dialogos, indice + 1, {
                    nome = "Kaede",
                    texto = resposta
                })
                indice = indice + 1
                exibirMenu = false
            elseif opcaoSelecionada == 2 then
                resposta = "Ah, então você não consegue falar com mulher sem tremer? Fracassado..."
                table.insert(dialogos, indice + 1, {
                    nome = "Kaede",
                    texto = resposta
                })
                indice = indice + 1
                exibirMenu = false
            elseif opcaoSelecionada == 3 then
                resposta = "Como assim, não entendi?"
                table.insert(dialogos, indice + 1, {
                    nome = "Kaede",
                    texto = resposta
                })
                indice = indice + 1
                exibirMenu = false
            end
        end
    else
        if key == "space" then
            indice = indice + 1

            -- evita passar do último diálogo
            if indice > #dialogos then
                indice = #dialogos
            end
        end
    end
end
