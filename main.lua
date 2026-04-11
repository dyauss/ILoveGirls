local fonte
local imagem

function love.load()
    imagem = love.graphics.newImage("girl2.png")
    fonte = love.graphics.newFont(24)
end

function love.draw()
    local largura_tela = love.graphics.getWidth()
    local altura_tela = love.graphics.getHeight()

    local largura_image = imagem:getWidth()
    local altura_image = imagem:getHeight()

    local x = (largura_tela - largura_image) / 2
    local y = (altura_tela - altura_image) / 2

    -- fundo
    love.graphics.draw(imagem, x, y)

    local boxX = 40
    local boxY = altura_tela - 170
    local boxW = largura_tela - 80
    local boxH = 130

    -- sombra leve
    love.graphics.setColor(0, 0, 0, 0.2)
    love.graphics.rectangle("fill", boxX+3, boxY+3, boxW, boxH, 8, 8)

    -- caixa branca
    love.graphics.setColor(1, 1, 1, 0.95)
    love.graphics.rectangle("fill", boxX, boxY, boxW, boxH, 8, 8)

    -- borda
    love.graphics.setColor(0.7, 0.7, 0.7)
    love.graphics.rectangle("line", boxX, boxY, boxW, boxH, 8, 8)

    -- name plate (roxo)
    love.graphics.setColor(0.6, 0.3, 0.8)
    love.graphics.rectangle("fill", boxX + 10, boxY - 30, 180, 30, 6, 6)

    -- nome
    love.graphics.setFont(fonte)
    love.graphics.setColor(1,1,1)
    love.graphics.print("Kaede", boxX + 20, boxY - 25)

    -- texto
    love.graphics.setFont(fonte)
    love.graphics.setColor(0,0,0)
    love.graphics.printf(
        "Thandy, Pedro e Guilherme são muito fodas",
        boxX + 20,
        boxY + 20,
        boxW - 40
    )

    love.graphics.setColor(1,1,1)
end
