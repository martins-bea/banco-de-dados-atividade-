-- criar um banco de dados
create database escola;

-- acesso ao db
use escola;

-- cria uma tabela
create table tb_aluno(
matricula bigint(5) auto_increment,
nome varchar(255) not null,
idade bigint(5) not null,
escolaridade varchar(255) not null,
nota float not null,
primary key(matricula)
);

-- inserir dados na tabela

insert into tb_aluno (nome,idade,escolaridade,nota) values ("Beatriz",15, "Ensino Médio" , 10);
insert into tb_aluno (nome,idade,escolaridade,nota) values ("Rafaela",15, "Ensino Médio",7 );
insert into tb_aluno (nome,idade,escolaridade,nota) values ("Allen",14, "Ensino Médio",8);
insert into tb_aluno (nome,idade,escolaridade,nota) values ("Danilo",15, "Ensino Médio",5);
insert into tb_aluno (nome,idade,escolaridade,nota) values ("Luiz Felipe",15, "Ensino Médio",7);
insert into tb_aluno (nome,idade,escolaridade,nota) values ("Diego",14, "Ensino Médio",10);
insert into tb_aluno (nome,idade,escolaridade,nota) values ("Juliana",15, "Ensino Médio",5);
insert into tb_aluno (nome,idade,escolaridade,nota) values ("Verônica",14, "Ensino Médio",5);

-- atualizar dados na tabela

select * from tb_aluno where nota<=7;

select * from tb_aluno where nota>7;

select * from tb_aluno;

update  tb_aluno set idade=16 where matricula = 5;


