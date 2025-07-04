create table cliente(
	id_cliente serial,
	nome varchar(40),
	senha varchar (20),
	email varchar (50),
	celular char (13),
	telefone char (13),
	id_genero int,
	data_nascimento date,
	CPF char(11),
	ultima_atualizacao timestamp
);

create table genero(
	id_genero serial,
	nome varchar(10),
	ultima_atualizacao timestamp
);

create table produto(
	id_produto serial,
	nome varchar (40),
	codigo char(13),
	descricao text,
	id_marca int,
	avaliacao int,
	tamanho varchar (5),
	preco numeric(5,2),
	ultima_atualizacao timestamp
);

create table marca(
	id_marca serial,
	nome varchar(30),
	ultima_atualizacao timestamp
);

create table inventario(
	id_inventario serial,
	id_produto int,
	estoque int,
	ultima_atualizacao timestamp
);

create table compra(
	id_compra serial,
	id_inventario int,
	id_cliente int,
	valor_pago numeric(6,2),
	data_venda date,
	funcionario varchar(30),
	quantidade_vendida int,
	promocao bool,
	ultima_atualizacao timestamp
);

alter table cliente add
primary key (id_cliente);

alter table genero add
primary key (id_genero);

alter table produto add
primary key (id_produto);

alter table marca add
primary key (id_marca);

alter table inventario add
primary key (id_inventario);

alter table compra add
primary key (id_compra);

alter table cliente add constraint fk_genero
foreign key (id_genero) references genero(id_genero);

alter table produto add constraint fk_marca
foreign key (id_marca) references marca(id_marca);

alter table inventario add constraint fk_produto
foreign key (id_produto) references produto(id_produto);

alter table compra add constraint fk_cliente
foreign key (id_cliente) references cliente(id_cliente);

alter table compra add constraint fk_inventario
foreign key (id_inventario) references inventario(id_inventario);

drop table compra cascade;
 