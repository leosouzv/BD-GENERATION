CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
nota_media DOUBLE,
serie VARCHAR(255),
nome_do_responsavel VARCHAR(255),

PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome,idade,nota_media,serie,nome_do_responsavel)VALUES("José Carvalho Pinto",16 , 8.5, "2 E.M", "Silvana Ciclana");
INSERT INTO tb_estudantes(nome,idade,nota_media,serie,nome_do_responsavel)VALUES("Rubens Vieira",16 , 7.5, "2 E.M", "Tatiana Ciclana");
INSERT INTO tb_estudantes(nome,idade,nota_media,serie,nome_do_responsavel)VALUES("Leonardo Silveira",17 , 9.5, "3 E.M", "Betania Ciclana");
INSERT INTO tb_estudantes(nome,idade,nota_media,serie,nome_do_responsavel)VALUES("Israel Paulo Andre",15 , 6.5, "1 E.M", "Vitoria Nascimento");
INSERT INTO tb_estudantes(nome,idade,nota_media,serie,nome_do_responsavel)VALUES("Lucas Muller",18 , 4.0, "3 E.M", "Laura Nogueira Muller");
INSERT INTO tb_estudantes(nome,idade,nota_media,serie,nome_do_responsavel)VALUES("Carlos Tonello",15 , 8.5, "9A F2 ", "Jose Alves Tonello");
INSERT INTO tb_estudantes(nome,idade,nota_media,serie,nome_do_responsavel)VALUES("Natan de Oliveira",17 , 9.0, "3 E.M", "Julia Ferreira de Oliveira");
INSERT INTO tb_estudantes(nome,idade,nota_media,serie,nome_do_responsavel)VALUES("José Alves",14 , 5.5, "8B F2", "Silvana Betania Alves");

SELECT * FROM tb_estudantes WHERE nota_media > 7.0;
SELECT * FROM tb_estudantes WHERE nota_media < 7.0;

UPDATE tb_estudantes SET nota_media = 6.0 WHERE id=5;

