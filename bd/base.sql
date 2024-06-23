drop database if exist dragons_dogma;
create database dragons_dogma;

create table categoria(
    id int primary key auto_increment,
    nombre varchar (10),
    habilidad varchar (20),
    elemento varchar (20)
);

create table vocacion(
    id int primary key auto_increment,
    nombre varchar (30),
    armamento varchar (50),
    armadura varchar (50)
);

create table tipo_de_item(
    id int primary key auto_increment,
    nombre varchar (50),
),


create table items(
    id int primary key auto_increment,
    nombre varchar (50),
    tipo varchar(20),
    id_tipo int,
    foreing key (id_tipo) reference 
);

create table personaje(
    id int primary key auto_increment,
    nombre varchar (30),
    nivel int default 1, 
    id_categoria int,
    id_vocacion int,
    foreing key (id_categoria) reference categoria (id),
    foreing key (id_vocacion) reference vocacion (id)
);

create table inventario(
    id int primary key auto_increment,
    id_personaje int,
    id_item int,
    foreing key (id_personaje) reference personaje (id),
    foreing key (id_item) reference item (id)
);

insert into categoria(nombre,habilidad,elemento)values
("humano" , null , "electrico"),
("bestia" , "resistencia" , "fuego"),
("elfo" , "inteligencia" , "dendro"),
("orco" , "fuerza" , "piedra");

insert into vocacion(nombre,armamento,armadura)values
("arquero" , "arco y flecha" , "peto ligero"),
("guerrero" , "espadon" , "cota de malla"),
("hechicero" , "archibaston" , "tunica"),
("lancero" , "lanza" , "peto"),
("mago" , "baston" , "bata");

insert into item(nombre)values
("pocion"),
("potenciador"),
("transaccion"),
("skin");


insert into item(nombre,tipo)values
("pocion de vida" , "1"),
("piedra teletransportadora" , "2"),
("cabeza de medusa" , "2"),
("moneda de oro" , "3"),
("capa verde" , "4"),
("corazon de dragon" , "3");

