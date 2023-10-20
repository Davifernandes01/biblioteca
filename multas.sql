CREATE TABLE Multas(
  id int PRIMARY key IDENTITY(1,1),
  valor decimal not null,
  id_emprestimos int not null

);

ALTER TABLE Multas
add CONSTRAINT fk_multa_emprestimos FOREIGN key (id_emprestimos) REFERENCES Emprestimos(id);