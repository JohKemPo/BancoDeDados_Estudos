select * from tipos_produtos;
select * from produtos;

select p.codigo, p.descricao, p.preco, tp.descricao
	from produtos as p, tipos_produtos as tp
	where p.codigo_tipo = tp.codigo;
    
--  mudando label

select p.codigo as 'codigo', p.descricao as 'descricao', p.preco as 'preco', tp.descricao as 'tipo produto'
	from produtos as p, tipos_produtos as tp
	where p.codigo_tipo = tp.codigo;