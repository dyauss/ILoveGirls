local characterRenderer = {}

-- Define a posição de cada personagem (left ou right)
local characterPositions = {
    ["Kenji"] = "left",
    ["Takashi"] = "right",
    ["Kaede"] = "right",
    ["Iroha Tachibana"] = "left",
    ["Kimiko"] = "right",
    ["Kimiko Biquini"] = "right",
    ["Kimiko Biquini Smirk"] = "right",
    ["Mio"] = "right",
    ["Naomi"] = "right"
}

-- Estado da cena: mantém os personagens atualmente visíveis
local sceneState = {
    left = nil,  -- Nome do personagem na esquerda
    right = nil  -- Nome do personagem na direita
}

-- Sobrescritas de posição: armazena posições customizadas que sobrescrevem as padrões
-- Permite que um personagem mude de posição dinamicamente
local positionOverrides = {}

-- Calcula a posição para personagem à esquerda
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

-- Calcula a posição para personagem à direita
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

-- Função para desenhar um personagem individual
local function drawSingleCharacter(characterName, characterImage, screenWidth, screenHeight, isActive)
    -- Usa a posição override se existir, caso contrário usa a padrão
    local position = positionOverrides[characterName] or characterPositions[characterName]
    
    if not position then
        return
    end

    -- Define a cor: personagem ativo fica normal (branco), inativo fica mais escuro
    if isActive then
        love.graphics.setColor(1, 1, 1, 1)  -- Totalmente visível
    else
        love.graphics.setColor(0.6, 0.6, 0.6, 1)  -- Mais escuro para indicar que não está falando
    end

    local char_x, char_y, char_scale

    if position == "left" then
        char_x, char_y, char_scale = getLeftPosition(characterImage, screenWidth, screenHeight)
    elseif position == "right" then
        char_x, char_y, char_scale = getRightPosition(characterImage, screenWidth, screenHeight)
    end

    love.graphics.draw(characterImage, char_x, char_y, 0, char_scale, char_scale)
    
    -- Reseta a cor
    love.graphics.setColor(1, 1, 1, 1)
end

-- Função principal para desenhar personagem(ns) na cena
-- @param customPosition (opcional): "left" ou "right" para sobrescrever a posição padrão
function characterRenderer.drawCharacter(characterName, charactersMap, screenWidth, screenHeight, customPosition)
    -- Verifica se o personagem existe no mapa
    if not charactersMap[characterName] then
        return
    end

    -- Se uma posição customizada foi fornecida, armazena como override
    if customPosition then
        positionOverrides[characterName] = customPosition
    end

    -- Usa a posição override se existir, caso contrário usa a padrão
    local position = positionOverrides[characterName] or characterPositions[characterName]
    
    if not position then
        return
    end

    -- Atualiza o estado da cena com o personagem atual
    if position == "left" then
        sceneState.left = characterName
    elseif position == "right" then
        sceneState.right = characterName
    end

    -- Desenha todos os personagens presentes na cena
    -- Personagem da esquerda
    if sceneState.left and charactersMap[sceneState.left] then
        local isActive = (sceneState.left == characterName)
        drawSingleCharacter(sceneState.left, charactersMap[sceneState.left], screenWidth, screenHeight, isActive)
    end

    -- Personagem da direita
    if sceneState.right and charactersMap[sceneState.right] then
        local isActive = (sceneState.right == characterName)
        drawSingleCharacter(sceneState.right, charactersMap[sceneState.right], screenWidth, screenHeight, isActive)
    end
end

-- Função para limpar a cena (remove todos os personagens)
function characterRenderer.clearScene()
    sceneState.left = nil
    sceneState.right = nil
end

-- Função para limpar todas as sobrescritas de posição
function characterRenderer.clearPositionOverrides()
    positionOverrides = {}
end

-- Função para resetar a posição de um personagem específico para o padrão
function characterRenderer.resetCharacterPosition(characterName)
    positionOverrides[characterName] = nil
end

-- Função para remover um personagem específico da cena
function characterRenderer.removeCharacter(characterName)
    local position = characterPositions[characterName]
    
    if position == "left" then
        sceneState.left = nil
    elseif position == "right" then
        sceneState.right = nil
    end
end

-- Função para obter o estado atual da cena
function characterRenderer.getSceneState()
    return sceneState
end

return characterRenderer