CREATE TABLE chefes(
	id_chefe INT AUTO_INCREMENT primary key,
    nome_chefe varchar(50) not null,
    setor varchar(50) not null,
		foreign key (setor) 
        references setores (nome_setor)
);

CREATE TABLE compradores(
	cnpj INT primary key,
    produto_comprado varchar(50) not null,
    valor_produto DECIMAL(10,2),
		foreign key(valor_produto)
        references produtos (valor)
);

CREATE TABLE funcionarios(
	id_funcionarios INT AUTO_INCREMENT primary key,
    nome_funcionarios varchar(50) not null,
    setor varchar(50) not null,
		foreign key (setor) 
        references setores (nome_setor)
);

CREATE TABLE produtos(
	nome_produto varchar(50) primary key,
    quantidade INT not null,
    valor DECIMAL(10,2) not null,
    foreign key (nome_produto)
    references setores (produto_fabricado)
);

CREATE TABLE setores(
	nome_setor varchar(50) primary key,
    produto_fabricado varchar(50)
    
);