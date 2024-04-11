create database db_ec;

use db_ec;

create table tb_produtos(
id bigint primary key auto_increment,
nome varchar(255) not null,
quantidade int not null,
tipoproduto varchar(255) not null,
preco decimal(6,2) not null
);

insert into tb_produtos (nome, quantidade, tipoproduto, preco) values ("Play 5", 3, "eletrônico", 5000.00);
insert into tb_produtos (nome, quantidade, tipoproduto, preco) values ("Xbox Series S", 6, "eletrônico", 3000.00);
insert into tb_produtos (nome, quantidade, tipoproduto, preco) values ("Xbox Series X", 8, "eletrônico", 4000.00);
insert into tb_produtos (nome, quantidade, tipoproduto, preco) values ("Notebook", 6, "eletrônico", 3000.00);
insert into tb_produtos (nome, quantidade, tipoproduto, preco) values ("Smartphone", 6, "telefonia", 2000.00);
insert into tb_produtos (nome, quantidade, tipoproduto, preco) values ("Camisa", 56, "vestuário", 30.00);
insert into tb_produtos (nome, quantidade, tipoproduto, preco) values ("Whey Protein", 46, "suplementos", 180.00);
insert into tb_produtos (nome, quantidade, tipoproduto, preco) values ("Sofá", 27, "móveis", 800.00);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 900.00 where id = 8;

select * from tb_produtos;
