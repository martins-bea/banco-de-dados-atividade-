-- criar um banco de dados
create database db_generation_game_online;

-- acesso ao db
use db_generation_game_online;

-- cria uma tabela
create table tb_classe(
tipoclasse varchar(255) not null,
habilidade varchar(255) not null,
penalidade varchar(255) not null,
primary key(tipoclasse)
);

-- insere dados na tabela
insert into tb_classe (tipoclasse,habilidade,penalidade) values ("wizard", "spell" ,"minimum damage");
insert into tb_classe (tipoclasse,habilidade,penalidade) values ("warrior","maximum damage","short attack");
insert into tb_classe (tipoclasse,habilidade,penalidade) values ("support", "heal", "minimum life");
insert into tb_classe (tipoclasse,habilidade,penalidade) values ("explorer", "dexterity", "minimum life");
insert into tb_classe (tipoclasse,habilidade,penalidade) values ("tanker", "life", "minimum damage");

-- cria a tabela
create table tb_personagem(
nome varchar(255) not null,
classe varchar (255) not null,
ataque int not null,
defesa int not null,
item varchar (255) not null,
primary key (nome),
foreign key (classe) REFERENCES tb_classe (tipoclasse) -- primeiro vem a classe dessa tabela e depois a primary key da tabela classe
);


-- insere dados na tabela
insert into tb_personagem (nome, classe, ataque, defesa, item ) values ("Wick","wizard" , 1500, 1000, "book of spells");
insert into tb_personagem (nome, classe, ataque, defesa, item ) values ("Camille", "warrior", 2500, 1500, "espada");
insert into tb_personagem (nome, classe, ataque, defesa, item ) values ("Wanda", "warrior", 2500, 1500, "book of spells");
insert into tb_personagem (nome, classe, ataque, defesa, item ) values ("Claire", "tanker", 3000, 1000, "book of spells");
insert into tb_personagem (nome, classe, ataque, defesa, item ) values ("Warwick", "explorer", 1500, 800, "book of spells");
insert into tb_personagem (nome, classe, ataque, defesa, item ) values ("Carl", "support", 1000, 1000, "book of spells");
insert into tb_personagem (nome, classe, ataque, defesa, item ) values ("Warly", "wizard", 1500, 1000, "book of spells");
insert into tb_personagem (nome, classe, ataque, defesa, item ) values ("Charles", "wizard", 1500, 1000, "book of spells");
 

-- atualizar dados na tabela

select * from tb_personagem where ataque>2000;

select * from tb_personagem where defesa <2000 and defesa >1000;

select * from tb_personagem;

-- busca com like

select * from tb_personagem where nome Like "C%";

select * from tb_personagem where classe = "tanker";

-- inner join

select * from tb_classe inner join tb_personagem on tb_classe.tipoclasse = tb_personagem.classe;


/*-- deletar dados na tabela
-- delete from tb_personagem where id = 4;

-- delete from tb_personagem where id = 7;

alter table tb_personagem
add cargo varchar(255);
-- uptade
update  tb_personagem set salario=1000 where id = 5;

-- aterar coluna

-- alterar coluna escolhendo a posição
ALTER TABLE tb_personagem ADD COLUMN cargo varchar(255) AFTER nome;

-- remover uma coluna
alter table tb_personagem 
drop column descricao;*/