CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    descricao VARCHAR(150)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo, descricao) VALUES
("Medicamentos", "Remédios para diversas finalidades"),
("Higiene", "Produtos de higiene"),
("Cosméticos", "Maquiagens e cuidados"),
("Vitaminas", "Suplementos"),
("Infantil", "Produtos para crianças");

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    quantidade INT NOT NULL,
    fabricante VARCHAR(100),
    categoria_id BIGINT,
    
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
    
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, preco, quantidade, fabricante, categoria_id) VALUES
("Paracetamol", 12.50, 50, "Neo Quimica", 1),
("Ibuprofeno", 18.00, 30, "Neo Quimica", 1),
("Shampoo", 32.90, 20, "Seda", 2),
("Sabonete", 15.00, 40, "Protex", 2),
("Base", 65.00, 15, "Boca Rosa", 3),
("Hidratante", 55.00, 25, "Dove", 3),
("Vitamina C", 48.00, 35, "Neo Quimica", 4),
("Pomada Infantil", 22.00, 18, "BabyCare", 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT nome, preco, quantidade, fabricante, tb_categorias.tipo, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, preco, quantidade, fabricante, tb_categorias.tipo, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tipo = "Cosméticos";