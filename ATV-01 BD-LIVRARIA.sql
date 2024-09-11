CREATE TABLE livros
(
        id integer not null AUTO_INCREMENT primary key,
        titulo varchar (50),
        autor varchar(50),
        editora varchar(50),
        ano_publicacao integer,
        preco DECIMAL(10, 2)
);
CREATE TABLE clientes
(
        id integer not null AUTO_INCREMENT primary key,
        nome varchar(50),
        email varchar(50),
        endereco varchar(50)
);
CREATE TABLE  pedidos
(
        id integer not null AUTO_INCREMENT primary key,
        id_cliente integer,
        data_pedido date,
        total DECIMAL (10, 2),
         FOREIGN KEY(id_clientes) references clientes(id)
);