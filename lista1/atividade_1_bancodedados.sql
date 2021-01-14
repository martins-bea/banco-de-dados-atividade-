-- criar um banco de dados
create database db_servico_rh;

-- acesso ao db
use db_servico_rh;

-- cria uma tabela
create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(255) not null,
salario float not null,
idade int not null,
cargo varchar(20) not null,
primary key(id)
);
 
 -- busca da tabela funcionario
select * from tb_funcionario;

-- inserir dados na tabela
insert into tb_funcionario (nome,salario,idade,cargo) values ("Bia",5000, 50, "CEO");
insert into tb_funcionario (nome,salario,idade,cargo) values ("Bruno",2500, 32,"GERENTE" );
insert into tb_funcionario (nome,salario,idade,cargo) values ("Cheila",2000, 18,"SUPERVISORA");
insert into tb_funcionario (nome,salario,idade,cargo) values ("Charles",1000, 40, "PAU PRA TODA OBRA");
insert into tb_funcionario (nome,salario,idade,cargo) values ("Gabriela", 1000,25,"VENDEDORA");

-- atualizar dados na tabela


select * from tb_funcionario where salario<=2000;

select * from tb_funcionario where salario>2000;

select * from tb_funcionario;

update  tb_funcionario set salario=1000 where id = 5;

-- delete from tb_funcionario where id = 7;



/*-- deletar dados na tabela
-- delete from tb_funcionario where id = 4;

alter table tb_funcionario
add cargo varchar(255);
-- aterar coluna

-- alterar coluna escolhendo a posição
ALTER TABLE tb_funcionario ADD COLUMN cargo varchar(255) AFTER nome;

-- remover uma coluna
alter table tb_funcionario 
drop column descricao;*/