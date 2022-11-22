create database SNKRS;
USE SNKRS;

create table Pessoa (
idPessoa int primary key auto_increment,
Nome varchar(45),
Email varchar(45),
Senha varchar(45),
CPF char(11)
);

create table Ranking (
idRanking int auto_increment,
fkPessoa int,
foreign key (fkPessoa) references Pessoa(idPessoa),
primary key(idRanking, fkPessoa),
Pontuacao INT
);