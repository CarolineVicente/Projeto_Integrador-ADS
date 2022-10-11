create database kaizen
default character set utf8
default collate utf8_general_ci;

create table `pessoas` (
`nome` varchar(30) NOT NULL,
`nascimento` date NOT NULL,
`sexo` enum('M','F','NB') NOT NULL,
`cpf` varchar(14) NOT NULL,
`nacionalidade` varchar(20) NOT NULL,
primary key (cpf)
)default charset = utf8;

insert into pessoas
(nome, nascimento, sexo, cpf, nacionalidade)
values
('Lucas', '2004-05-22', 'M', '000-000-000-00', 'Brasileiro');

select * from pessoas;

alter table pessoas
rename to usuarios;

alter table usuarios
drop column email;

alter table usuarios
add column email varchar(30) not null unique default '' first;

alter table usuarios
add column telefone varchar(12) not null unique default '' after nome;

alter table usuarios
add column senha varchar(12) not null unique default'' after email;

select * from usuarios;
desc usuarios;
