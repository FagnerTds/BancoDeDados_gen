create database db_commerce;
use db_commerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (10,2) not null,
fabricante varchar (255) not null,
fornecedor varchar (255) not null,
primary key (id)
);
insert into tb_produtos(nome,preco,fabricante,fornecedor) values ("Notebook",5899.00,"tech eletronics","Digital solution");
insert into tb_produtos(nome,preco,fabricante,fornecedor) values ("sapatilha",99.00,"havaianas","mercado Livre");
insert into tb_produtos(nome,preco,fabricante,fornecedor) values ("guitarra",699.00,"Giannini","TecSound");
insert into tb_produtos(nome,preco,fabricante,fornecedor) values ("Air Jordan",1299.00,"nike","Só marcas");
insert into tb_produtos(nome,preco,fabricante,fornecedor) values ("playstation 5 ",5699.00,"Sony","Ale Imports");
insert into tb_produtos(nome,preco,fabricante,fornecedor) values ("galaxy S23",6699.00,"Samsung","Casas Bahia");
insert into tb_produtos(nome,preco,fabricante,fornecedor) values ("mouse",128.00,"Dragon","Pichau");
insert into tb_produtos(nome,preco,fabricante,fornecedor) values ("fone",123.00,"QCY","China");

select * from tb_produtos;

select * from tb_produtos where preco >500;
select  * from tb_produtos where preco<500;

update tb_produtos set preco=1000.00 where id =4;