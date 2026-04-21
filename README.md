# 📚 Sistema de Capítulos

Este documento explica como funciona o sistema de capítulos do jogo e como adicionar novos capítulos.

## 🎯 Como Funciona

O jogo está organizado em capítulos modulares. Cada capítulo contém:
- **Diálogos**: Lista de falas dos personagens
- **Interações**: Menus de escolha que aparecem durante os diálogos

## 📁 Estrutura de um Capítulo

Cada arquivo de capítulo deve seguir esta estrutura:

```lua
local chapter_X = {}

-- Diálogos do capítulo
chapter_X.dialogos = {
    { nome = "Nome do Personagem", texto = "Texto do diálogo" },
    { nome = "Outro Personagem", texto = "Outra fala" },
    -- ... mais diálogos
}

-- Interações (menus de escolha)
chapter_X.interacoes = {
    [índice_do_diálogo] = {
        nome_personagem = "Quem responde",
        opcoes = {
            "Opção 1",
            "Opção 2",
            "Opção 3"
        },
        respostas = {
            "Resposta para opção 1",
            "Resposta para opção 2",
            "Resposta para opção 3"
        }
    }
}

return chapter_X
```

## ➕ Como Adicionar um Novo Capítulo

### Passo 1: Criar o arquivo
Crie um novo arquivo na pasta `chapters/` com o nome `chapter_N.lua` (onde N é o número do capítulo).

### Passo 2: Escrever o conteúdo
Use a estrutura acima para criar os diálogos e interações do seu capítulo.

### Passo 3: Registrar no main.lua
Abra `main.lua` e adicione o novo capítulo no array `chapters`:

```lua
local chapters = {
    require("chapters.chapter_1"),
    require("chapters.chapter_2"),
    require("chapters.chapter_3"),  -- <-- Seu novo capítulo
}
```

**Pronto!** O jogo agora reconhece o novo capítulo.

## 🔄 Troca Automática de Capítulos

O sistema já está configurado para **trocar automaticamente** de capítulo quando:
- O jogador aperta espaço no último diálogo do capítulo atual
- Existe um próximo capítulo disponível

Exemplo: Se você está no capítulo 1 e aperta espaço no último diálogo, o jogo carrega automaticamente o capítulo 2.

## 🎮 Troca Manual de Capítulos

Se você quiser pular para um capítulo específico durante o desenvolvimento/teste, pode chamar:

```lua
loadChapter(2)  -- Carrega o capítulo 2
loadChapter(1)  -- Volta para o capítulo 1
```

Você pode adicionar atalhos de teclado para isso. Por exemplo, no `love.keypressed`:

```lua
if key == "1" then
    loadChapter(1)
elseif key == "2" then
    loadChapter(2)
elseif key == "3" then
    loadChapter(3)
end
```

## 🖼️ Mudança de Background por Capítulo

Você pode definir o background inicial de cada capítulo adicionando a propriedade `bg` no primeiro diálogo:

```lua
chapter_2.dialogos = {
    { nome = "Kenji", texto = "Olha que praia linda!", bg = "praia" },
    -- ... resto dos diálogos
}
```

Backgrounds disponíveis: `fiap`, `terraco_escola`, `praia`, `bus`

## 📊 Variáveis de Capítulo

Cada capítulo tem acesso às seguintes informações:
- `currentChapterIndex` - Índice do capítulo atual (1, 2, 3...)
- `#chapters` - Total de capítulos no jogo

## 💡 Dicas

1. **Teste cada capítulo separadamente** antes de adicionar ao jogo
2. **Use comentários** para indicar onde interações aparecem
3. **Numere os diálogos** para facilitar referência nas interações
4. **Mantenha backups** antes de fazer grandes mudanças

## 🐛 Resolução de Problemas

**Erro ao carregar capítulo:**
- Verifique se o arquivo está na pasta `chapters/`
- Confirme que o nome do arquivo está correto no `require()`
- Certifique-se de ter o `return chapter_X` no final do arquivo

**Interação não aparece:**
- Verifique o índice do diálogo (conte a partir de 1)
- Confirme que o número de opções = número de respostas

**Capítulo não troca automaticamente:**
- Verifique se você adicionou o capítulo no array `chapters` em `main.lua`
- Confirme que o índice está correto (começa em 1)
