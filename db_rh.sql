--  1. Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema 
-- trabalhará com as informações dos colaboradores desta empresa. 
-- 2. Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se 
-- trabalhar com o serviço deste RH. 
-- 3. Insira nesta tabela no mínimo 5 dados (registros). 
-- 4. Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000. 
-- 5. Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000. 
-- 6. Ao término atualize um registro desta tabela através de uma query de atualização. 
-- 7. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e 

CREATE DATABASE db_rh_contrata_nois; 

USE db_rh_contrata_nois;

CREATE TABLE tb_colaboradores(
id bigint auto_increment primary key,
nome varchar(40),
telefone int,
data_contrato date,
cargo varchar(100),
endereco varchar(200)
);

INSERT INTO tb_colaboradores(nome, telefone, data_contrato, cargo, endereco)
VALUES ("kasdjugfisd", 9879879, "2020-05-03", "Esdgsdgf", "fsdfSDEFS");


SELECT * FROM tb_colaboradores;

DELETE FROM tb_colaboradores;

DROP TABLE `db_rh_contrata_nois`.`tb_colaboradores`;


INSERT INTO tb_colaboradores(nome, telefone, data_contrato, cargo, endereco)
VALUES ("TESTE", 9879879, "2020-05-03", "TESTE", "fsdfSDEFS");


ALTER TABLE tb_colaboradores add salario bigint;
update tb_colaboradores set salario = 3000 where id = 1;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
