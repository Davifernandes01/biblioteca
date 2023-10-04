create TABLE Emprestimos(

  id int primary key IDENTITY(1,1),
  dataEmprestimo DATETIME not null,
  dataDevolver DATETIME not null,
  isDevolveu bit not null,
  id_cliente int not null,
  id_livro int not null,
  quantidade int not null

);

--restringindo a quantidade de 1 ate 5
alter table Emprestimos
add CONSTRAINT ck_quantidade_limite
check (quantidade >=1 and quantidade <=5);


--criação das fks

alter table Emprestimos
add CONSTRAINT fk_emprestimo_livro FOREIGN KEY (id_livro) REFERENCES Livros(id);

alter table Emprestimos
add CONSTRAINT fk_emprestimo_cliente FOREIGN key (id_cliente) REFERENCES Clientes(id);



--trigger para diminuir a quantidade de livros na tabela livros

go
create trigger diminui_quantidade_de_livro
on Emprestimos
for insert
as 
  BEGIN
  DECLARE
    @quantidadeDisponivel int,
    @quantidadeEmprestada int,
    @id_livro INT

    --selecionando a quantidade da tabela de livros

    select @quantidadeDisponivel = quantidade
    from Livros
    WHERE id = @id_livro;

    --tabela de emprestimos
    SELECT @quantidadeEmprestada = quantidade, @id_livro = id_livro from inserted;

    if @quantidadeEmprestada > @quantidadeDisponivel
        RAISERROR('quantidade do livro indisponivel no estoque', 14,1);
    ELSE
      update Livros
      SET quantidade = quantidade - @quantidadeEmprestada
      where id = @id_livro


END
go


drop TRIGGER diminui_quantidade_de_livro;