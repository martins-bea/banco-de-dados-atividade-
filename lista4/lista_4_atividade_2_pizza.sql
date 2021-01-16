-- criar um banco de dados
create database db_pizzaria_legal;

-- acesso ao db
use db_pizzaria_legal;

-- cria uma tabela
create table tb_categoria(
idcatalogo int not null,
desconto boolean not null, 
tipocategoria varchar (255) not null,
primary key (tipocategoria)
);

-- insere dados na tabela
insert into tb_categoria (idcatalogo,desconto,tipocategoria) values ("01", true ,"pizza");
insert into tb_categoria (idcatalogo,desconto,tipocategoria) values ("02", true ,"esfirra");
insert into tb_categoria (idcatalogo,desconto,tipocategoria) values ("03", true ,"calzone");
insert into tb_categoria (idcatalogo,desconto,tipocategoria) values ("04", false ,"refrigerante");
insert into tb_categoria (idcatalogo,desconto,tipocategoria) values ("05", false ,"sobremesa");

-- cria a tabela
create table tb_pizza(
sabor varchar(255) not null,
tamanho varchar (255) not null,
preco decimal(4,2) not null,
massa varchar (255),
categoria varchar (255) not null,
primary key (sabor),
foreign key (categoria) REFERENCES tb_categoria (tipocategoria) -- primeiro vem a classe dessa tabela e depois a primary key da tabela referencia
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

select * from tb_categoria inner join tb_pizza on tb_categoria.tipocategoria = tb_pizza.categoria;

