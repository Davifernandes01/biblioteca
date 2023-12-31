create database Biblioteca

create table Compra_livro(

    id int PRIMARY KEY IDENTITY(1,1),
    nome varchar(50) not null UNIQUE,
    autor VARCHAR(50) not null,
    paginas int not null,
    quantidade int not null,
    preco DECIMAL(10,2) not null,
    data DATETIME not NULL

);

--teste

INSERT into Compra_livro(nome, autor, paginas,quantidade,preco,data)values('Percy Jackson e a casa de atheana', 'Rick Riordan', 265, 5 ,30.99, GETDATE())
insert into Clientes(nome,cpf,telefone) values ('rada', '162.234.244-76','23465783459')

insert into Clientes(nome,cpf,telefone) values ('davi', '162.214.244-76','23565783459')
SELECT * from Compra_livro;

select * from  Livros;

insert into Emprestimos(dataEmprestimo,dataDevolver,isDevolveu,id_cliente,id_livro,quantidade)
values (GETDATE(), GETDATE(), 1, 2,3,1)

SELECT * from Emprestimos;

select * from Multas;
-----
GO

--trigger para adicionar o none, autor, paginas e quantidade de um livro, na tabela correspondente
create TRIGGER adiciona_livro
on Compra_livro
for insert 
   as BEGIN

   declare
   @nome VARCHAR(50),
   @autor VARCHAR(50),
   @paginas int,
   @quantidade int

   SELECT  @nome = nome, @autor = autor,@paginas = paginas ,@quantidade = quantidade from inserted

   insert into Livros(nome, autor, paginas, quantidade) VALUES(@nome, @autor,@paginas,@quantidade)

   END

GO
