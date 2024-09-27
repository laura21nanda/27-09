create table clientes(
	id_cliente int auto_increment primary key not null,
	nome varchar(50) not null,
	Cpf varchar(50) not null,
	rg varchar(50) not null,
	telefone int not null ,
	Estado varchar (50) not null,
    Cidade varchar (50)not null,
    Rua varchar (50) not null,
    numero int not null
);



create table dependente(
	id_dep int auto_increment primary key,
	id_cliente int,
	nome varchar(50) not null,
	cpf varchar(50) not null,
	foreign key (id_cliente) references clientes(id_cliente)
);


insert into clientes(nome,Cpf,rg,telefone,Estado,Cidade,Rua,numero)
values("Lucas","1234-4566","12345678", 11115263,"Sao Paulo", "Guarei","josé bonifacio", 492),
	 ("Luiza","1234-4566","12345678", 1111526, "Sao Paulo","Itapetininga","Tiradentes",100),
		("Bruno","1234-4566","12345678", 11115263, "Sao Paulo","Tatuí","São paulo",240),
		("Grazieli","1234-4566","12345678", 11115263,"Sao Paulo", "Guareí","Zico bueno",499),
		("Luiza","1234-4566","12345678", 11115263,"Sao Paulo", "Itapetininga","rio branco",387);
        
insert into dependente(id_cliente,nome,cpf)
values(1,"Laura","1234-5678-99"),
		(2,"Felipe","1234-5678-99"),
        (3,"Julia","1234-5678-99"),
        (4,"matheus","1234-5678-99"),
        (5,"Lorena","1234-5678-99"),
        (1,"Eduarda","1234-5678-99"),
        (2,"Pedro","1234-5678-99"),
        (3,"Leo","1234-5678-99");
        
        select * from clientes;
        
    update cliente
    set nome = "Fernanda"
    where id_cliente = 1;
    
      update cliente
    set nome = "Breno"
    where id_cliente = 2;
    
      update cliente
    set nome = "Alany"
    where id_cliente = 3;
    
     