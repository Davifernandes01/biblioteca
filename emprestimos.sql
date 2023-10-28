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


--testes


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


--criação da trigger para colocar na tabela multa os clientes que não devolveram os livros ate a data estipulada.
GO
create trigger multa_emprestimos
on Emprestimos
after insert
as BEGIN
  DECLARE
        @dataDevolver DATETIME,  
        @id int,
        @isdevolveu bit,

        @dataDAQUI21DIAS DATETIME
        set @dataDAQUI21DIAS = DATEADD(day,21,GETDATE())

        --tabela emprestimo

      select  @dataDevolver = dataDevolver, @id = id, @isdevolveu = isDevolveu from inserted;

    --caso a @datadevolver seja igual a data atual, o  @isdevolveu passará a ser 0
      update Emprestimos
      set isDevolveu = 0
      from Emprestimos
      where @dataDAQUI21DIAS = @dataDevolver;


--inserindo dados na tabela multas caso isdevolveu seja igual a 0
  if @isdevolveu = 0
    BEGIN
     insert into Multas (valor, id_emprestimos) VALUEs(20.00, @id);
    END
            
END
go


drop trigger multa_emprestimos
