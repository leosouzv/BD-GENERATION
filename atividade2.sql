CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
valor INT,
tipo VARCHAR(255),
codigo_produto INT,
estoque CHAR,

PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome,valor,tipo,codigo_produto,estoque) VALUES("SSD Kingston 120GB", 160,"Hardware",171,1);
INSERT INTO tb_produtos(nome,valor,tipo,codigo_produto,estoque) VALUES("SSD Samsung EVO 500GB", 644,"Hardware",192,1);
INSERT INTO tb_produtos(nome,valor,tipo,codigo_produto,estoque) VALUES("Memória RAM Ballistrix 8GB", 533,"Hardware",129,1);
INSERT INTO tb_produtos(nome,valor,tipo,codigo_produto,estoque) VALUES("The Last Of Us", 50,"Mídia Física",081,1);
INSERT INTO tb_produtos(nome,valor,tipo,codigo_produto,estoque) VALUES("Red Dead Redemption 2 PC", 7,"Mídia Digital",091,1);
INSERT INTO tb_produtos(nome,valor,tipo,codigo_produto,estoque) VALUES("HD Externo Seagate 2TB", 508,"Hardware",100,0);
INSERT INTO tb_produtos(nome,valor,tipo,codigo_produto,estoque) VALUES("SSD M.2 Kingston Nvme 250GB", 280,"Hardware",201,1);
INSERT INTO tb_produtos(nome,valor,tipo,codigo_produto,estoque) VALUES("Processador AMD Ryzen 5600G", 1438,"Hardware",291,1);


SELECT * FROM tb_produtos WHERE valor>500;
SELECT * FROM tb_produtos WHERE valor<500;

UPDATE tb_produtos SET estoque = 0 WHERE id=3;
