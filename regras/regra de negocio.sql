/* 
Pe�o desculpas pela confus�o anterior. Aqui est�o algumas regras de neg�cios avan�adas para um sistema de gerenciamento de biblioteca fict�cio que voc� pode usar como base para criar um banco de dados no SQL Server:

Empr�stimos:

Um usu�rio pode fazer um empr�stimo de no m�ximo 5 livros por vez.
O prazo padr�o de empr�stimo � de 21 dias, mas os usu�rios podem renovar uma vez, estendendo-o por mais 21 dias.
Implemente notifica��es automatizadas para lembretes de devolu��o pr�xima ou empr�stimos atrasados.
Reservas:

Os usu�rios podem fazer reservas para livros que est�o atualmente emprestados.
Quando um livro reservado estiver dispon�vel, o pr�ximo na fila de reserva ser� notificado e ter� 3 dias para fazer o empr�stimo.
Controle de Estoque:

Mantenha um registro do estoque de cada livro, registrando as quantidades dispon�veis e o n�mero total de c�pias.
Quando uma c�pia � emprestada ou devolvida, atualize o estoque automaticamente.
Multas e Taxas:

Aplique multas di�rias para atrasos na devolu��o de livros, por exemplo, R$ 1 por dia.
Os usu�rios com multas pendentes n�o podem fazer novos empr�stimos at� que suas multas sejam liquidadas.
Avalia��es e Coment�rios:

Permita que os usu�rios avaliem e deixem coment�rios sobre os livros que leram.
Exiba a classifica��o m�dia dos livros com base nas avalia��es dos usu�rios.
Gerenciamento de Funcion�rios:

Compras de Livros:

Registre todas as compras de novos livros para a biblioteca, incluindo detalhes como t�tulo, autor, pre�o e data de aquisi��o.
Atualize automaticamente o estoque quando novos livros s�o adquiridos.
Relat�rios Gerenciais:

Crie relat�rios que permitam aos administradores da biblioteca monitorar o uso, as multas, os livros mais populares, as tend�ncias de empr�stimos, etc.
Ofere�a a capacidade de exportar relat�rios em diferentes formatos, como PDF ou Excel.
Seguran�a de Acesso:

Implemente autentica��o de usu�rios com diferentes n�veis de acesso, como administradores, funcion�rios e usu�rios padr�o.
Mantenha registros de login e rastreamento de atividades para fins de seguran�a.
Backup e Recupera��o:

Fa�a backup regular do banco de dados e estabele�a um procedimento de recupera��o em caso de falhas ou corrup��o de dados. /*