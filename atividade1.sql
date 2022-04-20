CREATE DATABASE db_recursoshumanos;
USE db_recursoshumanos;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
registro INT,
salario INT,
cargo VARCHAR(255),
nivel_cargo VARCHAR(255),

PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome,registro,salario,cargo,nivel_cargo)VALUES("Josue do Carmalho", 566985,2500,"Desenvolvedor FullStack","JR");
INSERT INTO tb_colaboradores(nome,registro,salario,cargo,nivel_cargo)VALUES("Carlos Madeirada", 569185,1500,"Estagiário","JR");
INSERT INTO tb_colaboradores(nome,registro,salario,cargo,nivel_cargo)VALUES("Jorge Lafon", 087435,8000,"Tech Lead","SR");
INSERT INTO tb_colaboradores(nome,registro,salario,cargo,nivel_cargo)VALUES("Drauzio Vraunelas", 299185,4000,"Desenvolvedor Front-end","PL");
INSERT INTO tb_colaboradores(nome,registro,salario,cargo,nivel_cargo)VALUES("Milton Nascimento", 459230,7000,"Scrum Master","SR");


SELECT * FROM tb_colaboradores WHERE salario>2000;
SELECT * FROM tb_colaboradores WHERE salario<2000;

UPDATE tb_colaboradores SET nome = "Drauzio Bruxelas" WHERE id=4;