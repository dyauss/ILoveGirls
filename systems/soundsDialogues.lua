local Audio = require("systems.sound")

local Dialogue = {}

Dialogue.lista = {}
Dialogue.indice = 1

function Dialogue.load(dialogues)
    Dialogue.lista = dialogues
    Dialogue.indice = 1

    Dialogue.tocarSomAtual()
end

function Dialogue.proximo()
    Dialogue.indice = Dialogue.indice + 1
    Dialogue.tocarSomAtual()
end

function Dialogue.tocarSomAtual()
    local d = Dialogue.lista[Dialogue.indice]

    if d and d.som then
        Audio.play(d.som)
    end
end

function Dialogue.getAtual()
    return Dialogue.lista[Dialogue.indice]
end

return Dialogue