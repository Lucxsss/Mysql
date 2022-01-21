
create database db_ecommerce;



use db_ecommerce;




create table tb_produtos(
id bigint(5) auto_increment,
    nome varchar(20) not null,
    preco decimal (10,2),
    tamanhoDisp varchar(20) not null,
    marca varchar(20) not null,
    cor varchar(20) not null,
    ativo boolean,
    primary key (id)
);




insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Boné New era", 180.00, "50 a 60", "New era", "preto, branco e vermelho" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Boné Lacoste", 399.00, "36 a 40", "Lacoste", "azul" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Air Force ", 699.00, "38 a 42", "Nike", "Preto e Branco" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Jordan one", 2050.99, "39 a 44", "Nike", "Vermelho e Branco" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Jordan trhee", 1230.90, "38 a 44", "Nike", "Vermelho e Azul" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("SportWear Air Max", 1099.99, "36 a 42", "Nike", "Branco e Vermelho" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Air Force 1'07", 699.00, "34 a 42", "Nike", "Branco e Azul" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Nike shox", 299.00, "32 a 40", "Nike", "Verde e Branco" , true);




select * from tb_produtos;

DELETE FROM tb_produtos WHERE id=9;



select * from tb_produtos where preco > 500;



select * from tb_produtos where preco < 500;




update tb_produtos set preco = 159.60
	where id = 1;