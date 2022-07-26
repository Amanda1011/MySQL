CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_estudante VARCHAR(255),
    ativo BOOLEAN,
    idade INT,
    endereco VARCHAR(100),
    notas DECIMAL(3,2)
);

SELECT * FROM tb_estudantes;
 INSERT INTO tb_estudantes(nome_estudante, ativo, idade, endereco, notas) VALUES ("Arthur", true, 17, "Av. São Paulo", 6.5);
 INSERT INTO tb_estudantes(nome_estudante, ativo, idade, endereco, notas) VALUES ("Amanda", true, 16, "Rua 13 de maio", 7.7);
 INSERT INTO tb_estudantes(nome_estudante, ativo, idade, endereco, notas) VALUES ("Alex", true, 15, "Av. Dois Rios", 8.0);
 INSERT INTO tb_estudantes(nome_estudante, ativo, idade, endereco, notas) VALUES ("Thaisa", true, 18, "Rua Tirandentes", 9.9);


 
 
