CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(50) NOT NULL,
    funcao VARCHAR(100) NOT NULL
);

INSERT INTO tb_classes (tipo, funcao)VALUES
("Herói", "Protagonista"), ("Vilão", "Oponente principal"), ("Aliado", "Ajudam o herói"), ("NPC", "Personagens não controláveis"), ("Figurante", "Apenas preenche o mundo");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
    tipo_poder VARCHAR(100) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    tb_classesid BIGINT NOT NULL,
    
    FOREIGN KEY (tb_personagens) REFERENCES tb_classes(id)
    
);

ALTER TABLE tb_personagens
RENAME COLUMN tb_classesid TO classesid;

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome, tipo_poder, poder_ataque, poder_defesa, classesid)
VALUES ("Capitão Brasil", "Superforça", 10000, 9000, 1);
INSERT INTO tb_personagens (nome, tipo_poder, poder_ataque, poder_defesa, classesid)
VALUES ("Coronel", "Teletransporte", 10000, 8000, 2);
INSERT INTO tb_personagens (nome, tipo_poder, poder_ataque, poder_defesa, classesid)
VALUES ("Mago Chen", "Telecinese ", 8000, 7000, 3);
INSERT INTO tb_personagens (nome, tipo_poder, poder_ataque, poder_defesa, classesid)
VALUES ("Caramelo BR", "Super Mordida", 6500, 6500, 4);
INSERT INTO tb_personagens (nome, tipo_poder, poder_ataque, poder_defesa, classesid)
VALUES ("Capivara BR", "Sono Eterno", 0, 0, 5);

INSERT INTO tb_personagens (nome, tipo_poder, poder_ataque, poder_defesa, classesid)
VALUES ("Samba", "Manipulação de Elementos", 80000, 10000, 1);
INSERT INTO tb_personagens (nome, tipo_poder, poder_ataque, poder_defesa, classesid)
VALUES ("Virus", "Absorção de Habilidades", 10000, 9000, 2);
INSERT INTO tb_personagens (nome, tipo_poder, poder_ataque, poder_defesa, classesid)
VALUES ("Arqueiro Mira", "Artes marciais ", 2000, 7000, 3);





SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 and 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 6000 and 7000;

SELECT nome, tipo_poder, poder_ataque, poder_defesa, tb_classes.tipo, tb_classes.funcao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id;

SELECT nome, tipo_poder, poder_ataque, poder_defesa, tb_classes.tipo, tb_classes.funcao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classesid = tb_classes.id
WHERE tipo = "Herói";

