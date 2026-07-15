CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_departamento(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80)
);

CREATE TABLE tb_funcionario(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    id_departamento BIGINT,
    FOREIGN KEY (id_departamento) REFERENCES tb_departamento(id)
);

INSERT INTO tb_departamento(nome) 
VALUES ("Diretoria"),
("Contabilidade"),
("Atendimento"),
("Suporte Técnico"),
("Desenvolvimento"),
("Infraestrutura"),
("Segurança"),
("Qualidade (QA)"),
("Comunicação"),
("Relações Públicas");

INSERT INTO tb_funcionario(nome, salario, id_departamento)
VALUES ("Ana Silva", 3500.00, 5),
("Carlos Souza", 2800.00, 4),
("Mariana Santos", 5200.00, 1),
("Pedro Rocha", 1900.00, 3),
("Julia Costa", 4500.00, 8),
("Fernanda Lima", 3100.00, 2),
("Lucas Oliveira", 2200.00, 9),
("Bruno Martins", 6000.00, 6),
("Camila Rodrigues", 4100.00, 7),
("Rafael Barbosa", 2700.00, 10);

SELECT * FROM tb_departamento;
SELECT * FROM tb_funcionario;

SELECT * FROM tb_funcionario WHERE tb_funcionario.salario > 3000.00;

UPDATE tb_funcionario SET tb_funcionario.salario = 3200.00 WHERE tb_funcionario.nome = "Carlos Souza";

DELETE FROM tb_funcionario WHERE tb_funcionario.nome = "Pedro Rocha";

SELECT tb_funcionario.nome AS Funcionario, 
tb_funcionario.salario AS Salario, 
tb_departamento.nome AS Departamento 
FROM tb_funcionario
INNER JOIN tb_departamento 
ON tb_funcionario.id_departamento = tb_departamento.id;
