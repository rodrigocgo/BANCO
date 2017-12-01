create database catalogo;

-- TABELA DE AUTORES 

create table autor(
CPF  varchar(20),
NOMEA  varchar(20) not null, 
NASCIMENTO date not null, 
SEXO char(1) not null,
NACIONALIDADE char(2) not null,  
TELEFONE varchar(15),
EMAIL varchar(50),
constraint PK_AUTOR primary key(CPF)
);

insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('785525147-78', 'Antonio Amaral', '05-may-1995', 'M', 'BR', '', '');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('325525147-78', 'Roberto Pascal', '02-may-1987', 'M', 'BR', '9874-1236', 'robertp@gmail.com');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('115525147-88', 'Stephen King', '01-may-1947', 'M', 'US', '7887-8888', 'sking@hotmail.com');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('781125147-87', 'J.k. Rowling ', '31-jan-1965', 'F', 'UK', '6544-4564', 'jkrow@gmail.com');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('786625147-11', 'Daniel Cryer', '25-oct-1980', 'M', 'UK', '', 'cryer@uk.co');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('789875147-21', 'Uriah Jack', '02-jan-1985', 'M', 'ZA', '5555-4455', '');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('121525147-78', 'Vinicius de Moraes', '25-nov-1995', 'M', 'BR', '9674-3636', 'vinimo@yahoo.com.br');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('987655147-28', 'Clarice Lispector', '05-jan-1965', 'F', 'DO', '', '');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('789655147-58', 'Cecília da SIlva', '05-feb-1800', 'F', 'BR', '8788-7777', '');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('111115147-38', 'Marcus Macedo', '25-may-1940', 'M', 'BR', '9227-6541', 'mmacedo@acad.pucrs.br');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('987112247-28', 'Ruanita Perez', '22-jan-1958', 'F', 'CO', '7221-1131', 'ruanpq@gmail.com');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('951255147-08', 'Carlos Chaga', '05-jan-1685', 'M', 'AR', '7778-1245', 'carlitos@hotmail.com');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('486249647-28', 'Maomé Nilo', '12-jan-1985', 'M', 'EG', '', '');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('987655347-18', 'Mohamed Zack', '13-jan-1985', 'M', 'SA', '', 'Momoha@gmail.com');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values  ('111251147-99', 'Zilá Nogai', '02-jan-1985', 'F', 'DZ', '2222-2222', '');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('987612347-88', 'George Martin', '02-jan-1985', 'M', 'US', '6787-4411', 'ggmartin@yahoo.com.br');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values  ('017655147-01', 'John Tolkien', '02-jan-1985', 'M', 'ZA', '', '');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values  ('011115147-02', 'Neil Gaiman', '02-jan-1985', 'M', 'UK', '4545-8522', 'sandman@gmail.com');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('454587457-82', 'Alan Moore', '02-jan-1985', 'M', 'UK', '6666-6666', '');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('121255147-22', 'H.P.Lovecraft', '02-jan-1985', 'M', 'US', '', '');
insert into autor (cpf, nomea, nascimento, sexo, nacionalidade, telefone, email) values ('321123543-21', 'Aline Santos', '02-jan-1985', 'F', 'BR', '3243-1232', 'asantos@hotmail.com');

	   
	   
-- TABELA DE LIVROS	   
create table livro(
ID_LIVRO smallint auto_increment,
TITULO varchar(20) not null,
AUTOR varchar(20) not null,
PAGINAS smallint,
EDITORA smallint not null,
CATEGORIA smallint not null, 
constraint PK_LIVRO primary key(ID_LIVRO),
constraint FK_AUTOR foreign key(AUTOR) references AUTOR(CPF),
constraint FK_EDITORA foreign key(EDITORA) references EDITORA(ID_EDITORA),
constraint FK_CATEGORIA foreign key(CATEGORIA) references CATEGORIA(ID_CATEGORIA)
);

Create sequence id start with 1
increment by 1
minvalue 1
maxvalue 10000;

insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Harry Potter', '781125147-87', 500, 100, 300);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Senhor dos Anéis', '017655147-01', 1000, 111, 300);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'O despertar', '321123543-21', 350, 011, 320);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Em um click!', '785525147-78', 450, 154, 301);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Negociando', '789655147-58', 560, 154, 390);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Game of Thrones', '987612347-88', 880, 111, 300);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Mr.Mercedes', '115525147-88', 822, 200, 300);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Sandman', '011115147-02', 702, 001, 366);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Watchmen', '454587457-82', 450, 101, 366);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'The outsider', '121255147-22', 250, 222, 320);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'O outro lado', '325525147-78', 120, 254, 353);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Mãos Talentosas', '785525147-78', 500, 154, 377);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Fundamentos da Prog', '111115147-38', 488, 100, 324);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Hear me!', '786625147-11', 877, 080, 308);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Joyland', '115525147-88', 220, 200, 340);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'O sentimento', '121525147-78', 100, 100, 350);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'O Campeão', '321123543-21', 360, 011, 331);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'No andamento', '111115147-38', 388, 101, 308);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Sincity', '454587457-82', 244, 201, 366);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Marter Chef', '789875147-21', 244, 200, 361);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'The Detective', '017655147-01', 564, 144, 340);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Under the Dome', '115525147-88', 1500, 200, 340);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'The network', '111251147-99', 455, 166, 358);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'Los Narcos', '987112247-28', 666, 022, 355);
insert into livro (ID_LIVRO,titulo, autor, paginas, editora, categoria) values(id.nextval,'The Wall', '786625147-11', 477, 222, 381);
	  
	  
-- TABELA DE EDITORAS
create table editora(
ID_EDITORA smallint,
NOMEE varchar(20) not null, 
TELEFONE varchar(15),
EMAIL varchar(50),
COMECO date not null,
PAIS char(2),
constraint PK_EDITORA primary key(ID_EDITORA)
);

insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(100, 'Rocco', '5525-6666', 'roccoeditora@rocco.com.br', '10-nov-2010', 'BR');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(101, 'Panini', '9425-5566', 'paniniedit@panini.com', '10-nov-2010', 'IT');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(200, 'Ajaci', '7854-6116', 'ajac@ajac.com', '10-nov-2010', 'US');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(110, 'Tropic', '6545-1235', 'tropiccontat@tropic.com', '10-nov-2010', 'BS');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values (222, 'Convex', '4514-6699', 'convexread@convex.com.uk', '10-nov-2010', 'UK');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values (111, 'Leya', '9925-6789', 'leyacontato@leya.com', '10-nov-2010', 'PT');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(011, 'Cia das Letras', '9925-8988', 'cdl@cia.com.br', '110-nov-2010', 'BR');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values (202, 'Readit', '7145-1211', 'readit@read.com', '110-nov-2010', 'US');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values (201, 'Dark Horse', '7115-6336', 'dark@darkhorse.com', '10-nov-2010', 'US');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values (121, 'Mejor', '5516-6141', 'mejor@mejor.com', '10-nov-2010', 'AR');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(022, 'Salva', '4545-7789', 'salvatore@salva.com', '10-nov-2010', 'CO');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(150, 'Aleph', '9225-6783', 'alepheditora@aleph.com.br', '10-nov-2010', 'BR');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(154, 'Intrínseca', '9898-6897', 'intrineditora@intrinseca.com.br', '10-nov-2010', 'BR');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(077, 'Force', '8557-5466', 'force@force.com', '10-nov-2010', 'US');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(166, 'Downin', '5325-4646', 'downinread@read.com', '10-nov-2010', 'US');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(027, 'Pepes', '5725-4213', 'lospepes@pepes.com', '10-nov-2010', 'CO');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(080, 'Watson', '5588-8636', 'watsonbaker@watson.com.uk', '10-nov-2010', 'UK');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(144, 'Holmes', '5587-8737', 'holmesbaker@holmes.com.uk', '10-nov-2010', 'UK');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(254, 'Livreto', '9929-8566', 'livretoeditora@contato.com.br', '10-nov-2010', 'BR');
insert into editora(id_editora, nomee, telefone, email, comeco, pais) values(001, 'Vertigo', '6866-6666', 'vertigo@verti.com', '10-nov-2010', 'US');

