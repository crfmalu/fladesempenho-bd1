INSERT INTO competicao (nome_camp, ano_realizacao, regulamento)
VALUES
    ('Campeonato Carioca', 2026, 'Mata-Mata'),
    ('Campeonato Brasileiro', 2026, 'Pontos Corridos');

INSERT INTO adversario (local_origem, nome_clube)
VALUES 
    ('Rio de Janeiro', 'Madureira'),
    ('Rio de Janeiro', 'Fluminense'),
    ('Minas Gerais', 'Cruzeiro'),
    ('Rio de Janeiro', 'Botafogo');

INSERT INTO tecnico (data_inicio, esquema_tatico, nome)
VALUES 
    ('2024-09-30', '4-2-3-1', 'Filipe Luís'),
    ('2024-04-03', '4-4-2', 'Leonardo Jardim');

INSERT INTO atleta (posicao, nome, status_elenco, numero_camisa)
VALUES 
    ('ATACANTE', 'PEDRO', 'TITULAR', 9),
    ('ATACANTE', 'EVERTON', 'TITULAR', 11),
    ('ATACANTE', 'JORGE CARRASCAL', 'TITULAR', 15),
    ('MEIO-CAMPO', 'LUCAS PAQUETÁ', 'TITULAR', 20),
    ('MEIO-CAMPO', 'NICO DE LA CRUZ', 'TITULAR', 18),
    ('MEIO-CAMPO', 'EVERTTON ARAÚJO', 'TITULAR', 52),
    ('LATERAL', 'ALEX SANDRO', 'TITULAR', 26),
    ('ZAGUEIRO', 'VITÃO', 'TITULAR', 44),
    ('ZAGUEIRO', 'LEO ORTIZ', 'TITULAR', 3),
    ('LATERAL', 'EMERSON ROYAL', 'TITULAR', 22),
    ('GOLEIRO', 'ANDREW VENTURA', 'TITULAR', 42),
    ('ATACANTE', 'SAMUEL LINO', 'RESERVA', 16),
    ('ATACANTE', 'LUIZ ARAÚJO', 'RESERVA', 7),
    ('ATACANTE', 'WALLACE YAN', 'RESERVA', 64),
    ('ATACANTE', 'GONZALO PLATA', 'RESERVA', 19),
    ('MEIO-CAMPO', 'ERICK PULGAR', 'RESERVA', 5),
    ('MEIO-CAMPO', 'ARRASCAETA', 'RESERVA', 10),
    ('MEIO-CAMPO', 'JORGINHO', 'RESERVA', 21),
    ('LATERAL', 'VARELA', 'RESERVA', 2),
    ('LATERAL', 'AYRTON LUCAS', 'RESERVA', 6),
    ('ZAGUEIRO', 'LEO PEREIRA', 'RESERVA', 4),
    ('GOLEIRO', 'ANDREW VENTURA', 'TITULAR', 42);

INSERT INTO partidas (mando_campo, gols_pro, gols_contra, data_hora, c_id_competicao, a_id_adversario, t_id_tecnico)
VALUES 
    ('FORA', 0, 8, '2026-03-02 21:00:00', 1, 1, 1 ),
    ('FORA', 0, 0, '2026-03-08 18:00:00', 1, 2, 2 ),
    ('CASA', 0, 2, '2026-03-11 21:30:00', 2, 3, 2 ),
    ('FORA', 0, 3, '2026-03-14 20:30:00', 2, 4, 2 );

INSERT INTO participacao (gols_marcados, cartao_am, cartao_verm, minutos, assistencias, id_atleta, id_partida)
VALUES
    (4, 0, 0, 90, 1, 1, 1),    
    (0, 0, 0, 73, 0, 1, 2),
    (1, 0, 0, 89, 0, 1, 3),
    (1, 0, 0, 90, 0, 1, 4),
    (0, 0, 0, 68, 0, 2, 1),    
    (0, 0, 0, 26, 0, 2, 2),
    (0, 0, 0, 65, 0, 2, 3),
    (0, 0, 0, 57, 2, 3, 1),    
    (0, 0, 0, 64, 0, 3, 2),
    (1, 0, 0, 18, 0, 3, 3),
    (0, 0, 0, 86, 0, 3, 4),
    (2, 0, 0, 90, 0, 4, 1),    
    (0, 0, 0, 26, 0, 4, 2),
    (0, 0, 0, 74, 0, 4, 3),
    (0, 0, 0, 90, 0, 4, 4),
    (0, 0, 0, 57, 0, 5, 1),    
    (0, 1, 0, 85, 1, 6, 1),    
    (0, 0, 0, 20, 0, 6, 4),
    (0, 0, 0, 90, 1, 7, 1),    
    (0, 0, 0, 90, 0, 7, 2),
    (0, 0, 0, 90, 0, 7, 3),
    (0, 0, 0, 65, 0, 7, 4),
    (0, 0, 0, 90, 0, 8, 1),    
    (0, 0, 0, 25, 0, 8, 4),
    (0, 0, 0, 85, 0, 9, 1),    
    (0, 0, 0, 90, 0, 9, 2),
    (0, 0, 0, 90, 0, 9, 3),
    (0, 0, 0, 90, 0, 9, 4),
    (0, 0, 0, 90, 1, 10, 1),   
    (0, 0, 0, 74, 0, 10, 3),
    (0, 0, 0, 90, 0, 11, 1),   
    (1, 0, 0, 22, 0, 12, 1),   
    (0, 1, 0, 64, 0, 12, 2),
    (0, 0, 0, 25, 1, 12, 3),
    (1, 0, 0, 90, 0, 12, 4),
    (0, 0, 0, 33, 0, 13, 1),   
    (0, 0, 0, 5, 0, 13, 2),
    (0, 0, 0, 1, 0, 13, 3),
    (0, 0, 0, 4, 0, 13, 4),                
    (0, 0, 0, 5, 0, 14, 1),   
    (0, 0, 0, 1, 0, 14, 3),  
    (0, 0, 0, 17, 0, 15, 2),   
    (0, 0, 0, 4, 0, 15, 4),   
    (0, 0, 0, 90, 0, 16, 2),   
    (0, 1, 0, 90, 0, 16, 3),
    (0, 1, 0, 70, 0, 16, 4),  
    (0, 0, 0, 85, 0, 17, 2),   
    (0, 0, 0, 89, 0, 17, 3),  
    (0, 1, 0, 90, 0, 18, 2),   
    (0, 0, 0, 90, 0, 18, 3),
    (0, 1, 0, 86, 0, 18, 4),    
    (0, 0, 0, 90, 0, 19, 2),   
    (0, 0, 0, 16, 0, 19, 3),
    (0, 0, 0, 90, 2, 19, 4),  
    (0, 0, 0, 25, 0, 20, 4),       
    (0, 0, 0, 90, 0, 21, 2),   
    (0, 1, 0, 90, 0, 21, 3),
    (1, 0, 0, 65, 0, 21, 4),
    (0, 0, 0, 90, 0, 22, 2),   
    (0, 0, 0, 90, 0, 22, 3),
    (0, 0, 0, 90, 0, 22, 4);             



START TRANSACTION; 

UPDATE atleta
SET status_elenco = 'RESERVA'
WHERE id_atleta IN (1, 12, 17, 3),
WHERE id_partida IN = 2

COMMIT; 

START TRANSACTION;

DELETE FROM adversario;

ROLLBACK;

