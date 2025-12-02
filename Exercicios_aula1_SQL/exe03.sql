CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    serie VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, data_nascimento, cpf, serie)
VALUES ("Jose Abreu", "2013-02-25", "12345678910", "6ª");
INSERT INTO tb_estudantes(nome, data_nascimento, cpf, serie)
VALUES ("Maria Aparecida", "2016-05-12", "21156789101", "4ª");
INSERT INTO tb_estudantes(nome, data_nascimento, cpf, serie)
VALUES ("Joana Oliveira", "2015-09-02", "23456789101", "5ª");
INSERT INTO tb_estudantes(nome, data_nascimento, cpf, serie)
VALUES ("Pedro Rocha", "2016-08-20", "21457709101", "4ª");
INSERT INTO tb_estudantes(nome, data_nascimento, cpf, serie)
VALUES ("Roberto Carlos ", "2013-06-15", "04345698910", "6ª");
INSERT INTO tb_estudantes(nome, data_nascimento, cpf, serie)
VALUES ("Joana Costa", "2015-10-12", "23466766601", "5ª");
INSERT INTO tb_estudantes(nome, data_nascimento, cpf, serie)
VALUES ("Pedro Sampaio", "2016-11-26", "21457756901", "4ª");
INSERT INTO tb_estudantes(nome, data_nascimento, cpf, serie)
VALUES ("Roberto Justos ", "2013-05-20", "04332198910", "6ª");

SELECT * FROM tb_estudantes;

ALTER TABLE tb_estudantes ADD nota DECIMAL(4,2);

UPDATE tb_estudantes SET nota = 10.00 WHERE Id = 1;
UPDATE tb_estudantes SET nota = 4.05 WHERE Id = 2;
UPDATE tb_estudantes SET nota = 9.50 WHERE Id = 3;
UPDATE tb_estudantes SET nota = 10.00 WHERE Id = 4;
UPDATE tb_estudantes SET nota = 8.00 WHERE Id = 5;
UPDATE tb_estudantes SET nota = 7.00 WHERE Id = 6;
UPDATE tb_estudantes SET nota = 5.00 WHERE Id = 7;
UPDATE tb_estudantes SET nota = 8.50 WHERE Id = 8;

SELECT * FROM tb_estudantes WHERE nota >= 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;
