local dialogueBoxSimple = {}

-- Função para desenhar uma caixa de diálogo simples
-- Parâmetros:
--   x, y: Posição da caixa
--   width, height: Dimensões da caixa
--   name: Nome do personagem (opcional)
--   text: Texto a ser exibido
--   font: Fonte a ser utilizada
--   namePlateColor: Cor do name plate (opcional, padrão: roxo)
function dialogueBoxSimple.drawDialogueBox(font, x, y, width, height, name, text, namePlateColor)
    -- Define a cor padrão do name plate (roxo)
    namePlateColor = namePlateColor or {0.6, 0.3, 0.8}

    -- Sombra leve
    love.graphics.setColor(0, 0, 0, 0.2)
    love.graphics.rectangle("fill", x + 3, y + 3, width, height, 8, 8)

    -- Caixa branca
    love.graphics.setColor(1, 1, 1, 0.95)
    love.graphics.rectangle("fill", x, y, width, height, 8, 8)

    -- Borda
    love.graphics.setColor(0.7, 0.7, 0.7)
    love.graphics.rectangle("line", x, y, width, height, 8, 8)

    -- Name plate (se o nome for fornecido)
    if name then
        love.graphics.setColor(namePlateColor[1], namePlateColor[2], namePlateColor[3])
        love.graphics.rectangle("fill", x + 10, y - 30, 180, 30, 6, 6)

        -- Nome
        love.graphics.setFont(font)
        love.graphics.setColor(1, 1, 1)
        love.graphics.print(name, x + 20, y - 25)
    end

    -- Texto
    love.graphics.setFont(font)
    love.graphics.setColor(0, 0, 0)
    love.graphics.printf(text, x + 20, y + 20, width - 40)
end

return dialogueBoxSimple
