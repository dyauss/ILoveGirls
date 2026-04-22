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

# 🎯 Sistema de Interações por Rota

Este documento explica o sistema avançado de interações que garante que certas escolhas apareçam **apenas em rotas específicas**.

## 🤔 Por que esse sistema existe?

### O Problema:

Imagine que você tem:
- **Rota 1 (Kimiko)**: 2 diálogos
- **Rota 2 (Mio)**: 2 diálogos
- **Rota 3 (Naomi)**: 2 diálogos
- **Rota 4 (Iroha)**: 42 diálogos

Se você criar uma interação no índice 30:
```lua
interacoes = {
    [30] = { ... } -- Pergunta sobre cinetose
}
```

Essa interação **só funciona hoje** porque as rotas 1, 2 e 3 têm poucos diálogos. Mas se amanhã você adicionar mais diálogos nelas e chegarem ao índice 30, a pergunta sobre cinetose apareceria em rotas onde não faz sentido! 😱

### A Solução:

Sistema de **Interações por Rota** que garante que interações apareçam **somente nas rotas corretas**.

## 📊 Dois Tipos de Interações

### 1️⃣ Interações Globais
Aparecem **em todas as rotas** (ou antes da escolha de rota).

```lua
chapter_1.interacoes = {
    [13] = { -- Aparece para TODOS os jogadores
        nome_personagem = "Takashi",
        tipo = "escolha_rota",
        opcoes = { "Kimiko", "Mio", "Naomi", "Iroha" },
        respostas = { ... },
        rotas = {1, 2, 3, 4}
    }
}
```

**Uso:** Escolhas que acontecem antes da divisão de rotas ou que devem aparecer em todas as rotas.

### 2️⃣ Interações por Rota
Aparecem **apenas na rota especificada**.

```lua
chapter_1.interacoes_por_rota = {
    [4] = { -- Apenas na Rota 4 (Iroha)
        [30] = { -- Índice 30
            nome_personagem = "Iroha Tachibana",
            opcoes = { ... },
            respostas = { ... }
        }
    }
}
```

**Uso:** Interações específicas de cada personagem/rota.

## 🏗️ Estrutura Completa

```lua
local chapter_1 = {}

-- 1. Diálogos comuns (antes da escolha)
chapter_1.dialogos_comuns = {
    { nome = "Kenji", texto = "Diálogo 1" },
    -- ...
}

-- 2. Rotas
chapter_1.rotas = {
    [1] = { {nome = "...", texto = "..."} },
    [2] = { {nome = "...", texto = "..."} },
    [3] = { {nome = "...", texto = "..."} },
    [4] = { {nome = "...", texto = "..."} }
}

-- 3. Interações GLOBAIS
chapter_1.interacoes = {
    [13] = { -- Escolha de rota (todos veem)
        tipo = "escolha_rota",
        -- ...
    }
}

-- 4. Interações POR ROTA (novo sistema!)
chapter_1.interacoes_por_rota = {
    [1] = { -- Rota Kimiko
        [20] = { opcoes = {...}, respostas = {...} }
    },
    [2] = { -- Rota Mio
        [25] = { opcoes = {...}, respostas = {...} }
    },
    [3] = { -- Rota Naomi
        [18] = { opcoes = {...}, respostas = {...} }
    },
    [4] = { -- Rota Iroha
        [30] = { opcoes = {...}, respostas = {...} },
        [45] = { opcoes = {...}, respostas = {...} }
    }
}

chapter_1.dialogos = chapter_1.dialogos_comuns
return chapter_1
```

## 🔄 Sistema de Prioridade

O sistema verifica interações nesta ordem:

1. **Interações Globais** (`interacoes[indice]`)
2. **Interações da Rota Atual** (`interacoes_por_rota[rotaAtual][indice]`)

⚠️ **IMPORTANTE:** Se existir uma interação global E uma interação por rota no mesmo índice, **a interação por rota tem prioridade**!

## 📝 Exemplos Práticos

### Exemplo 1: Interação Exclusiva da Rota Iroha

```lua
chapter_1.interacoes_por_rota = {
    [4] = { -- Só na Rota 4
        [30] = {
            nome_personagem = "Iroha Tachibana",
            opcoes = {
                "Explicação técnica",
                "Explicação simples",
                "Resposta grosseira"
            },
            respostas = {
                "Não entendi...",
                "Você é inteligente!",
                "Você é grosseiro!"
            }
        }
    }
}
```

**Resultado:**
- ✅ Aparece quando jogador escolhe Iroha
- ❌ NÃO aparece nas rotas Kimiko, Mio ou Naomi

### Exemplo 2: Interações em Múltiplas Rotas

```lua
chapter_1.interacoes_por_rota = {
    [1] = { -- Rota Kimiko
        [15] = {
            nome_personagem = "Kimiko",
            opcoes = {"Opção A", "Opção B"},
            respostas = {"Resposta A", "Resposta B"}
        }
    },
    [2] = { -- Rota Mio
        [15] = { -- MESMO índice, interação DIFERENTE
            nome_personagem = "Mio",
            opcoes = {"Opção C", "Opção D"},
            respostas = {"Resposta C", "Resposta D"}
        }
    }
}
```

