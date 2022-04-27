/* ATIVIDADE 01
Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá 
ter o seguinte nome db_generation_game_online. O sistema trabalhará com as informações dos 
personagens do jogo. 
O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.*/

/*Boas Práticas:
1.	Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar os personagens do Game Online. */

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id_classe bigint auto_increment primary key,
    nome varchar(50),
    dificuldade varchar(10)
);

/* 2.	Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
relevantes aos personagens do Game Online.
3.	Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens. */

CREATE TABLE tb_personagens(
	id_personagem bigint auto_increment primary key,
    classe_id bigint,
    nome varchar(50),
    vida bigint,
    ataque bigint,
    defesa bigint,
    foreign key(id_personagem) references tb_classes(id_classe)
);

-- 4.	Insira 5 registros na tabela tb_classes.

INSERT tb_classes (nome, dificuldade)
VALUES ("Guerreiro(a)", "Fácil");

INSERT tb_classes (nome, dificuldade)
VALUES ("Arqueiro(a)", "Médio");

INSERT tb_classes (nome, dificuldade)
VALUES ("Mago", "Difícil");

INSERT tb_classes (nome, dificuldade)
VALUES ("Assasino", "Difícil");

INSERT tb_classes (nome, dificuldade)
VALUES ("Tank", "Médio");

INSERT tb_classes (nome, dificuldade)
VALUES ("Suporte" , "Fácil");

SELECT * FROM tb_classes;

/* 5.	Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para 
criar a relação com a tabela tb_classes. */

INSERT tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ("Garen", 4000, 900, 800, 5);

INSERT tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ("Caitlyn", 2000, 1800, 500, 2);

INSERT tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ("Lux", 1900, 1500, 600, 3);

INSERT tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ("Zed", 2500, 2300, 500, 4);

INSERT tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ("Thresh", 3000, 400, 1000, 5);

INSERT tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ("Nami", 1900, 1400, 1600, 6);

INSERT tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ("Qiyana", 2100, 2300, 1600, 4);

INSERT tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ("Nautilus", 2600, 400, 200, 5);

-- 6. Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.

SELECT * FROM tb_personagens WHERE ataque > 2000;

/* 7. Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 
1000 e 2000. */

SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que 
possuam a letra C no atributo nome. */

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
tb_personagens com os dados da tabela tb_classes. */

SELECT * FROM tb_personagens INNER JOIN tb_classes ON  tb_personagens.classe_id = 
tb_classes.id_classe;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens 
que pertençam a uma classe específica.
(Exemplo: Todes os personagens da classe dos arqueiros) */

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = 
tb_classes.id_classe WHERE id_classe = 5;
------
/* Atividade 2
Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados 
deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações 
dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas 
tb_pizzas e tb_categorias, que deverão estar relacionadas. */

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal; 

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar as pizzas. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome varchar(50),
    avaliacao double
);

/* 2.	Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, 
relevantes aos produtos da pizzaria. */
-- 3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas. 

CREATE TABLE tb_pizzas(
	id_pizza bigint auto_increment primary key,
    sabor varchar(50),
    borda varchar(50),
    preco double,
    tipo varchar(50),
    categoria_id bigint,
    foreign key(id_pizza) references tb_categorias(id_categoria)
);

-- 4.	Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome, avaliacao)
VALUES ("Vegetariana", 3.0);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Doce", 4.0);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Salgada", 5.0);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Especial", 4.5);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Simples", 3.5);

