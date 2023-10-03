/* 

	entidades: Reservas, livros, clientes, comentarios, multas, emprestimos(Entidade associativa), compra_livros

	atributos: clientes:
	{
			id
			nome, 
			cpf,
			nº telefone

	}

	livros
	{
			id,
			nome,
			autor,
			nº de paginas,
			quantidade:

	
	}

	comentarios:
	{
		id,
		comentario
		id_livro
		id_cliente
	}

	reservas:{
		id,
		id_cliente,
		id_livro,
		
	}

	multas:
	{
		id,
		id_livro,
		id_cliente,
		valor


	}

	emprestimos
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
			nº de paginas,
			quantidade_comprada,
			preço,
			data de aquisição

	}

/*