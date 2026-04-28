local chapter_0 = {}

-- Conte os números de linhas de diálogo abaixo para usar no índice de menu abaixo.
chapter_0.dialogos = {
    { nome = "Kenji", texto = "Vamos. Atende logo esse telefone."}, -- no celular por ligação
    { nome = "Takashi", texto = "Fala, meu consagrado!"}, -- no celular por ligação
    { nome = "Kenji", texto = "Cadê você, cara?"}, -- no celular por ligação
    { nome = "Takashi", texto = "Estou deitado na cama. Por quê?"}, -- no celular por ligação
    { nome = "Kenji", texto = "Só pode ser brincadeira!"}, -- no celular por ligação
    { nome = "Takashi", texto = "Claro que é brincadeira. Estou a caminho."}, -- no celular por ligação
    { nome = "Kenji", texto = "Sua sorte é que deu algum problema no ônibus e estão arrumando."},-- no celular por ligação
    { nome = "Takashi", texto = "Relaxa! Não pense que perderei essa excursão. É a grande chance de conseguir uma gatinha."},-- no celular por ligação
    { nome = "Kenji", texto = "Espero que chegue logo, ou vai sobrar todas para mim. Incluindo sua amada Naomi-chan." },-- no celular por ligação
    { nome = "Takashi", texto = "Desgraçado! Essa aí será minha futura esposa e você sabe disso." },-- no celular por ligação
    { nome = "Takashi", texto = "Inclusive, já vai procurando uma roupa legal pra ir no meu casamento com a Naomi-chan." },-- no celular por ligação
    { nome = "Kenji", texto = "Vou fingir que não ouvi isso. Já está perto?" },-- no celular por ligação
    { nome = "Takashi", texto = "Sim. Se tudo der certo, chegarei em um piscar de olhos."},-- no celular por ligação
    { nome = "Kenji", texto = "Beleza. Qualquer coisa eu invento uma desculpa aqui pra enrolar até você chegar." },-- no celular por ligação
    { nome = "Kenji", texto = "Falou!" },-- no celular por ligação
    { nome = "Takashi", texto = "Valeu!" },-- no celular por ligação
    { nome = "Kenji", texto = "(Essa será a última excursão do segundo ano. Creio que seja uma grande oportunidade para fazer grandes memórias.)" }, -- monólogo interno
    { nome = "Kenji", texto = "(Ah! Aquelas duas...)" },-- monólogo interno
    { nome = "Naomi", texto= "Fiquei acordada até tarde ontem vendo uma partida de basquete. Eu sei que precisava dormir mais cedo, mas a partida estava insana."},
    { nome = "Iroha Tachibana", texto="Eu também não dormi cedo. A ansiedade pra essa viagem me fez ficar acordada até tarde."},
    { nome = "Naomi", texto="Até parece! Você dorme tarde de qualquer jeito."},
    { nome = "Naomi", texto="Aliás, da próxima vez eu vou te ligar e te fazer assistir uma partida junto comigo."},
    { nome = "Iroha Tachibana", texto="Pra quê? Pra me fazer dormir?"},
    { nome = "Naomi", texto="Aff! hahahahaha!", som="cute-laugh" },
    { nome = "Naomi", texto="A propósito, preparada para interagir com pessoas em Kamakura?" },
    { nome = "Iroha Tachibana", texto="Acho que sim. Se eu tentar conversar com alguém como eu converso com você, deve dar bom." },
    { nome = "Naomi", texto="Isso aí! Quero te ver vencer essa timidez." },
    { nome = "Iroha Tachibana", texto="Se eu passar vergonha, fico trancada no quarto do hotel e nunca mais volto pra Kamakura." },
    { nome = "Naomi", texto="Vou estar do seu lado pra te passar confiança e te fazer se soltar um pouco mais." },
    { nome = "Naomi", texto="Se tudo der errado e você quiser se trancar no quarto, poderá ler Slam Dunk. Ou 'o melhor mangá da história', para os mais íntimos." }, -- MC descobre que Naomi tem Slam Dunk como mangá favorito
    { nome = "Naomi", texto="Viu? Você só tem a ganhar. Até no pior dos casos." },
    { nome = "Iroha Tachibana", texto="Agora sim você me convenceu a não me trancar no quarto." },
    -- param e conversam com o Kenji
    { nome = "Naomi", texto="Ah! Bom dia, Kenji!" },
    { nome = "Kenji", texto="Bom dia, Naomi. Bom dia, Iroha." },
    { nome = "Iroha Tachibana", texto="B-bom d-dia!" },
    { nome = "Naomi", texto="Calma, amiga. Não precisa gaguejar. O Kenji não vai te morder." },
    { nome = "Iroha Tachibana", texto="*Respira fundo* Bom dia, Kenji! Tudo bom?" },
    { nome = "Kenji", texto="Estou ótimo. E você?" },
    { nome = "Iroha Tachibana", texto="Bem também. Obrigada por perguntar." },
    { nome = "Naomi", texto="Perfeito! Viu só? Não precisa ter medo de falar com outras pessoas." },
    { nome = "Iroha Tachibana", texto="Você tem razão. Ainda bem que te conheço desde a infância, ou nem com você eu conseguiria falar." },
    { nome = "Kenji", texto="Você só precisa tornar isso um hábito." },
    { nome = "Naomi", texto="Exatamente. E teremos muitas pessoas para falar em Kamakura." },
    { nome = "Kaede", texto="Atenção! O reparo no ônibus terminou." },
    { nome = "Naomi", texto="Paramos pra conversar e eu esqueci que íamos comprar uns lanchinhos ali na máquina de vendas." },
    { nome = "Naomi", texto="Vamos lá, Iroha. Até mais, Kenji!" },
    { nome = "Iroha Tachibana", texto="Tchau, Kenji." },
    { nome = "Kenji", texto="Até mais, meninas." },
    { nome = "Kenji", texto="(Takashi vai odiar saber que a Naomi veio falar comigo.)" }, -- monólogo interno
    { nome = "Kaede", texto="Vou fazer a chamada e quem eu chamar, vai entrando no ônibus." },
    -- ver nomes melhores e talvez alguma arte genérica tipo sombra
    -- Mio e Kimiko abaixo
    { nome = "Kaede", texto="Akemi." },
    { nome = "Kaede", texto="Akihiko." },
    { nome = "Kaede", texto="*Fala nomes*" },
    { nome = "Kaede", texto="Iroha." },
    { nome = "Iroha Tachibana", texto="Vou guardar lugar pra você na parte de trás, Naomi." },
    { nome = "Naomi", texto="Tá bom." },
    { nome = "Kaede", texto="*Fala nomes*" },
    { nome = "Kaede", texto="Kenji." },   
    { nome = "Kenji", texto="(Droga! Preciso enrolar pro Takashi chegar.)" }, -- monólogo interno
    { nome = "Kenji", texto="Eu... eu preciso ir ao banhei-" },
    { nome = "Kimiko", texto="Faz cerca de meia hora que estamos esperando o ônibus estar pronto e só agora você quer ir ao banheiro?" },
    { nome = "Kenji", texto ="Bom, é que..."},
    { nome = "Kimiko", texto="Admiro o seu amigo nerd. Viu que seria um incômodo e decidiu ficar em casa." },
    { nome = "Mio", texto="Por que você não fez igual ao teu amigo e ficou em casa também?" },
    { nome = "Mio", texto="Entra logo nesse ônibus!" },
    { nome = "Mio", texto="*Mandei bem, Kimi-chan?*" }, -- cochicho
    { nome = "Kimiko", texto="*suspiro* Só vai logo ao banheiro." },
    { nome = "Kaede", texto="Calma! Não precisam brigar com ele, meninas. Todos nós estamos empolgados pela viagem." },
    { nome = "Kaede", texto="Vai logo ao banheiro, Kenji. Nós te esperamos." },
    { nome = "Kenji", texto="Eu já volto." },
    { nome = "Mio", texto="Eu recebi umas ligações mais cedo. Já que temos que esperar por esse imbecil, vou retornar a ligação." },
    { nome = "Mio", texto="Só vou me afastar um pouco por causa do barulho." },
    { nome = "Kimiko", texto="Certo." },
    -- correndo a caminho do banheiro
    { nome = "Kenji", texto="O Takashi me deve e muito por tudo isso." },
    { nome = "Kenji", texto="Vamos. Atende logo!" },
    { nome = "Takashi", texto="Opa!" }, -- no celular
    { nome = "Kenji", texto="Que 'opa!' o quê?! Chegue logo! Até levei esporro daquelas duas metidas." }, -- no celular por ligação 
    { nome = "Takashi", texto="Kimiko e Mio? Que se dane essas duas." }, -- no celular por ligação 
    { nome = "Takashi", texto="Já estou no portão da escola." }, -- no celular por ligação 
    { nome = "Kenji", texto="Beleza. Vou sair do banheiro e ir para o ônibus. Vou guardar teu lugar lá." }, -- no celular por ligação
    { nome = "Takashi", texto="Que lugar? A cama de casal que eu vou dormir com a Naomi?" }, -- no celular por ligação 
    { nome = "Kenji", texto="Sem comentários...Desligando." }, -- no celular por ligação
    { nome = "Kenji", texto="(Espero que não impliquem comigo de novo no ôni-)" }, -- monólogo interno
    { nome = "Kenji", texto="(Hã? O que a Mio está fazendo ali?)" }, -- monólogo interno
    { nome = "Kenji", texto="(Não era pra ela estar dentro do ônibus?)" }, -- monólogo interno
    -- Sobre a Mio. Alterar depois caso necessário
    { nome = "Mio", texto="Ah! Obrigada, pai. Você é um anjo!" }, -- no celular por ligação
    { nome = "Mio", texto="Pode deixar que quando eu chegar lá, ligo para o senhor. Não me esquecerei também da sua lembrancinha." }, -- no celular por ligação
    { nome = "Mio", texto="Beijos. Também te amo!" }, -- no celular por ligação
    { nome = "Kenji", texto="Viu só? Se eu não tivesse ido ao banheiro, você não teria falado com seu pai no celular." },
    { nome = "Mio", texto="D-Desde quando você está ouvindo?" },
    { nome = "Mio", texto="E eu poderia atender ao celular no ônibus, sabia?" },
    { nome = "Kenji", texto="Então por que se afastou pra falar no celular?" },
    { nome = "Mio", texto="Por causa do barulho. Não é óbvio?" },
    { nome = "Kenji", texto="Sei lá. Você parecia uma pessoa bem diferente na ligação." },
    { nome = "Mio", texto="Do que você está falando?" },
    { nome = "Kenji", texto="Estou falando que você seria mais popular se agisse mais como você mesma e menos como a Kimiko." },
    { nome = "Mio", texto="DO QUE VOCÊ ESTÁ FALANDO?! Eu não estou imitando ela." },
    { nome = "Kenji", texto="Ok. Só quero que saiba que ela é um péssimo exemplo." },
    { nome = "Mio", texto="Cala essa boca e vai logo pro ônibus!" },
    { nome = "Kenji", texto="O ônibus não vai sair sem você também, 'princesa'. Então vamos logo." },
    -- no ônibus   
    { nome = "Kaede", texto="Escolha um lugar e sente-se.", bg="bus"}, 
    { nome = "Takashi", texto="Aqui! Chega mais, meu consagrado." }, 
    { nome = "Takashi", texto="Reclamou tanto e no final eu ainda tive que ficar te esperando." }, 
    { nome = "Kenji", texto="Ah! Tive uns imprevistos enquanto voltava pro ônibus." },
    { nome = "Takashi", texto="Tipo o quê? Tua menstruação desceu?" },
    { nome = "Kenji", texto="Cala essa boca." },
    { nome = "Takashi", texto="Cara, essa pode ser a grande oportunidade que eu estava esperando." },
    { nome = "Takashi", texto="Cinco dias em Kamakura. Cinco dias e noites podendo ver minha Naomi-chan." }, -- ajustar o tempo se necessário
    { nome = "Takashi", texto="E você? Quando vai tomar vergonha na cara e se apaixonar novamente?" },
    -- pode mudar motivo depois (abaixo)
    { nome = "Kenji", texto="Ah! Tudo tem seu tempo, cara. Depois daquilo que aconteceu na nossa excursão da oitava série..." }, 
    { nome = "Takashi", texto="Qual foi, cara? Isso é passado. Não é porque uma te deu o pé na bunda que todas irão." },
    { nome = "Takashi", texto="Por exemplo, eu sempre fui rejeitado. Isso quer dizer que serei rejeitado pela Naomi-chan? Não responda!" },
    { nome = "Kenji", texto="É. Você tem razão. Talvez as coisas mudem pra mim." }, 
    { nome = "Takashi", texto="É assim que se fala, meu chegado!" }, 
    { nome = "Takashi", texto="Quando estivermos nesse ônibus de novo, voltando pra casa, vamos estar rindo à toa por tudo o que aconteceu com a gente na viagem." }, 
    { nome = "Takashi", texto="Não deixe que um trauma te assombre pelo resto da vida." }, 
    -- monólogo interno abaixo
    { nome = "Kenji", texto="(Odeio concordar com o Takashi, mas ele tem razão.)" }, 
    { nome = "Kenji", texto="(Não é porque a Hanako destruiu meu coração que eu tenho que desistir de ter uma namorada.)" },
    { nome = "Kenji", texto="(Mas... mas eu confesso que aquelas palavras ainda me machucam.)" }, 
    -- pensamento do passado ainda dentro do monólogo
    -- mudar essa história do passado depois. Só inventei uma desculpa pra avançar a história.
    { nome = "Kenji", texto="(Droga! Vou me atrasar. Minha namorada está me esperando na praia.)", bg="fiap"},
    { nome = "Kenji", texto="(Essa excursão veio em ótima hora. Tem vários lugares ótimos pra se ter um encontro aqui em Hokkaido.)" },
    { nome = "Kenji", texto="(Preciso aproveitar ao máximo pra aprofundar minha relação com a Hanako.)" },
    { nome = "Kenji", texto="(Oi, meu amor. Desculpa te fazer esperar.)", bg="praia"}, -- bg temporário
    { nome ="Kenji", texto="Tem vários lugares que eu queria visitar com vo-"},
    { nome = "Hanako", texto="(Estou cansada de você. Quero terminar.)" }, 
    { nome = "Kenji", texto="(Mas... Mas por quê?)"},
    { nome = "Hanako", texto="(Só me deixe em paz. Nunca mais apareça na minha vida!)" },
    { nome = "Hanako", texto="(Eu te odeio.)" },
    -- fim do pensamento do passado
    { nome = "Kenji", texto="(Isso nunca saiu da minha cabeça.)", bg="bus"},
    { nome = "Kenji", texto="(Até hoje não entendo o motivo de ela ter dito aquilo. Eu não sei o que fiz de errado.)"},
    -- fim do monólogo interno
    { nome = "Takashi", texto="Acorda, cara. Tá dormindo acordado?" }, 
    { nome = "Kenji", texto="Ah! Foi mal. O que tu estava falando?" },
    { nome = "Takashi", texto="De mulher, ué. Eu só sei falar disso e de bolo." }, 
    { nome = "Kenji", texto="Entendível." }, 
    { nome = "Takashi", texto="Enfim, terá várias gatinhas pra gente ficar de olho em Kamakura." }, 
    { nome = "Takashi", texto="Claro que a Naomi-chan é minha prioridade, mas é sempre bom ter um plano B." }, 
    { nome = "Kenji", texto="Boa sorte! Vai precisar. E muita." },
    { nome = "Takashi", texto="NÃO ACREDITA NO MEU POTENCIAL? EU VOU CONSEGUIR UMA NAMORADA E ESFREGAR ISSO NA SUA CARA." }, -- falou alto
    -- Kimiko e Mio falando abaixo
    { nome = "Kimiko", texto="Cala essa boca, nerdão. A única mulher que olha pra você é sua mãe. Isso se ela não te abandonou." },
    { nome = "Takashi", texto="Ei! Tem a minha avó também." },
    { nome = "Mio", texto="Kimi-chan, o Junpei me mandou mensagem pedindo pra você desbloquear ele." },
    { nome = "Kimiko", texto="Ah! Já cansei desse." },
    { nome = "Kimiko", texto="Com certeza tem garotos bem melhores em Kamakura." },
    -- fim das falas da Kimiko e Mio
    { nome = "Kenji", texto="(Essa aí troca de namorado que nem troca de calcinha.)" }, -- monólogo interno
    { nome = "Kenji", texto="(Bom... Eu acho que ela troca de calcinha com frequência...)" }, -- monólogo interno
    { nome = "Kaede", texto="Vamos partir agora. Peço para que se comportem durante a viagem." },
    { nome = "Kenji", texto = "(Sinto que essa viagem será inesquecível.)" },-- monólogo interno
    { nome = "Kenji", texto = "(As paisagens e a comida são coisas excelentes que terei em Kamakura.)" },-- monólogo interno
    { nome = "Kenji", texto = "(Mas eu não sei. Eu sinto que...)" },-- monólogo interno
    { nome = "Kenji", texto = "(Eu sinto que essa viagem irá mudar minha vida para sempre.)" },-- monólogo interno
    -- aqui começa o gancho para as escolhas do capítulo 1
    { nome = "Takashi", texto = "Você não pode ficar se limitando por causa do passado. Especialmente porque temos várias gatinhas na nossa turma." },
    { nome = "Takashi", texto = "Olha em volta. Tem certeza que nenhuma te atrai?" },
    -- Aparece aqui uma breve descrição de um narrador falando sobre as escolhas e depois pede pra escolher
    -- ôninus parte
    -- aparece imagem do ônibus de cima e o nome do jogo
    -- aparece "algumas horas depois"
    -- eles chegam e fim de capítulo
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    { nome = "Hanako", texto="FIM DO CAPÍTULO 1" },
    
}

-- Sistema de interações
chapter_0.interacoes = {
    [5] = { -- índice do diálogo onde a interação aparece
        nome_personagem = "Takashi", -- quem responde
        opcoes = {
            "Só pode ser",
            "Jogo lol",
            "Durmo",
            "Leio mangá"
        },
        respostas = {
            "Ok",
            "Ok kkk",
            "Tá",
            "Tá bom"
        }
    }
}

return chapter_0
