create procedure sp_08c(in v_new_vendedor char(30))
begin
declare vcd_vendedor int;
	select * from tb_vendedor order by cd_vendedor;
    
    select max(cd_vendedor) + 1 into vcd_vendedor
    from tb_vendedor;
    
    insert into tb_vendedor
		(cd_vendedor, vendedor)
        values
        (vcd_vendedor, v_new_vendedor);
        
	select * from tb_vendedor order by cd_vendedor;

end%%
delimiter ;

call sp_07c('Pedro Ryan');
