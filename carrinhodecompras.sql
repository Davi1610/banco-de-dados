create database carrinhoDeComprasdb;
use carrinhoDeComprasdb;
create table carrinho(
id int primary key auto_increment,
produto varchar(100) not null,
quantidade int not null,
valor varchar(100) not null
);
show tables;
describe carrinho;

-- A linha abaixo modifica o tipo de dado de um campo
-- decimal(10,2) 10 digitos com duas casas decimais
alter table carrinho modify valor decimal(10,2) not null;




/* CRUD CREATE (Insert)*/
insert into carrinho (produto, quantidade, valor)
values ('Placa Mãe', '1', 680.50);

insert into carrinho (produto, quantidade, valor)
values ('Placa de Vídeo', '1', 5115);

insert into carrinho (produto, quantidade, valor)
values ('Memória RAM', '2', 250.90);

insert into carrinho (produto, quantidade, valor)
values ('Processador', '1', 2889);

insert into carrinho (produto, quantidade, valor)
values ('HD', '1', 210.99);

insert into carrinho (produto, quantidade, valor)
values ('SSD', '1', 300);

insert into carrinho (produto, quantidade, valor)
values ('Gabinete', '1', 500);

insert into carrinho (produto, quantidade, valor)
values ('Kit de fans RGB', '2', 100);

insert into carrinho (produto, quantidade, valor)
values ('Water Cooler', '1', 300);

insert into carrinho (produto, quantidade, valor)
values ('Fonte', '1', 500);


/* CRUD READ (select)*/
-- Selecionar todos os registros da tabela
select * from carrinho;

-- Selecionar todos os registros em ordem alfabética (asc e desc)
select * from carrinho order by produto asc;
select * from carrinho order by produto desc;

-- Selecionar um registro especifico
select * from carrinho where produto='Fonte';

-- Selecionar campos especificos da tabela 
select produto from carrinho;
select produto, quantidade from carrinho order by produto asc;

-- Filtrar nomes que começam com a letra b
select * from carrinho where produto like 'P%';

-- operação matemática para calcular o total do carrinho
select sum(valor*quantidade) as total from carrinho;


/* CRUD UPDATE (update) */
-- alterando um dado específico do registro da tabela (usar sempre o id "SEGURANÇA")
update carrinho set quantidade='2' where id=5;
update carrinho set quantidade='2' where id=6;



/* CRUD DELETE (delete) */
-- excluindo um registro da tabela (usar sempre o id "SEGURANÇA")
delete from carrinho where id=7;






drop database carrinhodecomprasdb;