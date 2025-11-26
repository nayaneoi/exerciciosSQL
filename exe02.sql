CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    produto VARCHAR(500) NOT NULL,
    marca VARCHAR(500) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT,
	PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, marca, preco, estoque)
VALUES ("Monitor", "Acer", 745.00, "50");
INSERT INTO tb_produtos(produto, marca, preco, estoque)
VALUES ("Mouse sem fio", "Logitech", 449.90, "150");
INSERT INTO tb_produtos(produto, marca, preco, estoque)
VALUES ("Teclado Gamer", "Redragon", 131.00, "200");
INSERT INTO tb_produtos(produto, marca, preco, estoque)
VALUES ("Fone", "JBL", 197.00, "380");
INSERT INTO tb_produtos(produto, marca, preco, estoque)
VALUES ("Notebook", "Vaio", 3371.00, "250");
INSERT INTO tb_produtos(produto, marca, preco, estoque)
VALUES ("Cadeira Gamer", "ThunderX3", 1179.90, "50");
INSERT INTO tb_produtos(produto, marca, preco, estoque)
VALUES ("Suporte para Notebook", "OCTOO", 30.00, "500");
INSERT INTO tb_produtos(produto, marca, preco, estoque)
VALUES ("Tablet", "Galaxy", 858.00, "250");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET produto = "Fone sem fio" WHERE id = 4;
