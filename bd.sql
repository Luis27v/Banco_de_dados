-- Stored procedure

use bd_pedido_0302;

delimiter $$
create procedure sp_01R()
begin 
    select * from tb_cliente limit 1; 
    select * from tb_pedido limit 1; 
    select * from tb_veiculo limit 1; 
    select * from tb_vendedor limit 1; 
end $$

delimiter ;

-- crie uma stored procedure sp_02()
-- nr_pedido, dt_pedido, vl_pedido 

delimiter %% 
create procedure sp_02() 
begin 
  select nr_pedido, dt_pedido, valor_pedido 
  from tb_pedido; 

end %%
delimiter ; 

call sp_02();

-- 6 

delimiter ##
create procedure sp_ivendedor(vcd_vendedor int, 
                              vvendedor char(50))
begin 
   select * from tb_vendedor; 
   
   insert into tb_vendedor 
   (cd_vendedor, vendedor) 
   values 
   (vcd_vendedor, vvendedor); 
   
   select * from tb_vendedor; 
   
end ##

delimiter ; 

call sp_ivendedor(7,'Vitor bbWeek');
