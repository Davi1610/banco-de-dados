
-- Criando banco de dados
create database dbagenda;

-- Selecionar banco de dados
use dbagenda;

-- Criando tabela
create table contatos(
id int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50) unique
);
show tables;
describe contatos;


-- Comando usado para alterar o nome de um campo (cabeçalho) da tabela
alter table contatos change nome contato varchar(50) not null;


-- Comando usado para adicionar um novo campo a tabela
alter table contatos add column obs varchar(250);


-- Comando usado para modificar o tipo de dado e/ou validações do campo
alter table contatos modify column fone2 varchar(15) not null after fone;
alter table contatos modify email varchar(100);
alter table contatos modify email varchar(100) unique;


-- Comando usado para apagar um campo da tabela
alter table contatos drop column obs; 


-- Comando usado para adicionar um novo campo em um lugar especifico da tabela
alter table contatos add column fone2 varchar(15) after fone;

-- Comando para apagar o banco de dados
drop database dbagenda;

-- Comando para apagar tabela 
drop table contatos;


/*
CRUD (do inglês: Create Read Update Delete)
São as quatro operações básicas que podem ser
realizadas em banco de dados que usam o modelo
relacional.



CREATE (inserção do registro(dados) na tabela)
READ (pesquisa dos dados na(s) tabela(s))
UPDATE (alteração de algum registro da tabela)
DELETE (exclusão de um registro da tabela)



*/

/* CRUD CREATE (Insert)*/
insert into contatos (nome, fone, email)
values ('Bill Gates','(00)00000-0000','bill@microsoft.com'); 

insert into contatos (nome,fone)
values ('Beatriz Silva', '(11)11111-1111');

insert into contatos (nome, fone, email)
value ('Linus Torvalds', '(22)22222-2222', 'linus@linux.com');

insert into contatos (nome,fone,email)
values ('Ana Maria','99999-4444','ana@email.com');


-- Atividade
insert into contatos (nome, fone, email)
values ( 'Davi Fonseca','(11)99999-1111','davi@email.com');

insert into contatos (nome, fone, email)
values ('Danilo Silva', '(11)99999-2222','danilo@email.com');

insert into contatos (nome, fone, email)
values ('Daniel Mendes', '(11)99999-3333','daniel@email.com');

insert into contatos (nome, fone, email)
values ('Diego Fernandes', '(11)99999-4444', 'diego@email.com');

insert into contatos (nome, fone, email)
values ('Mário Silva', '(11)99999-5555','mario@email.com');

insert into contatos (nome, fone, email)
values ( 'Leandro Ramos','(11)99999-6666','leandro@email.com');

insert into contatos (nome, fone, email)
values ('Robson Vaamonde', '(11)99999-7777','robson@email.com');

insert into contatos (nome, fone)
values ('Kelly Cristina', '(11)99999-8888');

insert into contatos (nome, fone)
values ('Edilson Silva', '(11)99999-9999');

insert into contatos (nome, fone, email)
values ('José de Assis', '(11)99999-0000','jose@email.com');
 


/* CRUD READ (select)*/
-- Selecionar todos os registros da tabela
select * from contatos;

-- Selecionar todos os registros em ordem alfabética (asc e desc)
select * from contatos order by nome asc;
select * from contatos order by nome desc;

-- Selecionar um registro especifico
select * from contatos where nome='Davi Fonseca';

-- Selecionar campos especificos da tabela 
select nome from contatos;
select nome, fone from contatos order by nome asc;

-- Filtrar nomes que começam com a letra b
select * from contatos where nome like 'D%';


/* CRUD UPDATE (update) */
-- alterando um dado específico do registro da tabela (usar sempre o id "SEGURANÇA")
update contatos set fone='12345-6789' where id=1;
update contatos set email='bia@email.com' where id=2;



-- alterando todos os dados do registro
update contatos set nome='Willian Gates',fone='32456-9000',email='bill@outlook.com' where id=1;



/* CRUD DELETE (delete) */
-- excluindo um registro da tabela (usar sempre o id "SEGURANÇA")
delete from contatos where id=4;
