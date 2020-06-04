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

insert into funcionarios (fn_nome) values ('João'), ('Maria'), ('Jose');
insert into prateleiras (pt_descricao, pt_local) values ('P1 - Corredor 1', 'Corredor 1'), 
                        ('P2 - Açougue', 'Açougue');
insert into grupo_produtos (id_funcionario, gp_descricao) values (1, 'Alimentos'), (1,'Higiene e Limpeza'), (2, 'Açougue');   

insert into produtos (id_grupo, pr_descricao, pr_saldo, pr_precovenda) values (1, 'Sabão em Pó', 0, 10), (2, 'Frango', 10, 5.80); 

--consulta
select p.id_produto, p.pr_descricao, p.id_grupo, g.id_grupo, g.gp_descricao
   from produtos p, grupo_produtos g
   where g.id_grupo = p.id_grupo


--alterando codigo do produto
update produtos set produtos.id_grupo = 2
	where produtos.id_produto = 1;
    
update produtos set produtos.id_grupo = 1
	where produtos.id_produto = 2;

--select alterando as labels
select p.id_produto      IDProduto
     , p.pr_descricao    Produto
     , p.id_grupo        IDGrupo
     , g.gp_descricao    Grupo
   from produtos p, grupo_produtos g
   where g.id_grupo = p.id_grupo;

--inserir localização
insert into localizacao values (1, 1), (2,2);



select produtos.pr_descricao,
	   prateleiras.pt_descricao
from localizacao,
     produtos,
	 prateleiras
where produtos.id_produto      = localizacao.id_produto
  and   prateleiras.id_prateleira = localizacao.id_prateleira;


--inserir dados do fornecimento
insert into fornecimento values (2, 1, 2.80);
insert into fornecimento values (1, 2, 7.50);


--consulta sobre o fornecimento
select fornecedores.fn_nome, produtos.pr_descricao 
  from fornecimento,
        fornecedores,
        produtos
  where fornecedores.id_fornecedor = fornecimento.id_fornecedor
    and produtos.id_produto        = fornecimento.id_produto


-- Produto - Preço de Compra - Preco de Venda - Lucro
select  produtos.pr_descricao      Produto  
      , fornecimento.fn_precocusto PrecoCusto
	  , produtos.pr_precovenda     PrecoVenda 
      , (produtos.pr_precovenda - fornecimento.fn_precocusto) Lucro
from 
	   produtos 
      ,fornecimento 
WHERE
		produtos.id_produto = fornecimento.id_produto;


-- Atualizar o Valor de venda de um produto em 10%
update produtos set produtos.pr_precovenda = (7.50 * 1.10)
     where produtos.id_produto = 2;


--Criando table clientes
create table clientes (id_cliente integer not null PRIMARY key AUTO_INCREMENT,
                       cli_nome varchar(40));
--Criando table vendas
create table vendas (id_venda integer not null primary key AUTO_INCREMENT,
                     ven_data date ,
                     ven_valor decimal (10,0) default 0,
                     id_cliente integer not null,
                     foreign key (id_cliente) references clientes (id_cliente)
                     );

--Criando table produtos da venda
create table produtos_da_venda (id_venda integer not null,
                                foreign key (id_venda) references vendas (id_venda),
                                id_produto integer not null,
                                foreign key (id_produto) references produtos (id_produto),
                                pv_quantidade decimal(10,3),
                                pv_valor decimal(10,3),
                                primary key (id_venda, id_produto)
                    		);

--adicionado clientes
insert into clientes (cli_nome) values ('Marcelo'),('Vitor'), ('Daniel');
