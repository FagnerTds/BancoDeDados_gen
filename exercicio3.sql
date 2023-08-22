create database db_escola;
use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar (255) not null,
sexo varchar (255) not null,
nota decimal(10,2) not null,
serie varchar (255) not null,
primary key (id)
);
insert into tb_estudantes (nome,sexo,nota,serie) value ("Camila","F", 8.2, "terceiro-médio");
insert into tb_estudantes (nome,sexo,nota,serie) value ("Marcia","F", 5.1, "Setimo");
insert into tb_estudantes (nome,sexo,nota,serie) value ("Miguel","M", 1.5, "terceiro-médio");
insert into tb_estudantes (nome,sexo,nota,serie) value ("Jonatan","m", 10, "primeiro-médio");
insert into tb_estudantes (nome,sexo,nota,serie) value ("Patricia","F", 7.7, "segundo-médio");
insert into tb_estudantes (nome,sexo,nota,serie) value ("Marlon","m", 6.5, "quinto");
insert into tb_estudantes (nome,sexo,nota,serie) value ("Julia","F", 9, "primeira");
insert into tb_estudantes (nome,sexo,nota,serie) value ("Manuel","M", 9.2, "sétimo");

select * from tb_estudantes;
select * from tb_estudantes where nota>7;
select * from tb_estudantes where nota<7;

update tb_estudantes set nota =2 where id=3;

