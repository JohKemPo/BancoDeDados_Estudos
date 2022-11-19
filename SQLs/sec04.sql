create database sec04;
use sec04;

CREATE table tipos_produtos(
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY (codigo)
);

create table produtos(
	codigo INT NOT NULL auto_increment,
	descricao varchar(30) NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
	codigo_tipo int not null,
	primary key (codigo),
	foreign key (codigo_tipo) references tipos_produtos(codigo)
);

insert into tipos_produtos (descricao) values ('computador');
insert into tipos_produtos (descricao) values ('impressora');

insert into produtos (descricao, preco, codigo_tipo ) values ('desktop','1200', 1);
insert into produtos (descricao, preco, codigo_tipo ) values ('laptop','1800', 1);
insert into produtos (descricao, preco, codigo_tipo ) values ('impr','1300', 2);
insert into produtos (descricao, preco, codigo_tipo ) values ('scanner','900', 2);

-- select

select * from tipos_produtos;

select codigo, descricao from tipos_produtos;

select * from produtos;

select codigo, descricao, codigo_tipo from produtos;

--

-- apelidos
select p.codigo as cod, p.descricao as descr, p.preco as pre, p.codigo_tipo as ctp from produtos as p;

-- DML

update tipos_produtos set descricao = 'notebook' where codigo = 2;
--  update tipos_produtos set descricao = 'notebook'; NAO PERMITIDO!!!!!!!

delete from produtos where codigo = 1;



