-- exercícios vi

-- comentario de linha com o nome: levi e luiz

create database dbEscola;
use dbEscola;
create table tbCliente(
IdCli int primary key,
NomeCli varchar(50) not null,
NumEnd int check(NumEnd<=32767),
DataCadastro datetime default(current_timestamp())
);

alter table tbCliente add CPF numeric (11) unique not null;
alter table tbCliente add Cep numeric(5); 

create database dbEmpresa;
 use dbEmpresa;
 
 create table tbEndereco(
 CEP numeric (5) primary key,
 Logradouro varchar(250) not null, 
 IDUf tinyint
 );
 describe tbEndereco;
 
 alter table tbCliente add 
 constraint FK_CEP_TBCLIENTE foreign key (CEP) references tbEndereco(CEP);
 
 DESCRIBE TBCLIENTE;
 
 /*
 1 - o tamanho de cada tipo de dado
 2 - Index
 3 - declaração de variáveis
 */
-- exercicio VII 

create table tbEst(
IdUf tinyint primary key,
NomeUfs varchar(2) not null, 
NomeEstado varchar(40) not null
);

alter table tbEndereco add 
constraint FK_IdUF_TbEndereco foreign key (IdUf) references tbEst(IdUF);

alter table tbEst drop column NomeEstado;
alter table tbEst rename column NomeUfs to NomeUf;

alter table tbEndereco add column IdCid mediumint;

create table tbCidade(
idCid mediumint primary key, 
NomeCidade varchar(50) not null
);

alter table tbCidade modify NomeCidade varchar(250) not null;

alter table tbEndereco add 
constraint Fk_IdCid_tbEndereco foreign key (IdCid) references tbCidade(IdCid);