/* 5.	Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_pizzas (sabor, borda, preco, tipo, categoria_id)
VALUES ("Rúcula", "Sem", 50.00, "Normal", 1);

INSERT tb_pizzas (sabor, borda, preco, tipo, categoria_id)
VALUES ("Brigadeiro", "Chocolate", 60.00, "Broto", 2);

INSERT tb_pizzas (sabor, borda, preco, tipo, categoria_id)
VALUES ("Abacaxi com Marmelada", "Cremosa", 55.00, "Normal", 3);

INSERT tb_pizzas (sabor, borda, preco, tipo, categoria_id)
VALUES ("Quatro Queijos", "Catupiry", 40.00, "Normal", 4);

INSERT tb_pizzas (sabor, borda, preco, tipo, categoria_id)
VALUES ("Mussarela", "Catupiry", 30.00, "Broto", 5);

INSERT tb_pizzas (sabor, borda, preco, tipo, categoria_id)
VALUES ("Banana com Doce de Leite", "Chocolate Branco", 49.00, "Normal", 2);

INSERT tb_pizzas (sabor, borda, preco, tipo, categoria_id)
VALUES ("Palmito", "Sem", 45.00, "Broto", 1);

INSERT tb_pizzas (sabor, borda, preco, tipo, categoria_id)
VALUES ("Pepperoni", "Cheddar", 39.00, "Broto", 5);

/* 6.	Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00. */

SELECT * FROM tb_pizzas WHERE preco > 45.00;

/* 7.	Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 
e R$ 100,00. */

SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a 
letra M no atributo nome. */

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas 
com os dados da tabela tb_categorias. */

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = 
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas 
com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma 
categoria específica (Exemplo: Todas as pizzas que são doce). */

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = 
tb_categorias.id_categoria WHERE id_categoria = 1; 

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
---
/* Atividade 3
Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados 
deverá ter o seguinte nome db_farmacia_bem_estar. O sistema trabalhará com as 
informações dos produtos comercializados pela empresa. O sistema trabalhará 
com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas. */

 CREATE DATABASE db_farmacia_bem_estar;
 USE db_farmacia_bem_estar;

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar os produtos. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome varchar(50),
    avaliacao double
);

/* 2.	Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, 
relevantes aos produtos da farmácia. */
-- 3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos. 

CREATE TABLE tb_produtos(
	cod_produto bigint auto_increment primary key,
    nome varchar(50),
    tipo varchar(25),
    valor double,
    doses_recomendadas int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

-- 4.	Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Comprimido", 3.5);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Cápsula", 4.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Antibiótico", 4.2);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Pastilha", 3.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Injetável", 2.5);

/* 5.	Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_produtos (nome_produto, tipo, valor, doses_recomendadas, categoria_id)
VALUES ("Ibuprofeno", "Referência", 15.00, 3, 1);

INSERT tb_produtos (nome_produto, tipo, valor, doses_recomendadas, categoria_id)
VALUES ("Dipirona", "Fitoterápico", 4.00, 2, 2);

INSERT tb_produtos (nome_produto, tipo, valor, doses_recomendadas, categoria_id)
VALUES ("Miosan", "Homeopático", 20.00, 1, 5);

INSERT tb_produtos (nome_produto, tipo, valor, doses_recomendadas, categoria_id)
VALUES ("Codein", "Genérico", 4.50, 1, 3);

INSERT tb_produtos (nome_produto, tipo, valor, doses_recomendadas, categoria_id)
VALUES ("Novalgina", "Referência", 14.00, 4, 4);

INSERT tb_produtos (nome_produto, tipo, valor, doses_recomendadas, categoria_id)
VALUES ("Dorflex", "Referência", 55.00, 1, 5);

INSERT tb_produtos (nome_produto, tipo, valor, doses_recomendadas, categoria_id)
VALUES ("Omeprazol", "Referência", 47.00, 10, 1);

INSERT tb_produtos (nome_produto, tipo, valor, doses_recomendadas, categoria_id)
VALUES ("Dramin", "Genérico", 60.00, 5, 3);

-- 6.	Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.

SELECT * FROM tb_produtos WHERE valor > 50.00;

/* 7.	Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo 
R$ 5,00 e R$ 60,00. */

SELECT * FROM tb_produtos WHERE valor >= 5.00 AND valor <= 60.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra 
C no atributo nome. */

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias. */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma 
categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos). */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria WHERE id_categoria = 5;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
---

