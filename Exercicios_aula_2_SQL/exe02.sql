CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(50) NOT NULL,
    quant_sabores INT,
    tamanho INT
);

INSERT INTO tb_categorias (tipo, quant_sabores, tamanho)VALUES
("Salgada", 1, 8), ("Doce", 2, 4);

CREATE TABLE tb_pizzas(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(50) NOT NULL,
    borda VARCHAR(50) NOT NULL,
    preco DECIMAL (5,2) NOT NULL,
    observacao VARCHAR(100) NOT NULL,
    categorias_id BIGINT,
    
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (sabor, borda, preco, observacao, categorias_id) VALUES
("Mussarela", "Tradicional", 42.00, "Sem observações",1),
("Calabresa", "Tradicional", 48.00, "Se cebola", 1),
("Frango com Catupiry", "Recheada", 55.00, "Sem observações", 1),
("Quatro Queijos","Recheada", 60.00, "Sem observações", 1),
("Chocolate", "Tradicional", 50.00, "Sem observações", 2),
("Banana com Canela", "Tradicional", 47.00, "Sem Canela", 2),
("Vegana Verde", "Tradicional", 58.00, "Sem observações", 1),
("Pepperoni", "Tradicional", 65.00, "Sem observações", 1);


SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT sabor, borda, preco, observacao, tb_categorias.tipo, tb_categorias.quant_sabores, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = categorias_id;

SELECT sabor, borda, preco, observacao, tb_categorias.tipo, tb_categorias.quant_sabores, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = categorias_id
WHERE tipo = "Doce";

