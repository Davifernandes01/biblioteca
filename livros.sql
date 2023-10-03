create table Livros(

    id int PRIMARY KEY IDENTITY(1,1),
    nome varchar(50) not null UNIQUE,
    autor VARCHAR(50) not null,
    paginas int not null,
    quantidade int not null

  
);


