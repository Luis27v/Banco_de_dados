create database bd_aula_0302b;

use bd_aula_0302b;

create table tb_aula
(cd_aula int not null primary key,
aula char(30));

alter table tb_aula
add turma int;

alter table tb_aula 
add turma int;

alter table tb_aula
modify column turma char(30);

alter table tb_aula
drop column turma;

drop table tb_aula;
