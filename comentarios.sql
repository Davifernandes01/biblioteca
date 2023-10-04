create table Comentarios(

  id int primary key IDENTITY(1,1),
  comentario text not null,
  nota decimal(2,1) not null,
  id_cliente int not null,
  id_livro int not null
);


--criando as fks (foreign key)
ALTER TABLE Comentarios
add CONSTRAINT fk_comentarios_clientes FOREIGN key(id_cliente) REFERENCES Clientes(id);

alter TABLE Comentarios
add CONSTRAINT fk_comentarios_livros FOREIGN key(id_livro) REFERENCES Livros(id);