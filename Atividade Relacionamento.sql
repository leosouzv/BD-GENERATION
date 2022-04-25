CREATE DATABASE db_servicos_quitanda;
USE db_servicos_quitanda;

CREATE TABLE tb_categoria(
    id_categoria bigint auto_increment primary key,
    nome_categoria varchar(100)
);

CREATE TABLE tb_produtos(
    codigo_produto bigint auto_increment primary key,
    nome varchar(100),
    valor decimal(65, 2),
    quantidade bigint,
    avaliacao double,
    id_categoria bigint,
    foreign key(codigo_produto) references tb_categoria(id_categoria)
);

INSERT tb_categoria(nome_categoria)VALUES("Frutas");
INSERT tb_categoria(nome_categoria)VALUES("Legumes");
INSERT tb_categoria(nome_categoria)VALUES("Frutas Secas");
INSERT tb_categoria(nome_categoria)VALUES("Queijos");
INSERT tb_categoria(nome_categoria)VALUES("Salgados");

INSERT tb_produtos(nome, valor, quantidade, avaliacao, id_categoria)VALUES("Maça", 10.00, 12, 5.0, 1);
INSERT tb_produtos(nome, valor, quantidade, avaliacao,id_categoria)VALUES("Alho descascado", 59.80, 10, 4.0, 2);
INSERT tb_produtos(nome, valor, quantidade, avaliacao, id_categoria)VALUES("Ameixa sem caroço", 69.90, 5, 4.9, 3);
INSERT tb_produtos(nome, valor, quantidade, avaliacao, id_categoria)VALUES("Queijo Minas", 39.98, 1, 3.0, 4);
INSERT tb_produtos(nome, valor, quantidade, avaliacao, id_categoria)VALUES("Empadinha de Camarão", 34.98, 18, 3.9, 5);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categoria;
SELECT * FROM tb_categoria INNER JOIN tb_produtos ON  tb_categoria.id_categoria = 
tb_produtos.id_categoria WHERE tb_produtos.valor > 50.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%a%";
UPDATE tb_produtos SET nome = "Pêssego" WHERE codigo_produto = 1;