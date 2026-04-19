create database setor; 
use setor; 
 
create table funcionario( 
ID int not null auto_increment, 
nome varchar(100) not null, 
primary key(ID), 
salario int NOT NULL, 
email varchar(222) not null, 
senha varchar(150) not null, 
cpf varchar(14) not null 
); 
 
create table registros( 
id INT AUTO_INCREMENT PRIMARY KEY, 
funcionario VARCHAR(100), 
serial_number VARCHAR(100) UNIQUE, 
data_hora DATETIME DEFAULT CURRENT_TIMESTAMP 
); 
 
INSERT INTO funcionario(nome, salario, email, senha, cpf) 
VALUES('Jose', 1500, 'moraestiago1276@gmail.com', '123456', '123.456.789-01'); 
 
INSERT INTO registros(funcionario, serial_number, data_hora) 
VALUES('Jose', '1500', '2026-04-04 15:09:00'); 
 
select * from funcionario; 
select * from registros; 

Select 
funcionario.ID, 
funcionario.nome,
funcionario.salario,
funcionario.email,
funcionario.cpf,
registros.id AS registros_id,
registros.serial_number,
registros.data_hora
from funcionario
inner join registros on funcionario.nome =registros.funcionario;
