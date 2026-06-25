# data do jogo, se jogamos em casa ou fora, os gols e o nome do adversário
SELECT 
    partidas.data_hora AS 'Data do Jogo',
    partidas.mando_campo AS 'Mando de Campo',
    partidas.gols_pro AS 'Gols Feitos',
    partidas.gols_contra AS 'Gols Tomados',
    adversario.nome_clube AS 'Adversário'
FROM partidas
JOIN adversario ON partidas.a_id_adversario = adversario.id_adversario;

# nome do jogador que fez o gol, a posição dele e quantos minutos ele jogou naquela partida
SELECT 
    atleta.nome AS 'Jogador',
    atleta.posicao AS 'Posição',
    participacao.minutos AS 'Tempo em campo'
FROM participacao
JOIN atleta ON participacao.id_atleta = atleta.id_atleta
WHERE participacao.id_partida = 3;

# nome e o esquema tático do técnico a partir de 2024
SELECT
    tecnico.nome AS 'Técnico do Time',
    tecnico.esquema_tatico AS 'Esquema Tático'
FROM tecnico
WHERE tecnico.data_inicio >= '2024-01-01';

# Nome e Número da camisa de todos os jogadores que tem posição de goleiro
SELECT 
    atleta.nome AS 'Jogador',
    atleta.numero_camisa AS 'Número da Camisa'
FROM atleta
WHERE atleta.posicao = 'GOLEIRO';

# data da partida, o nome do campeonato e o nome do técnico que comandou o time naquele jogo em específico
SELECT
    partidas.data_hora AS 'Data do Jogo',
    competicao.nome_camp AS 'Nome do Campeonato',
    tecnico.nome AS 'Técnico no comando do time'
FROM partidas
JOIN competicao ON partidas.c_id_competicao = competicao.id_competicao
JOIN tecnico ON partidas.t_id_tecnico = tecnico.id_tecnico;

# nome e a posição de todos os atletas cujo nome comece com a letra 'E'.
SELECT
    atleta.nome AS 'Nome do Jogador',
    atleta.posicao AS 'Posição'
FROM atleta
WHERE atleta.nome LIKE 'E%';

# nome do jogador, a posição dele e a quantidade de cartões amarelos de todos os atletas que levaram pelo menos 1 cartão amarelo em qualquer jogo.
SELECT
    atleta.nome AS 'Jogador',
    atleta.posicao AS 'Posição',
    participacao.cartao_am AS 'Cartão Amarelo'
FROM participacao
INNER JOIN atleta ON participacao.id_partida = atleta.id_atleta
WHERE participacao.cartao_am >= 1 

# nome de todos os atacantes cadastrados que jogaram na partida número 1, mas que não fizeram nenhum gol
SELECT
    atleta.nome AS 'Nome do Jogador',
    atleta.posicao AS 'Posição',
    participacao.gols_marcados AS 'Gols Marcados'
FROM participacao
INNER JOIN atleta ON participacao.id_atleta = atleta.id_atleta
WHERE partidas.id_partida = 1
AND atleta.posicao = 'ATACANTE'
AND participacao.gols_marcados = 0;

# nome de cada campeonato cadastrado e a quantidade de partidas que pertencem a ele.
SELECT
    competicao.nome_camp AS 'Nome do Campeonato',
    COUNT (partidas.id_partida) AS 'Total de Partidas Disputadas'
FROM competicao 
LEFT JOIN partidas ON competicao.id_competicao = partidas.c_id_competicao
GROUP BY competicao.nome_camp

# estatísticas de todos os jogadores, trazendo junto o nome do jogador e o nome do adversário que ele enfrentou.
SELECT
    atleta.nome AS 'Jogador',
    adversario.nome_clube AS 'Adversário',
    partidas.data_hora AS 'Data do Jogo',
    participacao.minutos AS 'Minutos Jogados',
    participacao.gols_marcados AS 'Gols',
    participacao.assistencias AS 'Assistências'
FROM participacao
INNER JOIN atleta ON participacao.id_atleta = atleta.id_atleta
INNER JOIN partidas ON participacao.id_partida = partidas.id_partida
INNER JOIN adversario ON partidas.a_id_adversario = adversario.id_adversario;

