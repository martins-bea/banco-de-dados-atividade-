-- criar um banco de dados
create database ecommerce;

-- acesso ao db
use ecommerce;

-- cria uma tabela
create table tb_produto(
codigo bigint(5) auto_increment,
produto varchar(255) not null,
valor float not null,
categoria varchar(255) not null,
tamanho varchar(255) not null,
primary key(codigo)
);

-- inserir dados na tabela

insert into tb_produto (produto,valor,categoria,tamanho) values ("Aromatizante",15.00, "Bem-estar", "Unico");
insert into tb_produto (produto,valor,categoria,tamanho) values ("Vela aromatizante",10.00, "Bem-estar","P" );
insert into tb_produto (produto,valor,categoria,tamanho) values ("Vela aromatizante",15.00, "Bem-estar","M");
insert into tb_produto (produto,valor,categoria,tamanho) values ("Vela aromatizante",25.00, "Bem-estar","G");
insert into tb_produto (produto,valor,categoria,tamanho) values ("Óleo essencial Capim",30.00, "Bem-estar","Unico");
insert into tb_produto (produto,valor,categoria,tamanho) values ("Óleo essencial Laranja",30.00, "Bem-estar","Unico");
insert into tb_produto (produto,valor,categoria,tamanho) values ("Óleo essencial Lavanda",30.00, "Bem-estar","Unico");
insert into tb_produto (produto,valor,categoria,tamanho) values ("Óleo essencial Camomila",30.00, "Bem-estar","Unico");

-- atualizar dados na tabela

select * from tb_produto where valor<=500;

select * from tb_produto where valor>500;

select * from tb_produto;

update  tb_produto set valor=20.00 where codigo = 4;


