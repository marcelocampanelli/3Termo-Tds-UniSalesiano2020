create table fornecedores (id_fornecedor integer not null PRIMARY key AUTO_INCREMENT,
                           fn_nome varchar(40),
                           fn_cnpj varchar(18) not null unique);



create table funcionarios (
	id_funcionario integer not null PRIMARY KEY AUTO_INCREMENT,
    fn_nome varchar(40) not null
);

create table grupo_produtos(
	id_grupo integer not null PRIMARY KEY AUTO_INCREMENT,
    gp_descricao varchar(40),
    id_funcionario integer,
    FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id_funcionario)
);

create table prateleiras (
	id_prateleira integer not null PRIMARY KEY AUTO_INCREMENT,
    pt_descricao varchar(40),
    pt_local varchar(40)
);

create table produtos (
	id_produtos integer not null PRIMARY KEY AUTO_INCREMENT,
    id_grupo integer not null,
    FOREIGN KEY (id_grupo) REFERENCES grupo_produtos (id_grupo),
    pr_descricao varchar(40) not null,
    pr_saldo decimal(15,5),
    pr_precovenda decimal(10,3)
);


create table localizacao (id_produto integer not null,
                          id_prateleira integer not null,
                          PRIMARY key (id_prateleira, id_produto),
                          FOREIGN key (id_produto) references produtos (id_produto),
                          FOREIGN key (id_prateleira) references prateleiras (id_prateleira)
                          );

create table fornecimento (id_fornecedor integer not null,
                           id_produto integer not null,
                           fn_precocusto decimal (10,3),
                           foreign key (id_fornecedor) references fornecedores (id_fornecedor),
                           foreign key (id_produto) references produtos (id_produto),
                           PRIMARY key (id_fornecedor, id_produto)
                           );                         					

insert into fornecedores (fn_nome, fn_cnpj) VALUES ('Maccarão & Cia Ltda', '55.822.698/0001-58');	   
