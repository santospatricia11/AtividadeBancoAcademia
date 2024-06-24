create database filme;


create table categoria(

	cod_cat serial primary key not null,

	nome varchar(100) not null,
	valor numeric(15,2)
	

);
create table genero(

	cod_gen int primary key not null,
	nome varchar (90)
	
);

drop table filmes
create table filmes(

	cod_filme serial primary key not null,
	titulo_original varchar(100) not null,
	titulo varchar(100),
	quantidade int,
	fk_cod_cat integer,
	fk_cod_gen integer,
	foreign key (fk_cod_cat ) references categoria(cod_cat),
	foreign key (fk_cod_gen  ) references genero(cod_gen)

);
drop table  ator
create table ator(

	cod_ator serial primary key not null,
	nome varchar (60)

);
drop table filme_ator;

create table filme_ator(

	cod_ator serial primary key not null,
	fk_cod_filme integer,
	ator varchar(100),
	diretor varchar(10),
	foreign key (fk_cod_filme ) references filmes(cod_filme)

);


drop table profissao;
create table profissao(
	cod_prof serial,
	nome varchar(60)

);

drop table cliente;
create table cliente(

	cod_cli serial primary key not null,
	CPF char(11),
	nome varchar(100),
	telefone varchar(20),
	fk_cod_prof integer,
	foreign key (fk_cod_prof ) references profissao(cod_prof)

	
);
drop table dependente;


create table dependente(
 
	fk_cod_cli integer not null,
	fk_cod_dep integer  not null,
	foreign key (fk_cod_dep) references cliente(cod_cli),
 
	foreign key (fk_cod_cli) references cliente(cod_cli),
 
	parentesco varchar(20),
primary key (fk_cod_cli , fk_cod_dep )
);

drop table locacao;

create table locacao(

	cod_loc serial primary key not null,
	data_loc date,
	desconto numeric(15,2),
	multa numeric(15,2),
	sub_total numeric(15,2),
	fk_cod_cli integer not null,
	foreign key (fk_cod_cli) references cliente(cod_cli)

	
);
drop table locacao_filme;

create table locacao_filme(
	num_dias int,
	data_devol date,
	valor numeric(15,2),
	fk_cod_loc integer not null,
	fk_cod_filme integer not null,
	foreign key (fk_cod_loc) references locacao(cod_loc),
	foreign key (fk_cod_filme) references flimes(cod_filme)

);


create table endereco(
	cod_end serial not null,
	lagradouro varchar(40),
	tipo_log varchar(40),
	complemento varchar(40),
	cidade varchar(60),
	UF char(2),
	CEP char(5),
	numero numeric (10),
	bairro varchar (60)
);


create table cli_endereco (
	
	fk_cod_end integer not null,
	fk_cod_cli integer not null,
	
	foreign key (fk_cod_cli) references cli_endereco (cod_cli),
	foreign key (fk_cod_end ) references endereco(cod_end)
	
);




---insert categoria
INSERT INTO categoria (cod_cat, nome,valor) VALUES ('1','teste','10');
INSERT INTO categoria (cod_cat, nome,valor) VALUES ('2','infantil','11');
INSERT INTO categoria (cod_cat, nome,valor) VALUES ('3','animação','11');


-----insert genrero

INSERT INTO genero (cod_gen, nome) VALUES ('1','animação');
INSERT INTO genero (cod_gen, nome) VALUES ('2','animação');
INSERT INTO genero (cod_gen, nome) VALUES ('3','ficção');



-----insert filmes

INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('1','Duna', 'Ficção Científica', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('2','Belfast','Drama', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('3','O Último Duelo ','The Last Duel', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('4','Encanto', 'Encanto', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('5','Ataque dos Cães', 'Ataque dos Cães', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('6','A Filha Perdida', 'A Filha Perdida', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('7','Matrix Resurrections ', 'Matrix Resurrections ', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('8','Tick, Tick... Boom!','Tick, Tick... Boom! ', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('9','Projeto Adam ', 'The Adam Project', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('110','O Homem Invisível ', 'The Invisible Man', 1, 1, 1);
INSERT INTO filmes (cod_filme,titulo_original, titulo, quantidade, fk_cod_cat ,fk_cod_gen) VALUES ('1','Alita: Anjo de Combate ', 'Alita: Battle Angel', 1, 1, 1);



-----insert ator

INSERT INTO ator (cod_ator, nome) VALUES ('1','Amado');
INSERT INTO ator (cod_ator, nome) VALUES ('2','Pedro');
INSERT INTO ator (cod_ator, nome) VALUES ('3','Marcos');
INSERT INTO ator (cod_ator, nome) VALUES ('4','Anchieta');
INSERT INTO ator (cod_ator, nome) VALUES ('5','Patricia');
INSERT INTO ator (cod_ator, nome) VALUES ('6','Leticia');
INSERT INTO ator (cod_ator, nome) VALUES ('7','Marta');




-----insert filme_ator

INSERT INTO filme_ator (cod_ator,fk_cod_filme, ator,diretor) VALUES ('1','2','Amado','Marcos');
INSERT INTO filme_ator (cod_ator,fk_cod_filme, ator,diretor) VALUES ('2','2','Amado','Marcos');
INSERT INTO filme_ator (cod_ator,fk_cod_filme, ator,diretor) VALUES ('3','2','Amado','Marcos');
INSERT INTO filme_ator (cod_ator,fk_cod_filme, ator,diretor) VALUES ('4','2','Amado','Marcos');



-----insert  profissao ------

	 
INSERT INTO profissao (cod_prof,nome) VALUES ('1','Mateus');
INSERT INTO profissao (cod_prof,nome) VALUES ('2','Pablo');
INSERT INTO profissao (cod_prof,nome) VALUES ('3','Roberto');
INSERT INTO profissao (cod_prof,nome) VALUES ('4','Neto');
INSERT INTO profissao (cod_prof,nome) VALUES ('5','Maria');
INSERT INTO profissao (cod_prof,nome) VALUES ('6','Pedro');


-----insert  cliente
-------20 locaco
	
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('1','12345678901','Maria','86993483723','2');
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('2','12345678901','Pedro','86993483723','2');
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('3','12365678901','Marcos','86993483723','2');
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('4','12745678901','Angela','86993483723','2');
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('5','52345678901','Pateus','86993483723','2');
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('6','62345678901','Helen','86993483723','2');
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('7','72345678901','Pablo','86993483723','2');
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('8','18345678901','Antonia','86993483723','2');
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('9','10345678901','Tiago','86993483723','2');
INSERT INTO cliente (cod_cli,CPF,nome,telefone,fk_cod_prof) VALUES ('10','10345178901','Renato','86993483723','2');


--------insert dependente
	
INSERT INTO dependente (fk_cod_cli,fk_cod_dep,parentesco ) VALUES ('1','2','irmão');
INSERT INTO dependente (fk_cod_cli,fk_cod_dep,parentesco ) VALUES ('2','2','primo');
INSERT INTO dependente (fk_cod_cli,fk_cod_dep,parentesco ) VALUES ('3','2','primo');
INSERT INTO dependente (fk_cod_cli,fk_cod_dep,parentesco ) VALUES ('4','2','irmão');
INSERT INTO dependente (fk_cod_cli,fk_cod_dep,parentesco ) VALUES ('5','2','irmão');
INSERT INTO dependente (fk_cod_cli,fk_cod_dep,parentesco ) VALUES ('6','2','irmão');

---- insert locação


	
INSERT INTO locacao(cod_loc,data_loc,desconto,multa,sub_total,fk_cod_cli  ) VALUES ('1','20/12/2023','30,00','20,00','122,00','1');


--1)Listar todos os filmes alugados por um cliente específico, incluindo a data de locação e a data de devolução01)

SELECT f.titulo_original, f.titulo, l.data_loc, lf.data_devol
FROM locacao l
JOIN locacao_filme lf ON l.cod_loc = lf.fk_cod_loc
JOIN filmes f ON lf.fk_cod_filme = f.cod_filme
WHERE l.fk_cod_cli = 1;  


--2)Obter uma lista de clientes e seus dependentes.

SELECT c.nome AS cliente, d.nome AS dependente, dep.parentesco
FROM cliente c
JOIN dependente dep ON c.cod_cli = dep.fk_cod_cli
JOIN cliente d ON dep.fk_cod_dep = d.cod_cli;

--3 Listar todos os filmes de um determinado gênero.

SELECT f.titulo_original, f.titulo
FROM filmes f
JOIN genero g ON f.fk_cod_gen = g.cod_gen
WHERE g.nome = 'ficção'; 


---4 Exibir todos os clientes que têm uma profissão específica.

SELECT c.nome, c.CPF, c.telefone, p.nome AS profissao
FROM cliente c
JOIN profissao p ON c.fk_cod_prof = p.cod_prof
WHERE p.nome = 'Professor';  


--- 5)Encontrar todos os filmes em uma categoria específica com quantidade disponível maior que 5.

SELECT f.titulo_original, f.titulo, f.quantidade
FROM filmes f
JOIN categoria c ON f.fk_cod_cat = c.cod_cat
WHERE c.nome = 'infantil'  -- Substitua 'infantil' pelo nome da categoria específica
  AND f.quantidade > 5;
  
  
  
----6)Listar todos os atores que participaram de filmes com um determinado título.


SELECT a.nome
FROM ator a
JOIN filme_ator fa ON a.cod_ator = fa.cod_ator
JOIN filmes f ON fa.fk_cod_filme = f.cod_filme
WHERE f.titulo_original = 'O Último Duelo ';

-----07--------Obter o endereço completo de um cliente específico.

SELECT c.nome, e.lagradouro, e.tipo_log, e.complemento, e.cidade, e.UF, e.CEP, e.numero, e.bairro
FROM cliente c
JOIN cli_endereco ce ON c.cod_cli = ce.fk_cod_cli
JOIN endereco e ON ce.fk_cod_end = e.cod_end
WHERE c.cod_cli = 4; 

-------8-Listar todos os filmes e seus respectivos gêneros e categorias.

SELECT f.titulo_original, f.titulo, g.nome AS genero, c.nome AS categoria
FROM filmes f
JOIN genero g ON f.fk_cod_gen = g.cod_gen
JOIN categoria c ON f.fk_cod_cat = c.cod_cat;

--9----------Mostrar todos os clientes que alugaram um filme específico e a data de locação.

SELECT c.nome, l.data_loc
FROM cliente c
JOIN locacao l ON c.cod_cli = l.fk_cod_cli
JOIN locacao_filme lf ON l.cod_loc = lf.fk_cod_loc
JOIN filmes f ON lf.fk_cod_filme = f.cod_filme
WHERE f.titulo_original = 'Belfast';  


---10--Exibir a lista de clientes com multas superiores a um valor específico.

SELECT c.nome, c.CPF, l.multa
FROM cliente c
JOIN locacao l ON c.cod_cli = l.fk_cod_cli
WHERE l.multa > 20.00;

---------11) Listar todas as locações feitas em um período específico.

SELECT l.cod_loc, l.data_loc, l.fk_cod_cli
FROM locacao l
WHERE l.data_loc BETWEEN '2023-01-01' AND '2023-12-31';  


----- 12------Obter a quantidade total de filmes alugados por cada cliente. (DESAFIO)

SELECT c.nome, COUNT(lf.fk_cod_filme) AS total_filmes_alugados
FROM cliente c
JOIN locacao l ON c.cod_cli = l.fk_cod_cli
JOIN locacao_filme lf ON l.cod_loc = lf.fk_cod_loc
GROUP BY c.nome;

--13  --Listar os clientes e os filmes que eles alugaram, ordenados por data de locação.

SELECT c.nome, f.titulo_original, l.data_loc
FROM cliente c
JOIN locacao l ON c.cod_cli = l.fk_cod_cli
JOIN locacao_filme lf ON l.cod_loc = lf.fk_cod_loc
JOIN filmes f ON lf.fk_cod_filme = f.cod_filme
ORDER BY l.data_loc;


--- 14------Mostrar todos os clientes que moram em uma cidade específica e que alugaram filmes de uma categoria específica.

SELECT DISTINCT c.nome
FROM cliente c
JOIN cli_endereco ce ON c.cod_cli = ce.fk_cod_cli
JOIN endereco e ON ce.fk_cod_end = e.cod_end
JOIN locacao l ON c.cod_cli = l.fk_cod_cli
JOIN locacao_filme lf ON l.cod_loc = lf.fk_cod_loc
JOIN filmes f ON lf.fk_cod_filme = f.cod_filme
JOIN categoria cat ON f.fk_cod_cat = cat.cod_cat
WHERE e.cidade = 'Serra Branca'  
  AND cat.nome = 'Ficção'; 
  
 -----15)---Encontrar todos os atores que participaram de pelo menos 5 filmes,
 --listando o nome do ator e o número de filmes em que atuou. (DESAFIO)
 
SELECT a.nome, COUNT(fa.fk_cod_filme) AS numero_filmes
FROM ator a
JOIN filme_ator fa ON a.cod_ator = fa.cod_ator
GROUP BY a.nome
HAVING COUNT(fa.fk_cod_filme) >= 5;


----16----Exibir a quantidade total de filmes alugados por categoria e gênero, incluindo apenas as categorias e
--gêneros que têm mais de 5 filmes alugados no total (DESAFIO)


SELECT cat.nome AS categoria, g.nome AS genero, COUNT(lf.fk_cod_filme) AS total_filmes_alugados
FROM locacao_filme lf
JOIN filmes f ON lf.fk_cod_filme = f.cod_filme
JOIN categoria cat ON f.fk_cod_cat = cat.cod_cat
JOIN genero g ON f.fk_cod_gen = g.cod_gen
GROUP BY cat.nome, g.nome
HAVING COUNT(lf.fk_cod_filme) > 5;















	




