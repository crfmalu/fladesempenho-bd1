
CREATE TABLE competicao (
    id_competicao INT NOT NULL AUTO_INCREMENT,
    nome_camp VARCHAR(100) NOT NULL,
    ano_realizacao INT NOT NULL,
    regulamento VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_competicao),
    CONSTRAINT chk_regulamento CHECK (regulamento IN ('Pontos Corridos', 'Mata-Mata'))
)

CREATE TABLE adversario (
    id_adversario INT NOT NULL AUTO_INCREMENT,
    local_origem VARCHAR(100) NOT NULL,
    nome_clube VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_adversario)
)

CREATE TABLE tecnico (
    id_tecnico INT NOT NULL AUTO_INCREMENT,
    data_inicio DATE NOT NULL,
    esquema_tatico VARCHAR(10) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_tecnico)
)

CREATE TABLE atleta (
    id_atleta INT NOT NULL AUTO_INCREMENT,
    posicao VARCHAR(30) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    status_elenco VARCHAR(50) NOT NULL,
    numero_camisa INT NOT NULL,
    PRIMARY KEY (id_atleta),
    CONSTRAINT chk_status_elenco CHECK (status_elenco IN ('TITULAR', 'RESERVA')),
    CONSTRAINT chk_posicao CHECK (posicao IN ('GOLEIRO', 'ZAGUEIRO', 'LATERAL', 'MEIO-CAMPO', 'ATACANTE'))
)

CREATE TABLE partidas (
    id_partida INT NOT NULL AUTO_INCREMENT,
    mando_campo VARCHAR(10) NOT NULL,
    gols_pro INT NOT NULL,
    gols_contra INT NOT NULL,
    data_hora TIMESTAMP NOT NULL,
    c_id_competicao INT NOT NULL,
    a_id_adversario INT NOT NULL,
    t_id_tecnico INT NOT NULL,
    PRIMARY KEY (id_partida),
    CONSTRAINT chk_mando_campo CHECK (mando_campo IN ('Casa', 'Fora'))
    FOREIGN KEY (c_id_competicao) REFERENCES competicao(id_competicao),
    FOREIGN KEY (a_id_adversario) REFERENCES adversario(id_adversario),
    FOREIGN KEY (t_id_tecnico) REFERENCES tecnico(id_tecnico)
)

CREATE TABLE participacao (
    id_partida INT NOT NULL,
    id_atleta INT NOT NULL,
    gols_marcados INT NOT NULL,
    cartao_am INT NOT NULL,
    cartao_verm INT NOT NULL,
    minutos INT NOT NULL,
    assistencias INT NOT NULL,
    PRIMARY KEY (id_partida, id_atleta),
    FOREIGN KEY (id_partida) REFERENCES partidas(id_partida),
    FOREIGN KEY (id_atleta) REFERENCES atleta(id_atleta),
    CONSTRAINT chk_cartao_am CHECK (cartao_am IN (0, 1, 2)),
    CONSTRAINT chk_cartao_verm CHECK (cartao_verm IN (0, 1))
)