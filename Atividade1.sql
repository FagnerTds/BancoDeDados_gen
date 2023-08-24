create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes (
id_classes bigint auto_increment,
lutador varchar(255) not null,
poder_extra varchar(255) not null,
primary key(id_classes)
);

select * from tb_classes;

create table tb_personagens(
id_personagens bigint auto_increment,
id_clases bigint,
nome varchar (255) not null,
ataque decimal(10,2) not null,
defesa decimal(10,2) not null,
primary key (id_personagens),
foreign key(id_clases) references tb_classes(id_classes)
);

insert into tb_classes (lutador, poder_extra) values ("Boxeador", "supersoco"),("Muay Thay", "Chute Capiroto"),("Capoeira", "Mortal-Atack"),("JiuJitsu", "Abraço de Urso"),
("Kung-full", "Sequencia matadora");

insert into tb_personagens (id_clases, nome,ataque,defesa) values (1, "Popó", 83.20,72.43),(5, "Li", 79.20,92.43),(2, "Rodrigo", 80.20,82.43),(4, "Carlão", 69.20,98.43),
(3, "Osvaldo", 78.82,77.85),(1, "Morramedy", 91.82,82.85),(2, "Manéu", 89.82,87.85),(2, "Jack", 88.82,97.85);

select * from tb_personagens;

select * from tb_personagens where ataque>80;
select * from tb_personagens where ataque between 80 and 90;
select * from tb_personagens where nome like "c%";

select * from tb_personagens inner join tb_classes on tb_classes.id_classes  = tb_personagens.id_clases;
select nome, ataque, defesa, lutador, poder_extra from tb_personagens inner join tb_classes on tb_classes.id_classes  = tb_personagens.id_clases 
where tb_classes.lutador = "Muay Thay";