**Resultado:**
- No índice 15 da rota Kimiko: menu com Kimiko
- No índice 15 da rota Mio: menu diferente com Mio

### Exemplo 3: Substituindo Interação Global

```lua
-- Interação global (aparece em todas as rotas por padrão)
chapter_1.interacoes = {
    [20] = {
        nome_personagem = "Takashi",
        opcoes = {"Sim", "Não"},
        respostas = {"Legal!", "Ah..."}
    }
}

-- Sobrescreve APENAS na rota 4
chapter_1.interacoes_por_rota = {
    [4] = {
        [20] = { -- Sobrescreve a interação global
            nome_personagem = "Iroha Tachibana",
            opcoes = {"Talvez", "Com certeza"},
            respostas = {"Hmm...", "Ótimo!"}
        }
    }
}
```

**Resultado:**
- Rotas 1, 2, 3: veem a interação com Takashi
- Rota 4: vê a interação com Iroha

## 🎮 Como Adicionar Nova Interação em uma Rota

### Passo 1: Identifique o índice do diálogo

Conte os diálogos na sua rota:
```
Diálogos comuns: 1-13
Resposta escolha: 14
Rota 4 começa: 15
...
Diálogo alvo: 30 ← aqui quero a interação
```

### Passo 2: Adicione no `interacoes_por_rota`

```lua
chapter_1.interacoes_por_rota = {
    [4] = { -- Número da rota
        [30] = { -- Índice do diálogo
            nome_personagem = "Nome do Personagem",
            opcoes = {
                "Opção 1",
                "Opção 2"
            },
            respostas = {
                "Resposta 1",
                "Resposta 2"
            }
        }
    }
}
```

### Passo 3: Teste!

Jogue a rota e verifique se:
- ✅ A interação aparece na rota correta
- ✅ NÃO aparece em outras rotas

## ⚙️ Como o Sistema Funciona Internamente

```lua
-- No love.draw() do main.lua
local interacao = nil

-- 1. Verifica interações globais
if interacoes[indice] then
    interacao = interacoes[indice]
end

-- 2. Verifica interações da rota atual (sobrescreve global)
if rotaAtual and interacoes_por_rota[rotaAtual] then
    if interacoes_por_rota[rotaAtual][indice] then
        interacao = interacoes_por_rota[rotaAtual][indice]
    end
end

-- 3. Exibe o menu se encontrou alguma interação
if interacao and not exibirMenu then
    exibirMenu = true
    interacaoAtual = interacao
end
```

## ✅ Boas Práticas

1. **Use interações globais para:**
   - Escolha de rota principal
   - Decisões que afetam todas as rotas
   - Interações antes da divisão de rotas

2. **Use interações por rota para:**
   - Conversas específicas com cada personagem
   - Escolhas que só fazem sentido em uma rota
   - Interações após a divisão de rotas

3. **Organize por rota:**
   ```lua
   interacoes_por_rota = {
       [1] = { -- Todos os índices da Rota 1
           [15] = {...},
           [20] = {...}
       },
       [2] = { -- Todos os índices da Rota 2
           [18] = {...}
       }
   }
   ```

4. **Comente seus índices:**
   ```lua
   [30] = { -- Pergunta sobre cinetose (após Iroha sentar)
   ```

## 🐛 Troubleshooting

**Interação não aparece:**
- ✓ Verifique se está na rota correta jogando
- ✓ Confirme o número da rota em `interacoes_por_rota[X]`
- ✓ Conte os índices corretamente
- ✓ Verifique se `rotaAtual` foi definida (escolha de rota aconteceu)

**Interação aparece em rota errada:**
- ✓ Está usando `interacoes` (global) em vez de `interacoes_por_rota`?
- ✓ Moveu a interação para `interacoes_por_rota[numero_correto]`?

**Interação aparece em todas as rotas:**
- ✓ A interação está em `interacoes` (globais)
- ✓ Se quiser apenas em uma rota, mova para `interacoes_por_rota`

## 📊 Comparação: Antes vs Depois

### ❌ ANTES (Sistema Antigo)
```lua
interacoes = {
    [30] = { ... } -- Aparece em QUALQUER rota que chegue ao índice 30
}
```
**Problema:** Se expandir outras rotas, bugs aparecem!

### ✅ DEPOIS (Sistema Novo)
```lua
interacoes_por_rota = {
    [4] = {
        [30] = { ... } -- Aparece APENAS na Rota 4, SEMPRE
    }
}
```
**Garantia:** Não importa quantos diálogos você adicione em outras rotas!

## 🎓 Resumo

- **2 tipos de interações:** Globais e Por Rota
- **Globais:** Aparecem em todas as rotas
- **Por Rota:** Aparecem apenas na rota especificada
- **Prioridade:** Interações por rota sobrescrevem globais
- **Uso:** Garante que interações sejam exclusivas de cada rota
- **Vantagem:** Você pode expandir rotas sem medo de bugs!

Agora você pode criar rotas complexas com interações únicas para cada personagem sem se preocupar! 🎉
