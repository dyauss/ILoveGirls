local Audio = {}

Audio.sons = {}

-- Quando for adicionar um áudio, coloca ele na pasta sounds e declara ele aqui embaixo
function Audio.load()
    Audio.sons["oh-my-gah.mp3"] = love.audio.newSource("sounds/oh-my-gah.mp3", "static")
    Audio.sons["cute-laugh"] = love.audio.newSource("sounds/cute-girl-laugh.mp3", "static")
    Audio.sons["cute-giggle"] = love.audio.newSource("sounds/cute-giggle-girl.mp3", "static")
    Audio.sons["pedro"] = love.audio.newSource("sounds/pedro-musica.mp3", "static")
end

function Audio.play(nome)
    local base = Audio.sons[nome]
    if base then
        local som = base:clone()
        som:play()
    end
end

return Audio