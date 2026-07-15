CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_categoria(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE tb_produto(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(nome) 
VALUES ("Eletrônicos"),
("Eletrodomésticos"),
("Móveis"),
("Moda Masculina"),
("Calçados"),
("Brinquedos"),
("Livros"),
("Papelaria"),
("Beleza e Perfumaria"),
("Esportes");

INSERT INTO tb_produto(nome, preco, id_categoria)
VALUES ("Smartphone 128GB", 1899.90, 1),
("Fone de Ouvido Bluetooth", 149.90, 1),
("Liquidificador Turbo", 220.00, 2),
("Cadeira de Escritório Ergonômica", 650.00, 3),
("Camiseta de Algodão", 59.90, 4),
("Tênis de Corrida", 299.90, 5),
("Jogo de Tabuleiro Clássico", 120.00, 6),
("Livro de Banco de Dados SQL", 89.00, 7),
("Perfume Importado 100ml", 450.00, 9),
("Bola de Futebol Oficial", 130.00, 10);

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE tb_produto.preco < 200.00;

UPDATE tb_produto SET tb_produto.preco = 129.90 WHERE tb_produto.nome = "Fone de Ouvido Bluetooth";

DELETE FROM tb_produto WHERE tb_produto.nome = "Camiseta de Algodão";

SELECT tb_produto.nome AS Produto, 
tb_produto.preco AS Preco, 
tb_categoria.nome AS Categoria FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_produto.id_categoria = tb_categoria.id;
