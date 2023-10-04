create table Livros(

    id int PRIMARY KEY IDENTITY(1,1),
    nome varchar(50) not null UNIQUE,
    autor VARCHAR(50) not null,
    paginas int not null,
    quantidade int not null

  
);

--criação da trigger para avisar que a quantidade do livro chegou a zero
go
create TRIGGER verificaQuantidade
on Livros
after INSERT, UPDATE
as 
    BEGIN
        DECLARE
        @quantidade int,
        @id int;

        SELECT @quantidade = quantidade, @id = id from inserted;

        if @quantidade = 0
            BEGIN
                RAISERROR('quantidade igual a zero! favor comprar mais livros', 14,1)
            end;

END
go