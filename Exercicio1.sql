create database db_rechumanos;
use db_rechumanos;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar (255) not null,
sexo varchar (255) not null,
setor varchar (255) not null,
salario decimal (10,2) not null,
primary key (id)
);
insert into tb_colaboradores(nome,sexo,setor,salario) values ("Fabio", "M","ferramentaria",1230.00);
insert into tb_colaboradores(nome,sexo,setor,salario) values ("Maria", "F","Produção",2510.00);
insert into tb_colaboradores(nome,sexo,setor,salario) values ("Joana", "F","Recepcionista",3120.88);
insert into tb_colaboradores(nome,sexo,setor,salario) values ("Fagner", "M","Programador",9230.00);
insert into tb_colaboradores(nome,sexo,setor,salario) values ("Thomas", "M","portaria",1899.00);
select * from tb_colaboradores;

select * from tb_colaboradores where salario < 2000;
select * from tb_colaboradores where salario > 2000;

update tb_colaboradores set salario=3500.00 where id=3;