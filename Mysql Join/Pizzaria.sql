create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id int auto_increment primary key,
categoria varchar(10),
tamanho varchar(10),
borda varchar(20)
);

create table tb_pizza(
id int not null auto_increment primary key,
sabor varchar(10),
valor decimal(5,2),
vegetariana boolean,
refrigante varchar(10),
id_categoria int,
foreign key (id_categoria) references tb_categoria(id));

insert into tb_categoria (categoria, tamanho, borda) values
("Salgada","Grande","Catupiri"),
("Salgada","Pequena","Brocolis"),
("Salgada","Brotinho","Cheddar"),
("Doce","Grande","Brigadeiro"),
("Doce","Pequena","Ninho");

insert into tb_pizza (sabor, valor, vegetariana,refrigante, id_categoria) values
("Mussarela",19.99,false,"itu",5),
("Calabresa",23.50,true,"Fanta-Laranja",3),
("Portuguesa",24.99,false,"Coca-Cola",2),
("Frango",26.99,true,"Dell-valle",1),
("Frango-Catupiry",28.99,false,"Suquita",3),
("Ruffles",30.99,true,"Dolly",3),
("Ninho",43.99,true,"Cerveja",5),
("Chocolate",47.99,true,"Skol",4);

select * from tb_pizza where valor > 45;
 
select * from tb_pizza where valor between 29 and 60;
    
select * from tb_pizza where sabor like "%C%";
    
select * from tb_pizza inner join tb_categoria on tb_categoria.id= tb_pizza.id_categoria;

drop table tb_pizza;

select * from  db_pizzaria_legal;

