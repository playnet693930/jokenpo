-- Função para obter a escolha do jogador
function obterEscolhaDoJogador()
    print("Escolha uma opção: (1) Pedra, (2) Papel, (3) Tesoura")
    local escolha = io.read("*n")  -- Lê um número do usuário
    return escolha
end

-- Função para obter a escolha do computador
function obterEscolhaDoComputador()
    math.randomseed(os.time())  -- Semente aleatória baseada no tempo atual
    local escolhas = {"Pedra", "Papel", "Tesoura"}
    local indice = math.random(1, 3)  -- Gera um número aleatório entre 1 e 3
    return escolhas[indice]
end

-- Função para determinar o vencedor
function determinarVencedor(escolhaJogador, escolhaComputador)
    if escolhaJogador == escolhaComputador then
        return "Empate"
    elseif (escolhaJogador == 1 and escolhaComputador == "Tesoura") or
           (escolhaJogador == 2 and escolhaComputador == "Pedra") or
           (escolhaJogador == 3 and escolhaComputador == "Papel") then
        return "Jogador venceu!"
    else
        return "Computador venceu!"
    end
end

-- Função principal
function jogoPedraPapelTesoura()
    print("Bem-vindo ao jogo Pedra, Papel, Tesoura!")
    local escolhaJogador = obterEscolhaDoJogador()
    local escolhaComputador = obterEscolhaDoComputador()
    print("O computador escolheu: " .. escolhaComputador)
    local resultado = determinarVencedor(escolhaJogador, escolhaComputador)
    print(resultado)
end

-- Chamada da função principal para iniciar o jogo
jogoPedraPapelTesoura()
