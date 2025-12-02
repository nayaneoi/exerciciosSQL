CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_dadoscolaboradores(
	matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(300) NOT NULL,
    cargo VARCHAR(300) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    datacontratacao DATE NOT NULL,
	PRIMARY KEY (matricula)
);

INSERT INTO tb_dadoscolaboradores(nome, cargo, salario, datacontratacao)
VALUES ("Jose Abreu", "Tech Lead", 12500.00, "2020-12-02");
INSERT INTO tb_dadoscolaboradores(nome, cargo, salario, datacontratacao)
VALUES ("Maria Aparecida", "Gerente", 20000.00, "2019-05-12");
INSERT INTO tb_dadoscolaboradores(nome, cargo, salario, datacontratacao)
VALUES ("Joana Oliveira", "Desenvolvedora Backend Pleno", 9250.89, "2023-03-24");
INSERT INTO tb_dadoscolaboradores(nome, cargo, salario, datacontratacao)
VALUES ("Pedro Rocha", "Analista de QA Pleno", 6500.00, "2022-10-05");
INSERT INTO tb_dadoscolaboradores(nome, cargo, salario, datacontratacao)
VALUES ("Roberto Carlos ", "Analista de Suporte Técnico Pleno", 5000.00, "2023-11-07");


SELECT * FROM tb_dadoscolaboradores;

SELECT * FROM tb_dadoscolaboradores WHERE salario > 2000.00;

SELECT * FROM tb_dadoscolaboradores WHERE salario < 2000.00;

UPDATE tb_dadoscolaboradores SET cargo = "Estagiário de Suporte Técnico" WHERE matricula = 5;

UPDATE tb_dadoscolaboradores SET salario = 1500.00 WHERE matricula = 5;
