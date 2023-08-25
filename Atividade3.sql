create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
id_categorias int auto_increment,
droga varchar(255) not null,
parte varchar (255) not null,
primary key(id_categorias)
); 
create table tb_produtos (
id_produtos int auto_increment,
nome varchar(255) not null,
preco decimal (7,2) not null,
fabricante varchar(255) not null,
primary key(id_produtos)
);

insert into tb_categorias value (default,"Analgésico","muscular"),(default,"anti-alérgico","renal"),(default,"antiácidos","gastro"),
(default,"Antibióticos","geral"),(default,"Analgésico","geral");

alter table tb_produtos add id_categorias int after id_produtos;
delete from tb_categorias where id_categorias=6;

select * from tb_produtos;
alter table tb_produtos add constraint fk_medicamentos foreign key (id_categorias) references tb_categorias(id_categorias);

insert into tb_produtos values(default,4,"Clavulin",32.60,"grogazil"),(default,1,"anador",12.30,"genérico"),
(default,2,"Alegra",42.00,"genérico"),(default,4,"benzotacil",72.60,"genérico"),(default,5,"Cimegripe",8.60,"grogazil"),
(default,1,"novalgina",62.30,"genérico"),(default,3,"estomazil",2.60,"grogazil"),(default,2,"bom",85.35,"grogazil");

select * from tb_produtos where preco>50;
select * from tb_produtos where preco between 5 and 60;
select * from tb_produtos where nome like "a%";

select * from tb_produtos inner join tb_categorias on tb_produtos.id_categorias = tb_categorias.id_categorias;
select * from tb_produtos inner join tb_categorias on tb_produtos.id_categorias = tb_categorias.id_categorias where tb_categorias.droga="Antibióticos";