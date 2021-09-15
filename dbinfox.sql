-- Criação do banco de dados
create database dbinfox;

-- Seleção do banco de dados
use dbinfox;

-- Tabela de usuarios (funcionários da empresa)
create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(10) not null unique,
senha varchar(10)
);

-- Tabela de clientes (clientes da empresa)
create table clientes(
   idCli int primary key auto_increment,
   nome varchar(50) not null,
   fone varchar(15) not null
   );

-- Tabela de ordem de serviço (OS)
create table tbos(
   os int primary key auto_increment,
   equipamento varchar(250) not null,
   defeito varchar(250) not null,
   dataos timestamp default current_timestamp,
   statusos varchar(50) not null,
   valor decimal(10,2),
   idCli int not null,
   foreign key(idCli) references clientes (idCli)
   );


-- Verificar tabelas 
show tables;
describe usuarios;
describe clientes;
describe tbos;


insert into usuarios (usuario, login, senha)
values ('Davi','admin','1234');

alter table usuarios modify senha varchar(250);

alter table usuarios modify login varchar(50);

-- Armazenando um campo com criptografia
insert into usuarios (usuario, login, senha)
values ('Daniel','daniel@usuario',md5('12345')); 

insert into usuarios (usuario, login, senha)
values ('Robson Vaamonde','robson@usuario',md5('6789')); 

insert into usuarios (usuario, login, senha)
values ('Leandro Ramos','leandro@usuario',md5('123@')); 

insert into usuarios (usuario, login, senha)
values ('José de Assis','jose@usuario',md5('senac123')); 

insert into usuarios (usuario, login, senha)
values ('Edilson','edilson@usuario',md5('123tat')); 

insert into usuarios (usuario, login, senha)
values ('Kelly','kelly@usuario',md5('tat123')); 

-- Cadastro de clientes

insert into clientes (nome,fone) values('Kelly Cristina','31256-2222');
insert into clientes (nome,fone) values('José de Assis','91234-1111');

select * from clientes;


-- Cadastro de OS

insert into tbos(equipamento,defeito,statusos,idcli)
values('Notebook Lenovo modelo','Não liga','Orçamento',1);


insert into tbos(equipamento,defeito,statusos,valor,idcli)
values('PC Positivo','Formatação do Windows','Aprovado',80,2);

select * from tbos;




select * from usuarios;


-- COMANDOS DE DELETE

-- Comando para apagar o banco de dados
drop database dbinfox;

-- Comando para apagar tabela
-- drop table (nome); 

-- Comando usado para apagar um campo da tabela
-- alter table (nome da tabela) drop column (nome da coluna);
