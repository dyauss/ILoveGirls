local fonte
local fonteGrande
local bg_atual
local kaede_chan
local Audio = require("systems.sound")

-- Sistema de Save/Load
local SAVE_DIR = "savedata"
local SAVE_FILE = SAVE_DIR .. "/savegame.txt"

local dialogueBoxSimple1 = require("common.dialogue_box_simple_1")
local characterRenderer = require("renderers.characters")

-- Estados do jogo
local gameState = "menu"  -- Pode ser "menu", "playing" ou "paused"
local menuOpcaoSelecionada = 1
local pauseMenuOpcaoSelecionada = 1

-- Sistema de capítulos
local chapters = {
    require("chapters.chapter_0"),
    require("chapters.chapter_1"),
    require("chapters.chapter_2")
}

local currentChapterIndex = 1  -- Começa no capítulo 1
local rotaAtual = nil  -- Rastreia qual rota foi escolhida (nil = nenhuma rota escolhida ainda)

-- Carrega os diálogos e interações do capítulo atual
local dialogos = chapters[currentChapterIndex].dialogos
local interacoes = chapters[currentChapterIndex].interacoes

local opcaoSelecionada = 1 -- Índice da opção selecionada
local exibirMenu = false   -- Controla se o menu deve ser exibido
local interacaoAtual = nil -- Armazena qual interação está ativa

local indice = 1

-- Função para carregar um capítulo específico
function loadChapter(chapterIndex)
    if chapterIndex < 1 or chapterIndex > #chapters then
        return -- Não faz nada se o índice for inválido
    end

    currentChapterIndex = chapterIndex
    dialogos = chapters[currentChapterIndex].dialogos
    interacoes = chapters[currentChapterIndex].interacoes
    indice = 1  -- Reseta para o primeiro diálogo
    exibirMenu = false
    interacaoAtual = nil
    rotaAtual = nil  -- Reseta a rota ao mudar de capítulo
end

-- Função para salvar o jogo
function saveGame()
    local saveData = {
        currentChapterIndex = currentChapterIndex,
        indice = indice,
        rotaAtual = rotaAtual,
        bg_atual_key = nil,  -- Vamos salvar a chave do background, não a imagem
        exibirMenu = exibirMenu,
        opcaoSelecionada = opcaoSelecionada
    }
    
    -- Descobre qual é a chave do background atual
    for key, bg in pairs(fundos) do
        if bg == bg_atual then
            saveData.bg_atual_key = key
            break
        end
    end
    
    -- Serializa os dados para string
    local dataString = string.format(
        "currentChapterIndex=%d\nindice=%d\nrotaAtual=%s\nbg_atual_key=%s\nexibirMenu=%s\nopcaoSelecionada=%d",
        saveData.currentChapterIndex,
        saveData.indice,
        saveData.rotaAtual or "nil",
        saveData.bg_atual_key or "nil",
        tostring(saveData.exibirMenu),
        saveData.opcaoSelecionada
    )
    
    -- Salva no arquivo usando io padrão do Lua (para salvar na pasta do projeto)
    local file, err = io.open(SAVE_FILE, "w")
    if file then
        file:write(dataString)
        file:close()
        print("Jogo salvo com sucesso em " .. SAVE_FILE)
        return true
    else
        print("Erro ao salvar: " .. tostring(err))
        return false
    end
end

