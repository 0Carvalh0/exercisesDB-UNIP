CREATE DATABASE AULA01;

USE AULA01;

-- COMENTARIO TESTE

CREATE TABLE TBdados
(id_dados int primary key identity(1,1) NOT NULL,
nome varchar(80),
telefone varchar(20),
email varchar(100),
dcad date);

-- insert into TBdados() values ();

insert into TBdados(nome,telefone,email,dcad)
values('joao teste','119483-4876','teste@teste.com','17-03-2025');

insert into TBdados(nome,telefone,email,dcad)
values('lucas teste','118956-5776','lucas@teste.com','17-03-2025');

insert into TBdados(nome,telefone,email,dcad)
values('fernanda teste','118974-2569','fernanda@teste.com','17-03-2025');

insert into TBdados(nome,telefone,email,dcad)
values('thiago sobrenome','116325-7485','thiago@teste.com','17-03-2025');

insert into TBdados(nome,telefone,email,dcad)
values('Fabio sobrenome','112222-6666','fabio@teste.com','13-06-2024');

-- select COLUNAS from TABELA;

select * from TBdados;

select nome, telefone from TBdados;

select dcad, email from TBdados;

select nome, nome, nome from TBdados;

select * from TBdados where id_dados = 2;

select * from TBdados where nome like 'joao' and email like 'teste@teste.com';

select * from TBdados where nome like 'jo%';

select * from TBdados where nome like 'F%'

select * from TBdados where nome like 'joao' or nome like 'lucas' or nome like 'fernanda';

select * from TBdados where nome like '%teste';