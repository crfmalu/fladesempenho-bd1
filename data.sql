INSERT INTO competicao (nome_camp, ano_realizacao, regulamento)
VALUES ('Campeonato Brasileiro', 2026, 'Pontos Corridos');

INSERT INTO adversario (local_origem, nome_clube)
VALUES ('São Paulo', 'São Paulo');

INSERT INTO tecnico (data_inicio, esquema_tatico, nome)
VALUES ('2024-09-30', '4-2-3-1', 'Filipe Luís');

INSERT INTO atleta (posicao, nome, status_elenco, numero_camisa)
VALUES 
    ('ATACANTE', 'PEDRO', 'TITULAR', 9),
    ('ATACANTE', 'EVERTON', 'TITULAR', 11),
    ('ATACANTE', 'GONZALO PLATA', 'TITULAR', 19),
    ('MEIO-CAMPO', 'JORGE CARRASCAL', 'TITULAR', 15),
    ('MEIO-CAMPO', 'ERICK PULGAR', 'TITULAR', 5),
    ('MEIO-CAMPO', 'EVERTTON ARAÚJO', 'TITULAR', 52),
    ('LATERAL', 'ALEX SANDRO', 'TITULAR', 26),
    ('ZAGUEIRO', 'LEO PEREIRA', 'TITULAR', 4),
    ('ZAGUEIRO', 'LEO ORTIZ', 'TITULAR', 3),
    ('LATERAL', 'VARELA', 'TITULAR', 2),
    ('GOLEIRO', 'AGUSTIN ROSSI', 'TITULAR', 1);

INSERT INTO partidas (mando_campo, gols_pro, gols_contra, data_hora, c_id_competicao, a_id_adversario, t_id_tecnico)
VALUES ('FORA', 1, 2, '2026-01-28 21:30:00', 1, 1, 1 );

INSERT INTO participacao (gols_marcados, cartao_am, cartao_verm, minutos, assistencias, id_atleta, id_partida)
VALUES
    (0, 0, 0, 56, 1, 1, 1),
    (0, 0, 0, 62, 0, 2, 1),
    (1, 0, 0, 90, 0, 3, 1),
    (0, 0, 0, 62, 0, 4, 1),
    (0, 0, 0, 90, 0, 5, 1),
    (0, 0, 0, 56, 0, 6, 1),
    (0, 0, 0, 90, 0, 7, 1),
    (0, 0, 0, 90, 0, 8, 1),
    (0, 0, 0, 90, 0, 9, 1),
    (0, 0, 0, 90, 0, 10, 1),
    (0, 0, 0, 90, 0, 11, 1);