-- TABELA DE CATEGORIAS
create table categoria(
ID_CATEGORIA smallint ,
DESCRICAO varchar(50) not null,
PUBLICO_ALVO varchar (50), 
AREA varchar(50),
FAIXA_ETARIA varchar(10),
constraint PK_CATEGORIA primary key(ID_CATEGORIA)
);

insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values (300, 'Ação/Aventura', 'Infantojuvenil', 'Entretenimento', '11 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values (320 , 'Terror', 'Adulto', 'Entretenimento', '18 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(350 , 'Romance', 'Infantil', 'Entretenimento', '10 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values (321 , 'Aventura', 'Infantojuvenil', 'Entretenimento', '16 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values (324 , 'Programação', 'Infantojuvenil/Adulto', 'Acadêmico', '15 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(390 , 'Negócios', 'Adulto', 'Acadêmico/Profissional', '18 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(366 , 'Comics/Graphic Novels', 'Todos', 'Entretenimento', 'Livre');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(301 , 'Imagem/Fotografia', 'Adulto', 'Entretenimento/Profissional', '18 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(340 , 'Suspense', 'Infantojuvenil', 'Entretenimento', '16 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(353 , 'Ficção', 'Infantojuvenil', 'Entretenimento', '16 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(358 , 'Computação/redes', 'Adulto', 'Profissional', '18 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(361 , 'Culinária', 'Jovem/Adulto', 'Entretenimento/Profissional', '17 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(381 , 'História', 'Adulto', 'Acadêmico/Profissional', '18 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(395 , 'Saude', 'Todos', 'Entretenimento', 'Livre');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(308 , 'Música', 'Jovem/Adulto', 'Entretenimento', '17 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(331 , 'Esportes', 'Todos', 'Entretenimento', 'Livre');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(333 , 'Viajem', 'Todos', 'Entretenimento', 'Livre');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(377 , 'Medicina', 'Adulto', 'Acadêmico', '18 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(355 , 'Biografias', 'Jovem/Adulto', 'Entretenimento', '16 anos');
insert into categoria (id_categoria, descricao, publico_alvo, area, faixa_etaria) values(344 , 'Legislação', 'Adulto', 'Acadêmico/Profissional', '18 anos');






--TABELA DE PUBLICAÇÃO
create table publicacao(
ID_PUBLICACAO smallint,
LIVRO smallint not null,
DATA date not null,
EXEMPLARES int,
PRECO decimal(7,2) not null,
constraint PK_PUBLICACAO primary key(ID_PUBLICACAO),
constraint FK_LIVRO foreign key(LIVRO) references LIVRO(ID_LIVRO),
);

insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(1,11, '01-dec-2017', 200, 50.2);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(25, '10-nov-2010', 300, 150.50);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(2,12, '01-may-2010', 150, 90.50);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(3,10, '01-may-2010', 500, 100.20);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(4,14, '10-nov-2001', 250, 50.50);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(5,01, '01-dec-2017', 325, 100.50);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(6,02, '04-jan-2005', 500, 95.2);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(7,22, '10-nov-2001', 150, 55.2);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(8,03, '01-nov-2001', 111, 111.11);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(9,04, '15-may-2015', 1500, 150.50);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(10,07, '01-nov-2001', 800, 80.25);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(11,08, '10-nov-2001', 150, 45.20);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(12,15, '10-nov-2010', 200, 200.00);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(14,20, '01-dec-2017', 440, 240.40);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(13,19, '10-nov-2010', 600, 60.66);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(15,05, '01-dec-2017', 100, 100.50);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(16,23, '01-dec-2017', 360, 250.00);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(17,06, '04-jan-2005', 245, 80.50);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(18,09, '04-jan-2005', 1000, 45.20);
insert into publicacao(ID_PUBLICACAO,livro, data, exemplares, preco) values(19,13, '04-jan-2005', 400, 50.25);
    
	  



	   
	   
	   
	   
	   
