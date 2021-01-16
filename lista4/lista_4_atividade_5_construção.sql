- criar um banco de dados
create database db_construindo_a_nossa_vida;

-- acesso ao db
use db_construindo_a_nossa_vida;

-- cria uma tabela
create table tb_categoria(
idproduto int not null,
departamento varchar (255) not null, 
categoria varchar (255) not null,
primary key (categoria)
);

-- insere dados na tabela
insert into tb_categoria (idproduto,departamento,categoria) values ("01", "hidráulica","torneira");
insert into tb_categoria (idproduto,departamento,categoria) values ("02", "iluminação" ,"lâmpada");
insert into tb_categoria (idproduto,departamento,categoria) values ("03", "construção","bloco");
insert into tb_categoria (idproduto,departamento,categoria) values ("04", "pisos/revestimentos","pisos cerâmico");
insert into tb_categoria (idproduto,departamento,categoria) values ("05", "elétrica","fios/cabos");

-- cria a tabela
create table tb_produto(
idproduto varchar(255) not null,
produto varchar (255) not null,
preco decimal(4,2) not null,
descrição varchar (255),
categoria varchar (255) not null,
primary key (idproduto),
foreign key (categoria) REFERENCES tb_categoria (categoria) -- primeiro vem a classe dessa tabela e depois a primary key da tabela referencia
);

-- insere dados na tabela
insert into tb_pizza (sabor, tamanho,preco,massa, categoria ) values ("Americana", "Grande", 55, "Fina", "pizza");
insert into tb_pizza (sabor, tamanho,preco,massa, categoria ) values ("Toscana", "Grande", 50, "Fina", "pizza");
insert into tb_pizza (sabor, tamanho,preco,massa, categoria ) values ("Atum", "Broto", 25, "media", "pizza"); 
insert into tb_pizza (sabor, tamanho,preco,massa, categoria ) values ("Guaraná", "Lata", 5, "-" , "refrigerante");
insert into tb_pizza (sabor, tamanho,preco,massa, categoria ) values ("Torta de limão", "P", 7.90, "-", "sobremesa");
insert into tb_pizza (sabor, tamanho,preco,massa, categoria ) values ("Portuguesa", "Grande", 53, "Fina", "pizza");
insert into tb_pizza (sabor, tamanho,preco,massa, categoria ) values ("Napolitana", "Grande", 40, "Fina", "pizza");
insert into tb_pizza (sabor, tamanho,preco,massa, categoria ) values ("Calabresa", "Grande", 40, "Fina", "pizza");

-- atualizar dados na tabela

select * from tb_pizza where preco <45;

select * from tb_pizza where preco <60 and preco >29;

select * from tb_pizza; 

select * from tb_pizza where categoria = "sobremesa";

-- busca com like

select * from tb_pizza where sabor Like "C%";

-- inner join

select * from tb_categoria inner join tb_pizza on tb_categoria.categoria = tb_pizza.categoria;

