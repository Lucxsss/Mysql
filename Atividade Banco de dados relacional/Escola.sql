-- Criação do banco de Dados
create database db_escola;


-- Usando o banco de dados para as querys
use db_escola;


-- criando a tabela

create table tb_estudantes(
id bigint(5) auto_increment,
    nome varchar(20) not null,
    idade bigint (2),
    turma bigint (2),
    sexo varchar(20) not null,
    nota bigint (2),
    ativo boolean,
    primary key (id)
);

-- Inserindo os valores na minha tabela.


insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Beatriz", 15, 27, "Feminino", 7 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Julia", 14, 21, "Feminino", 8 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Vinicius", 12, 31, "Masculino", 9 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Yulio", 15, 27, "Masculino", 10 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Fabricio", 16, 13, "Masculino", 8 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("João", 16, 13, "Masculino", 7 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Marcos", 15, 27, "Masculino", 6 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Gabriel", 16, 21, "Masculino", 10 , true);

-- Selecionando minha tabela

select * from tb_estudantes;


-- Faça um select que retorne o/as estudantes com a nota maior do que 7.

select * from tb_estudantes where nota > 7;


-- Faça um select que retorne o/as estudantes com a nota menor do que 7.

select * from tb_estudantes where nota <= 7;


-- Ao término atualize um dado desta tabela através de uma query de atualização.

update tb_estudantes set nota = 8
	where id = 1;