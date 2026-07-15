CREATE DATABASE db_praticatAvaliada;

USE db_praticatAvaliada;

CREATE TABLE tb_curso(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    carga_horaria INT NOT NULL
);

CREATE TABLE tb_aluno(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    id_curso BIGINT,
    FOREIGN KEY (id_curso) REFERENCES tb_curso(id)
);

INSERT INTO tb_curso(nome, carga_horaria) 
VALUES ("Desenvolvimento Web Fullstack", 400),
("Segurança da Informação", 320),
("Desenvolvimento Mobile com Flutter", 280),
("Introdução a Redes de Computadores", 160),
("Cloud Computing e DevOps", 360),
("Engenharia de Dados", 420),
("Metodologias Ágeis", 80),
("Lógica de Programação", 120),
("Sistemas Operacionais", 200),
("Interface de Usuário (UI/UX)", 240);

INSERT INTO tb_aluno(nome, idade, id_curso)
VALUES ("Lucas Souza", 22, 1),
("Mariana Costa", 17, 3),
("Rodrigo Alves", 29, 5),
("Beatriz Lima", 16, 8),
("Gustavo Nogueira", 34, 6),
("Juliana Prado", 41, 2),
("Felipe Teixeira", 19, 10),
("Amanda Melo", 25, 4),
("Roberto Dias", 52, 9),
("Camila Rocha", 18, 7);

SELECT * FROM tb_curso;
SELECT * FROM tb_aluno;

SELECT * FROM tb_aluno WHERE tb_aluno.idade > 17;

UPDATE tb_aluno SET tb_aluno.idade = 21 WHERE tb_aluno.id = 1;

DELETE FROM tb_aluno WHERE id = 5;

SELECT tb_aluno.nome AS Aluno, 
tb_aluno.idade AS Idade, 
tb_curso.nome AS Curso, 
tb_curso.carga_horaria FROM tb_aluno 
INNER JOIN tb_curso 
WHERE tb_aluno.id_curso = tb_curso.id;
