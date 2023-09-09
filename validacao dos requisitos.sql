/* 

	entidades: funcionarios, livros, clientes, comentarios, multas, emprestimos(Entidade associativa), compra_livros

	atributos: clientes:
	{
			id
			nome, 
			cpf,
			n� telefone

	}

	livros
	{
			id,
			nome,
			autor,
			n� de paginas,
			quantidade:

	
	}

	comentarios:
	{
		id,
		comentario
		id_livro
		id_cliente
	}

	multas:
	{
		id,
		id_livro,
		id_cliente,
		valor


	}

	emprestimos:
	{
			id,
			id_livro,
			id_cliente,
			data_emprestimo,
			data_devolver,
			devolveu ? (true, false)
			

	}

	compra_livros:
	{
			id,
			livro,
			autor,
			n� de paginas,
			quantidade_comprada,
			pre�o,
			data de aquisi��o

	}

/*