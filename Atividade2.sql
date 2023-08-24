create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id_categoria int auto_increment,
produto varchar(255) not null,
qual varchar(255) not null,
primary key(id_categoria)
);


insert into tb_categorias values (default,"pizza","Salgada"), (default,"esfiha","Salgada"),(default,"pizza","doce"),(default,"esfiha","doce"),(default,"refrigerante","coca");
select * from tb_categorias;

create table tb_pizzas(
id_pizzas int auto_increment,
id_categorias int,
sabor varchar(255) not null,
preco decimal (10,2) not null,
tamanho varchar (255) not null,
primary key (id_pizzas),
foreign key(id_categorias) references tb_categorias(id_categoria)
);

insert into tb_pizzas values (default,1, "Mussarela",40.50, "pequeno"),(default,3, "chocolate",40.50, "grande"),
(default,2, "carne",10.50, "grande"),(default,4, "Romeu e julieta",11.50, "pequeno"),(default,5, "laranja",8.50, "grnade"),
(default,1, "margarita",45.50, "pequeno"),(default,1, "calabresa",38.20, "media"),(default,3, "banana com chocolate",40.50, "grande");

select * from tb_pizzas;

select * from tb_pizzas inner join tb_categorias on tb_categorias.id_categoria = tb_pizzas.id_categorias;

select * from tb_pizzas inner join tb_categorias on tb_categorias.id_categoria = tb_pizzas.id_categorias where tb_categorias.produto ="pizza";