/* Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
 */
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
INSERT INTO tb_estudantes(nome_estudante, ativo, idade, endereco, notas) VALUES ("Carlos", true, 17, "Rua Tirandentes", 7.0);
INSERT INTO tb_estudantes(nome_estudante, ativo, idade, endereco, notas) VALUES ("Maria", true, 12, "Rua Tirandentes", 6.5);
INSERT INTO tb_estudantes(nome_estudante, ativo, idade, endereco, notas) VALUES ("Lurdes", true, 11, "Rua Tirandentes", 7.4);
 
 SELECT * FROM tb_estudantes WHERE notas > 7;
 SELECT * FROM tb_estudantes WHERE notas < 7;
 SELECT * FROM tb_estudantes;