# Ver a data do jogo, se jogamos em casa ou fora, os gols e o nome do adversário
SELECT 
    partidas.data_hora AS 'Data do Jogo',
    partidas.mando_campo AS 'Mando de Campo',
    partidas.gols_pro AS 'Gols Feitos',
    partidas.gols_contra AS 'Gols Tomados',
    adversario.nome_clube AS 'Adversário'
FROM partidas
JOIN adversario ON partidas.a_id_adversario = adversario.id_adversario;

# Queremos listar o nome do jogador que fez o gol, a posição dele e quantos minutos ele jogou naquela partida
SELECT 
    atleta.nome AS 'Jogador',
    atleta.posicao AS 'Posição',
    participacao.minutos AS 'Tempo em campo'
FROM participacao
JOIN atleta ON participacao.id_atleta = atleta.id_atleta
WHERE participacao.id_partida = 3;

# Encontre o nome e o esquema tático do técnico
SELECT
    tecnico.nome AS 'Técnico do Time',
    tecnico.esquema_tatico AS 'Esquema Tático'
FROM tecnico
WHERE tecnico.data_inicio >= 2024

# Nome e Número da camisa de todos os jogadores que tem posição de goleiro
SELECT 
    atleta.nome AS 'Jogador',
    atleta.numero_camisa AS 'Número da Camisa'
FROM atleta
WHERE atleta.posicao = 'GOLEIRO';

# Mostre a data da partida, o nome do campeonato e o nome do técnico que comandou o time naquele jogo em específico
SELECT
    partida.data_hora AS 'Data do Jogo',
    competicao.nome_camp AS 'Nome do Campeonato',
    tecnico.nome AS 'Técnico no comando do time'
FROM partida
JOIN competicao ON partida.c_id_competicao = competicao.id_competicao,
JOIN tecnico ON partida.t_id_tecnico = tecnico.id_tecnico
WHERE partida.c_id_competicao = 1,
WHERE partida.t_id_tecnico = 1;