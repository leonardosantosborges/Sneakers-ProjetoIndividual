-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

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