-- Função para carregar o jogo
function loadGame()
    -- Lê o arquivo usando io padrão do Lua
    local file, err = io.open(SAVE_FILE, "r")
    if not file then
        print("Nenhum save encontrado em " .. SAVE_FILE)
        return false
    end
    
    local data = file:read("*all")
    file:close()
    
    if not data or data == "" then
        print("Erro ao ler o arquivo de save.")
        return false
    end
    
    -- Parse dos dados
    local saveData = {}
    for line in data:gmatch("[^\n]+") do
        local key, value = line:match("(.+)=(.+)")
        if key and value then
            if value == "nil" then
                saveData[key] = nil
            elseif value == "true" then
                saveData[key] = true
            elseif value == "false" then
                saveData[key] = false
            elseif tonumber(value) then
                saveData[key] = tonumber(value)
            else
                saveData[key] = value
            end
        end
    end
    
    -- Restaura o estado do jogo
    if saveData.currentChapterIndex then
        -- Carrega o capítulo salvo
        currentChapterIndex = saveData.currentChapterIndex
        dialogos = chapters[currentChapterIndex].dialogos
        interacoes = chapters[currentChapterIndex].interacoes
        
        -- Restaura o índice do diálogo
        indice = saveData.indice or 1
        
        -- Restaura a rota se houver
        if saveData.rotaAtual then
            rotaAtual = saveData.rotaAtual
            -- Recarrega a rota
            local currentChapter = chapters[currentChapterIndex]
            if currentChapter.rotas and currentChapter.rotas[rotaAtual] then
                -- Nota: Como já passamos por essa rota, os diálogos já devem estar inseridos
                -- Mas para segurança, vamos reconstruir o estado
            end
        else
            rotaAtual = nil
        end
        
        -- Restaura o background
        if saveData.bg_atual_key and fundos[saveData.bg_atual_key] then
            bg_atual = fundos[saveData.bg_atual_key]
        end
        
        -- Restaura estado de menu
        exibirMenu = saveData.exibirMenu or false
        opcaoSelecionada = saveData.opcaoSelecionada or 1
        interacaoAtual = nil  -- Será recriado abaixo se necessário
        
        -- Se exibirMenu estava true, precisamos recriar a interação
        if exibirMenu then
            -- Primeiro verifica interações globais
            local interacao = interacoes[indice]
            
            -- Se estiver em uma rota, verifica interações específicas da rota (tem prioridade)
            local currentChapter = chapters[currentChapterIndex]
            if rotaAtual and currentChapter.interacoes_por_rota and currentChapter.interacoes_por_rota[rotaAtual] then
                if currentChapter.interacoes_por_rota[rotaAtual][indice] then
                    interacao = currentChapter.interacoes_por_rota[rotaAtual][indice]
                end
            end
            
            -- Se encontrou a interação, restaura ela
            if interacao then
                interacaoAtual = interacao
            else
                -- Se não encontrou, desativa o menu
                exibirMenu = false
            end
        end
        
        print("Jogo carregado com sucesso!")
        print("Capítulo: " .. currentChapterIndex .. ", Diálogo: " .. indice)
        if exibirMenu and interacaoAtual then
            print("Menu de escolha restaurado com " .. #interacaoAtual.opcoes .. " opções")
        end
        
        -- Muda para o estado de jogo
        gameState = "playing"
        
        return true
    end
    
    return false
end

-- Função para carregar uma rota específica do capítulo atual
function loadRoute(routeIndex)
    local currentChapter = chapters[currentChapterIndex]

    -- Verifica se o capítulo tem sistema de rotas
    if not currentChapter.rotas or not currentChapter.rotas[routeIndex] then
        return -- Não faz nada se a rota não existir
    end

    rotaAtual = routeIndex

    -- Insere os diálogos da rota escolhida após o diálogo atual
    local dialogosRota = currentChapter.rotas[routeIndex]

    for i, dialogo in ipairs(dialogosRota) do
        table.insert(dialogos, indice + i, dialogo)
    end
end

function love.load()
    -- Para adicionar novos backgrounds, declare-os abaixo e também dentro de fundos.
    background_fiap = love.graphics.newImage("assets/background_fiap.png")
    background_terraco_escola = love.graphics.newImage("assets/terraco_escola.png")
    background_praia = love.graphics.newImage("assets/background_praia.png")
    background_bus = love.graphics.newImage("assets/bus.png")
    background_esperando_onibus = love.graphics.newImage("assets/background_esperando_onibus.png")

    bg_atual = background_esperando_onibus

    fundos = {
        fiap = background_fiap,
        terraco_escola = background_terraco_escola,
        praia = background_praia,
        bus = background_bus,
        esperando_onibus =  background_esperando_onibus
    }

    -- carregar personagens
    kenji = love.graphics.newImage("assets/boy1.png")
    takashi = love.graphics.newImage("assets/Takashi.png")

    kimiko = love.graphics.newImage("assets/Kimiko.png")
    kimiko_biquini = love.graphics.newImage("assets/KimikoBiquini.png")
    kimiko_biquini_smirk = love.graphics.newImage("assets/KimikoBiquiniSmirk.png")

    mio = love.graphics.newImage("assets/Mio.png")
    iroha_tachibana = love.graphics.newImage("assets/IrohaTachibana.png")
    kaede = love.graphics.newImage("assets/Kaede.png")
    naomi = love.graphics.newImage("assets/Naomi.png")
    hanako = love.graphics.newImage("assets/Hanako.png")


    -- Mapa de imagens de personagens por nome
    personagens = {
        ["Kenji"] = kenji,
        ["Takashi"] = takashi,
        ["Kimiko"] = kimiko,
        ["Kimiko Biquini"] = kimiko_biquini,
        ["Kimiko Biquini Smirk"] = kimiko_biquini_smirk,
        ["Mio"] = mio,
        ["Iroha Tachibana"] = iroha_tachibana,
        ["Kaede"] = kaede,
        ["Naomi"] = naomi,
        ["Hanako"] = hanako
    }

    fonte = love.graphics.newFont(24)
    fonteGrande = love.graphics.newFont(48)

    --sistema de som
    Audio.load()
end

function love.draw()
    -- Se estiver no menu, desenha o menu
    if gameState == "menu" then
        drawMenu()
        return
    end

    -- Desenha o jogo (mesmo se pausado, para mostrar o fundo)
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

    -- Renderiza o personagem falante
    -- Usa o campo 'sprite' se existir, caso contrário usa o 'nome'
    local spriteKey = dialogos[indice].sprite or dialogos[indice].nome
    -- Passa a posição customizada se especificada no diálogo
    characterRenderer.drawCharacter(spriteKey, personagens, user_screen_width, user_screen_height, dialogos[indice].position)

    -- Desenha a caixa de diálogo
    dialogueBoxSimple1.drawDialogueBox(fonte, 40, user_screen_height - 170, user_screen_width - 80, 130,
        dialogos[indice].nome,
        dialogos[indice].texto
    )

    -- Verifica se há uma interação neste índice
    local interacao = nil

    -- Primeiro verifica interações globais (aparecem em todas as rotas)
    if interacoes[indice] then
        interacao = interacoes[indice]
    end

    -- Se estiver em uma rota, verifica interações específicas da rota (tem prioridade sobre globais)
    local currentChapter = chapters[currentChapterIndex]
    if rotaAtual and currentChapter.interacoes_por_rota and currentChapter.interacoes_por_rota[rotaAtual] then
        if currentChapter.interacoes_por_rota[rotaAtual][indice] then
            interacao = currentChapter.interacoes_por_rota[rotaAtual][indice]
        end
    end

    -- Se encontrou alguma interação (global ou específica da rota), exibe o menu
    if interacao and not exibirMenu then
        exibirMenu = true
        interacaoAtual = interacao
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

    -- Se estiver pausado, desenha o menu de pausa sobre o jogo
    if gameState == "paused" then
        drawPauseMenu()
    end
end

function drawPauseMenu()
    local user_screen_width = love.graphics.getWidth()
    local user_screen_height = love.graphics.getHeight()

    -- Overlay semi-transparente sobre o jogo
    love.graphics.setColor(0, 0, 0, 0.7)
    love.graphics.rectangle("fill", 0, 0, user_screen_width, user_screen_height)

    -- Título "PAUSA" em branco
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(fonteGrande)
    local pausaTexto = "PAUSA"
    local pausaLargura = fonteGrande:getWidth(pausaTexto)
    love.graphics.print(pausaTexto, (user_screen_width - pausaLargura) / 2, user_screen_height * 0.25)

    -- Opções do menu de pausa
    love.graphics.setFont(fonte)
    local opcoes = {"Continuar", "Salvar", "Carregar", "Return to Menu", "Sair"}

    for i, opcao in ipairs(opcoes) do
        if i == pauseMenuOpcaoSelecionada then
            love.graphics.setColor(1, 0, 0) -- Vermelho para selecionado
        else
            love.graphics.setColor(1, 1, 1) -- Branco para não selecionado
        end

        local opcaoLargura = fonte:getWidth(opcao)
        love.graphics.print(opcao, (user_screen_width - opcaoLargura) / 2, user_screen_height * 0.4 + (i - 1) * 45)
    end

    love.graphics.setColor(1, 1, 1)
end

function drawMenu()
    local user_screen_width = love.graphics.getWidth()
    local user_screen_height = love.graphics.getHeight()

    -- Fundo preto
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.rectangle("fill", 0, 0, user_screen_width, user_screen_height)

    -- Título do jogo em branco
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(fonteGrande)
    local tituloTexto = "ILoveGirls"
    local tituloLargura = fonteGrande:getWidth(tituloTexto)
    love.graphics.print(tituloTexto, (user_screen_width - tituloLargura) / 2, user_screen_height * 0.3)

    -- Opções do menu
    love.graphics.setFont(fonte)
    local opcoes = {"New Game", "Load Game", "Options", "Exit"}

    for i, opcao in ipairs(opcoes) do
        if i == menuOpcaoSelecionada then
            love.graphics.setColor(1, 0, 0) -- Vermelho para selecionado
        else
            love.graphics.setColor(1, 1, 1) -- Branco para não selecionado
        end

        local opcaoLargura = fonte:getWidth(opcao)
        love.graphics.print(opcao, (user_screen_width - opcaoLargura) / 2, user_screen_height * 0.5 + (i - 1) * 40)
    end

    love.graphics.setColor(1, 1, 1)
end

function love.keypressed(key)
    -- Tecla ESC pausa/despausa o jogo
    if key == "escape" then
        if gameState == "playing" then
            gameState = "paused"
            pauseMenuOpcaoSelecionada = 1  -- Reset da seleção
        elseif gameState == "paused" then
            gameState = "playing"
        end
        return
    end

    if gameState == "menu" then
        -- Navegação no menu inicial
        if key == "up" then
            menuOpcaoSelecionada = menuOpcaoSelecionada - 1
            if menuOpcaoSelecionada < 1 then
                menuOpcaoSelecionada = 4  -- Volta para a última opção (4 opções agora)
            end
        elseif key == "down" then
            menuOpcaoSelecionada = menuOpcaoSelecionada + 1
            if menuOpcaoSelecionada > 4 then  -- 4 opções no total
                menuOpcaoSelecionada = 1
            end
        elseif key == "space" or key == "return" then
            if menuOpcaoSelecionada == 1 then
                -- New Game
                loadChapter(1)  -- Reseta para o primeiro capítulo
                gameState = "playing"
            elseif menuOpcaoSelecionada == 2 then
                -- Load Game
                loadGame()  -- Já muda o gameState internamente se bem-sucedido
            elseif menuOpcaoSelecionada == 3 then
                -- Options (por enquanto não faz nada, pode ser implementado depois)
                print("Options selecionado - funcionalidade a ser implementada")
            elseif menuOpcaoSelecionada == 4 then
                -- Exit
                love.event.quit()
            end
        end
        return
    end

    -- Navegação no menu de pausa
    if gameState == "paused" then
        if key == "up" then
            pauseMenuOpcaoSelecionada = pauseMenuOpcaoSelecionada - 1
            if pauseMenuOpcaoSelecionada < 1 then
                pauseMenuOpcaoSelecionada = 5  -- 5 opções agora
            end
        elseif key == "down" then
            pauseMenuOpcaoSelecionada = pauseMenuOpcaoSelecionada + 1
            if pauseMenuOpcaoSelecionada > 5 then  -- 5 opções agora
                pauseMenuOpcaoSelecionada = 1
            end
        elseif key == "space" or key == "return" then
            if pauseMenuOpcaoSelecionada == 1 then
                -- Continuar
                gameState = "playing"
            elseif pauseMenuOpcaoSelecionada == 2 then
                -- Salvar
                saveGame()
            elseif pauseMenuOpcaoSelecionada == 3 then
                -- Carregar
                loadGame()
            elseif pauseMenuOpcaoSelecionada == 4 then
                -- Return to Menu
                gameState = "menu"
                menuOpcaoSelecionada = 1
            elseif pauseMenuOpcaoSelecionada == 5 then
                -- Sair
                love.event.quit()
            end
        end
        return
    end

    -- Resto do código de keypressed para o jogo
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

            -- Verifica se esta interação é uma escolha de rota
            if interacaoAtual.tipo == "escolha_rota" then
                -- Insere a resposta no diálogo
                table.insert(dialogos, indice + 1, {
                    nome = interacaoAtual.nome_personagem,
                    texto = respostaEspecifica
                })

                indice = indice + 1

                -- Carrega a rota escolhida
                local rotaEscolhida = interacaoAtual.rotas[opcaoSelecionada]
                loadRoute(rotaEscolhida)

                -- Ajusta o índice para continuar após a resposta
                -- (já estamos no diálogo da resposta, próximo espaço vai para a rota)
            else
                -- Interação normal (sem mudança de rota)
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

                -- sistema de som
                if dialogoAtual.som then
                    Audio.play(dialogoAtual.som)
                end
            end

            exibirMenu = false
            interacaoAtual = nil -- Limpa a interação atual
        end
    else
        if key == "space" then
            indice = indice + 1

            -- evita passar do último diálogo
            if indice > #dialogos then
                -- Tenta carregar o próximo capítulo
                if currentChapterIndex < #chapters then
                    loadChapter(currentChapterIndex + 1)
                else
                    indice = #dialogos
                end
            else
                local dialogoAtual = dialogos[indice]

                -- 🎨 background
                if dialogoAtual.bg and fundos[dialogoAtual.bg] then
                    bg_atual = fundos[dialogoAtual.bg]
                end

                -- 🔊 som (AGORA NO LUGAR CERTO)
                if dialogoAtual.som then
                    Audio.play(dialogoAtual.som)
                end
            end
        end
    end
end
