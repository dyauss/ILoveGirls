local characterRenderer = {}

-- Define a posição de cada personagem (left ou right)
local characterPositions = {
    ["Kenji"] = "left",
    ["Takashi"] = "right",
    ["Iroha Tachibana"] = "left",
    ["Kimiko"] = "right",
    ["Kimiko Biquini"] = "right",
    ["Kimiko Smirk"] = "right",
}

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

-- Função principal para desenhar um personagem
function characterRenderer.drawCharacter(characterName, charactersMap, screenWidth, screenHeight)
    -- Verifica se o personagem existe no mapa
    if not charactersMap[characterName] then
        return -- Não desenha nada se o personagem não existir
    end

    local characterImage = charactersMap[characterName]
    local position = characterPositions[characterName]

    if not position then
        return -- Não desenha se não houver posição definida
    end

    love.graphics.setColor(1, 1, 1)

    local char_x, char_y, char_scale

    if position == "left" then
        char_x, char_y, char_scale = getLeftPosition(characterImage, screenWidth, screenHeight)
    elseif position == "right" then
        char_x, char_y, char_scale = getRightPosition(characterImage, screenWidth, screenHeight)
    end

    love.graphics.draw(characterImage, char_x, char_y, 0, char_scale, char_scale)
end

return characterRenderer
