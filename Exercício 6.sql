CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255)
);

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria_id BIGINT,
	nome_curso VARCHAR(255),
	professor VARCHAR(255),
    valor DECIMAL,
	
    FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)
);
    
	SELECT * FROM tb_categorias;
    SELECT * FROM tb_cursos;
    
    INSERT INTO tb_categorias(nome_categoria) VALUES ("Saúde");
	INSERT INTO tb_categorias(nome_categoria) VALUES ("Tecnologia");
    INSERT INTO tb_categorias(nome_categoria) VALUES ("Linguagens");
	INSERT INTO tb_categorias(nome_categoria) VALUES ("Humanas");
    

    INSERT INTO tb_cursos(nome_curso, categoria_id, professor, valor) VALUES("Antropologia", 4, "João Costa", 800);
    INSERT INTO tb_cursos(nome_curso, categoria_id, professor, valor) VALUES("Ciências da computação", 2, "Alice Sales", 850);
    INSERT INTO tb_cursos(nome_curso, categoria_id, professor, valor) VALUES("Francês", 3, "Gonçalves", 400);
    INSERT INTO tb_cursos(nome_curso, categoria_id, professor, valor) VALUES("Espanhol", 3, "Ana Catarina", 400);
    INSERT INTO tb_cursos(nome_curso, categoria_id, professor, valor) VALUES("Fisioterapia", 1, "Valéria Santos", 780);
    INSERT INTO tb_cursos(nome_curso, categoria_id, professor, valor) VALUES("Engenharia de Controle e Automação", 2, "Helena Costa", 870);
    INSERT INTO tb_cursos(nome_curso, categoria_id, professor, valor) VALUES("Sistemas de informação", 2, "Miguel Souza", 755);
    INSERT INTO tb_cursos(nome_curso, categoria_id, professor, valor) VALUES("Design", 2, "Larissa", 550);
    
    SELECT * FROM tb_cursos WHERE valor > 500;
	SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;
    SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J";
  
  SELECT * FROM tb_cursos c
	INNER JOIN tb_categorias s
		ON s.id = c.categoria_id;
  
  SELECT * FROM tb_cursos c
	INNER JOIN tb_categorias s
		ON s.id = c.categoria_id 
	WHERE s.id = 3;
        
    
  
  