/* Atividade 4
Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. 
O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou 
cidade_dos_vegetais. O sistema trabalhará com as informações dos produtos 
comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão 
estar relacionadas. */

 CREATE DATABASE db_cidade_dos_vegetais;
 USE db_cidade_dos_vegetais;

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária,
relevantes para classificar os produtos. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome varchar(50),
    avaliacao double
);

/* 2.	Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes 
aos produtos do hortifruti. */
-- 3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.

CREATE TABLE tb_produtos(
	cod_produto bigint auto_increment primary key,
    nome varchar(100),
    quantidade int,
    valor double,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

-- 4. Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome, avaliacao)
VALUES ("Queijos", 2.5);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Frutas", 3.0);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Grãos", 3.5);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Legumes", 4.0);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Conserva", 4.5);

/* 5.	Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_produtos(nome, valor, qtd, categoria_id)
VALUES("Parmesão", 55.80, 25, 1);

INSERT tb_produtos(nome, valor, qtd, categoria_id)
VALUES("Maça", 27.40, 20, 2);

INSERT tb_produtos(nome, valor, qtd, categoria_id)
VALUES("Couve-flor", 60.55, 40, 4);

INSERT tb_produtos(nome, valor, qtd, categoria_id)
VALUES("Ervilha(lata)", 30.87, 15, 5);

INSERT tb_produtos(nome, valor, qtd, categoria_id)
VALUES("Feijão", 65.26, 5, 3);

INSERT tb_produtos(nome, valor, qtd, categoria_id)
VALUES("Muçarela", 65.26, 15, 1);

INSERT tb_produtos(nome, valor, qtd, categoria_id)
VALUES("Palmito", 60.25, 5, 5);

INSERT tb_produtos(nome, valor, qtd, categoria_id)
VALUES("Melancia", 70.99, 8, 2);

-- 6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.

SELECT * FROM tb_produtos WHERE valor > 50.00;

/* 7.	Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 
e R$ 150,00. */

SELECT * FROM tb_produtos WHERE valor >= 50.00 AND valor <= 150.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a 
 C no atributo nome. */
 
 SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
 
/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias. */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma 
categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas). */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria WHERE id_categoria = 2;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
---

/* Atividade 5
Crie um banco de dados para um serviço de uma loja de Material de Construção. 
O nome do Banco de dados deverá ter o seguinte nome db_construindo_vidas. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas. */

CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar os produtos. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome varchar(50),
    cuidados varchar(255)
);

/* 2.	Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, 
relevantes aos produtos da loja de construção. */
-- 3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.

CREATE TABLE tb_produtos(
	cod_produto bigint auto_increment primary key,
    nome varchar(50),
    valor double,
    quantidade int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

-- 4.	Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome, cuidados)
VALUES ("Caixas D'água", "Contatar técnico para instalação");

INSERT tb_categorias (nome, cuidados)
VALUES ("Argamassa", "Deixar longe das crianças");

INSERT tb_categorias (nome, cuidados)
VALUES ("Calhas e rufos", "Contatar pedreiro para construção");

INSERT tb_categorias (nome, cuidados)
VALUES ("Protetores de Construção", "Determine qual o melhor para o trabalho");

INSERT tb_categorias (nome, cuidados)
VALUES ("Drywall", "Escolha a melhor cor para você");

