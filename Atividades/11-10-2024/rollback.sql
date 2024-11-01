-- Exemplo de código onde é possível usar o rollback

create database teste;

use teste;

create table pessoa (
	id int not null auto_increment primary key,
    nome varchar(200),
    idade int
);

insert into pessoa (nome, idade) values ("samuel", 20),("coxa", 20),("camargo", 20),("wesllen", 20),("zonta", 20);

start transaction;

update pessoa set idade = 10;

rollback;

commit;

select * from pessoa;
-- Devolve as idades como sendo 20, mesmo alterando com o update sem where, graças ao rollback


-- Exemplo de código que não é possível ser feito rollback
drop database teste;
create database teste;

use teste;

create table pessoa (
	id int not null auto_increment primary key,
    nome varchar(200),
    idade int
);

insert into pessoa (nome, idade) values ("samuel", 20),("coxa", 20),("camargo", 20),("wesllen", 20),("zonta", 20);

update pessoa set idade = 10;

rollback;

commit;

select * from pessoa;
-- Muda as idades para 10, pois por um descuido a transaction não foi iniciada