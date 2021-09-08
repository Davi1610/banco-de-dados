-- Criação do banco de dados
create database dbinfox;

-- Seleção do banco de dados
use dbinfox;

-- Criação das tabelas
create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(10) not null unique,
senha varchar(10)
);

-- Verificar tabelas 
show tables;
describe usuarios;

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




select * from usuarios;


-- COMANDOS DE DELETE

-- Comando para apagar o banco de dados
drop database dbinfox;

-- Comando para apagar tabela
-- drop table (nome); 

-- Comando usado para apagar um campo da tabela
-- alter table (nome da tabela) drop column (nome da coluna);