/* 5.	Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_produtos (nome, valor, qtd, categoria_id)
VALUES ("Caixa d'água Polietileno 1.000L Azul Fortlev", 150.00, 5, 1);

INSERT tb_produtos (nome, valor, qtd, categoria_id)
VALUES ("Argamassa de Porcelamento", 65.00, 10, 2);

INSERT tb_produtos (nome, valor, qtd, categoria_id)
VALUES ("Argamassa Massa Pronta", 71.00, 12, 2);

INSERT tb_produtos (nome, valor, qtd, categoria_id)
VALUES ("Calha Moldura Galvanizada", 69.52, 17, 3);

INSERT tb_produtos (nome, valor, qtd, categoria_id)
VALUES ("Calha Alumínio Marrom", 64.50, 16, 3);

INSERT tb_produtos (nome, valor, qtd, categoria_id)
VALUES ("Chapa de Drywall Standard 1,80x1,20m Branca Knauf", 120.00, 3, 4);

INSERT tb_produtos (nome, valor, qtd, categoria_id)
VALUES ("Chapa de Drywall Resistente ao Fogo", 130.00, 2, 4);

INSERT tb_produtos (nome, valor, qtd, categoria_id)
VALUES ("Arame Recozido Trançado 1kg ArcelorMittal", 55.00, 20, 5);

-- 6.	Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.

SELECT * FROM tb_produtos WHERE valor > 100.00;

/* 7.	Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo 
R$ 70,00 e R$ 150,00. */

SELECT * FROM tb_produtos WHERE valor >= 70.00 AND valor <= 150.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam 
a letra C no atributo nome. */

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias. */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos.categoria_id = 
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma 
categoria específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica). */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos.categoria_id = 
tb_categorias.id_categoria WHERE id_categoria = 5;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
---
/* Atividade 6
Crie um banco de dados para uma plataforma de Cursos Online (EAD). 
O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar 
relacionadas.*/

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar os cursos. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome varchar(50),
    tipo varchar(50)
);

/* 2.	Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes 
aos cursos. */
-- 3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.

CREATE TABLE tb_cursos(
	cod_curso bigint auto_increment primary key,
    nome varchar(50),
    preco double,
    vagas int,
    categoria_id bigint,
    foreign key(cod_curso) references tb_categorias(id_categoria)
);

-- 4.	Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome, tipo)
VALUES ("Administração", "Presencial");

INSERT tb_categorias (nome, tipo)
VALUES ("Informática", "Presencial");

INSERT tb_categorias (nome, tipo)
VALUES ("Eletromecânica", "On-line");

INSERT tb_categorias (nome, tipo)
VALUES ("Mecatrônica", "On-line");

INSERT tb_categorias (nome, tipo)
VALUES ("Arquitetura e Decoração", "Presencial");

/* 5.	Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_cursos (nome, preco, vagas, categoria_id)
VALUES ("Desenvolvimento JAVA", 780.50, 200, 2);

INSERT tb_cursos (nome, preco, vagas, categoria_id)
VALUES ("ADM", 650.28, 300, 1);

INSERT tb_cursos (nome, preco, vagas, categoria_id)
VALUES ("Conserto de Carros", 480.00, 50, 3);

INSERT tb_cursos (nome, preco, vagas, categoria_id)
VALUES ("Construindo com Arduíno", 800.00, 45, 4);

INSERT tb_cursos (nome, preco, vagas, categoria_id)
VALUES ("Desenvolvimento Python", 550, 150, 2);

INSERT tb_cursos (nome, preco, vagas, categoria_id)
VALUES ("Desenvolvimento VSCode", 475.66, 200, 2);

INSERT tb_cursos (nome, preco, vagas, categoria_id)
VALUES ("Aprendendo Tudo Sobre HTML5", 900.50, 230, 2);

INSERT tb_cursos (nome, preco, vagas, categoria_id)
VALUES ("Faça Uma Estátua de si Mesmo", 1100.99, 10, 5);

-- 6.	Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.

SELECT * FROM tb_cursos WHERE preco > 500.00;

/* 7.	Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo 
R$ 600,00 e R$ 1000,00. */

SELECT * FROM tb_cursos WHERE preco >= 600.00 AND preco <= 1000.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que 
possuam a letra J no atributo nome. */

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
tb_cursos com os dados da tabela tb_categorias. */

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id =
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que 
pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a 
categoria Java). */

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id =
tb_categorias.id_categoria WHERE id_categoria = 2;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */