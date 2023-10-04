create table Clientes(

  id int PRIMARY key IDENTITY(1,1),
  nome VARCHAR(50) not null,
  cpf char(14) not null unique,
  telefone char(11) not null unique
);
