create database db_rh;

use db_rh;

create table colaboradores(
id bigint primary key auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal(6,2) not null,
idade int not null
);

insert into colaboradores (nome, cargo, salario, idade) values("Pedro", "operador de caixa",1200.00, 19);
insert into colaboradores (nome, cargo, salario, idade) values("Mariana", "segurança",1600.00, 25);
insert into colaboradores (nome, cargo, salario, idade) values("José", "Auxiliar admnistrativo",1800.00, 23);
insert into colaboradores (nome, cargo, salario, idade) values("Gabriel", "Gerente",4500.00, 36);
insert into colaboradores (nome, cargo, salario, idade) values("William", "Supervisor",4300.00, 29);

select * from colaboradores where salario > 2000;
select * from colaboradores where salario < 2000;

select * from colaboradores;

update colaboradores set salario = 1500.00 where id = 2;