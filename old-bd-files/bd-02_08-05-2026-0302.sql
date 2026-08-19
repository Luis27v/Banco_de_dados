-- criar o comando ddl bd_livro_0302
-- 08-05-2026

-- criar o banco de dados
create database bd_livro_0302;

-- abrir o banco de dados
use bd_livro_0302;

create table tb_genero
(cd genero int not null primary key,
genero CHAR(30));

create table tb_livro
(cd_livro int not null primary key,
titulo varchar(99),
cd_editora int not null,
cd_genero int not null ,
preco decimal(12,2));

create table tb_editora
(cd_editora int not null primary key,
editora varchar(99),

alter table tb_editora
add constraint fk_genero foreign key (cd_genero)
references tb_genero(cd_genero);

alter table tb_livro
add constraint fk_genero foreign key (cd_genero)
references tb_genero(cd_genero);
)
