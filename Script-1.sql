create table pessoa (
	id serial primary key,
	nome varchar(100),
	idade int
);

select * from pessoa

create table enderecos (
	id serial primary key,
	id_pessoa int references pessoa(id) on delete cascade,
	rua varchar(100),
	cidade varchar(50),
	estado varchar(50),
	cep varchar(10)
);

insert into pessoa (nome, idade) values ('João Silva', 30);
insert into pessoa (nome, idade) values ('Maria Oliveira', 20);
insert into pessoa (nome, idade) values ('Carlos Souza', 40);
insert into pessoa (nome, idade) values ('Ana Costa', 35);