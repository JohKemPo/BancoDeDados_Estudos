create database sec05;

use sec05;

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
insert into tipos_produtos (descricao) values ('pc');
insert into tipos_produtos (descricao) values ('notebook');
insert into tipos_produtos (descricao) values ('tablet');
insert into tipos_produtos (descricao) values ('filtro');

insert into produtos (descricao, preco, codigo_tipo ) values ('desktop','1200', 1);
insert into produtos (descricao, preco, codigo_tipo ) values ('laptop','1800', 1);
insert into produtos (descricao, preco, codigo_tipo ) values ('impr','1300', 2);
insert into produtos (descricao, preco, codigo_tipo ) values ('scanner','900', 2);
insert into produtos (descricao, preco, codigo_tipo ) values ('mouse','1200', 1);
insert into produtos (descricao, preco, codigo_tipo ) values ('lampa','1800', 3);
insert into produtos (descricao, preco, codigo_tipo ) values ('impr 2','1300', 2);
insert into produtos (descricao, preco, codigo_tipo ) values ('scanner 2','900', 3);


-- filtrando com WHERE

select * from produtos where codigo_tipo = 2;