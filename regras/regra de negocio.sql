/* 
Peço desculpas pela confusão anterior. Aqui estão algumas regras de negócios avançadas para um sistema de gerenciamento de biblioteca fictício que você pode usar como base para criar um banco de dados no SQL Server:

Empréstimos:

Um usuário pode fazer um empréstimo de no máximo 5 livros por vez.
O prazo padrão de empréstimo é de 21 dias, mas os usuários podem renovar uma vez, estendendo-o por mais 21 dias.
Implemente notificações automatizadas para lembretes de devolução próxima ou empréstimos atrasados.
Reservas:

Os usuários podem fazer reservas para livros que estão atualmente emprestados.
Quando um livro reservado estiver disponível, o próximo na fila de reserva será notificado e terá 3 dias para fazer o empréstimo.
Controle de Estoque:

Mantenha um registro do estoque de cada livro, registrando as quantidades disponíveis e o número total de cópias.
Quando uma cópia é emprestada ou devolvida, atualize o estoque automaticamente.
Multas e Taxas:

Aplique multas diárias para atrasos na devolução de livros, por exemplo, R$ 1 por dia.
Os usuários com multas pendentes não podem fazer novos empréstimos até que suas multas sejam liquidadas.
Avaliações e Comentários:

Permita que os usuários avaliem e deixem comentários sobre os livros que leram.
Exiba a classificação média dos livros com base nas avaliações dos usuários.
Gerenciamento de Funcionários:

Compras de Livros:

Registre todas as compras de novos livros para a biblioteca, incluindo detalhes como título, autor, preço e data de aquisição.
Atualize automaticamente o estoque quando novos livros são adquiridos.
Relatórios Gerenciais:

Crie relatórios que permitam aos administradores da biblioteca monitorar o uso, as multas, os livros mais populares, as tendências de empréstimos, etc.
Ofereça a capacidade de exportar relatórios em diferentes formatos, como PDF ou Excel.
Segurança de Acesso:

Implemente autenticação de usuários com diferentes níveis de acesso, como administradores, funcionários e usuários padrão.
Mantenha registros de login e rastreamento de atividades para fins de segurança.
Backup e Recuperação:

Faça backup regular do banco de dados e estabeleça um procedimento de recuperação em caso de falhas ou corrupção de dados. /*