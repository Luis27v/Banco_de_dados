-- sql comandos
-- comandos de restriçao

use 0302_rh;
select * from tb_funcionario
where funcionario = 'Ana Clara';

select * from tb_funcionario
where matricula = 1;

--    01)  Alterar na tabela tb_funcionario  matricula = 1  salario (6000)

update tb_funcionario set salario = 7000 where matricula = 1;
select * from tb_funcionario
where matricula = 1;

--    02)  Alterar – aumentar os salarios dos tb_funcionarios em 10%

select * from tb_funcionario;
update tb_funcionario
set salario = salario * 1.1
where matricula < 20;


--    03)  Listar a tabela (tb_funcionario)  salario > 5000

select * from tb_funcionario where salario > 5000;

--    04) Lista os funcionários começa com a letra J

select * from tb_funcionario 
where funcionario like 'j%';
	
--    05) Lista os funcionários que tem salario entre 5000 e 10000

select * from tb_funcionario
where salario between 5000 and 10000;

--    06) Lista os funcionários do setor 1 e cargo 1

select * from tb_funcionario 
where cd_setor = 1 and cd_cargo= 1;


-- Anotações
-- Comandos de restrição SQL

-- Between (Valores em um intervalo)
select * from tb_funcionario where salario between 1000 and 10000

-- Like (Ordenação em string por caracteres)
-- (funcionario que começa com letra A e termina com letra A, respectivamente)
select * from tb_funcionario 
where funcionario like '%a'
where funcionario like 'a%'

-- Order (utilizado para ordenar, crescente e decrescente, respectivamente)
select * from tb_funcionario
order by cd_cargo
order by cd_cargo desc

-- limit (limita a um escopo do banco de dados)
select * from tb_funcionario limit 2
