<!--Pagina Okay-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Produto</title>
        <link rel="stylesheet" type="text/css" href="Estilos.css"> 
    </head>
    <header>
        <h1>Novo Produto</h1>
    </header>
    <main>
             

        
        <nav>
                <ul>
                    <li>
                        <a href="index.jsp"><span style="color:black;">Home</span></a>

                    </li>
                    <li>
                        <a href="novo_cliente.jsp"><span style="color:black;">Novo Cliente</span></a>
                    </li>
                    <li>
                        <a href="consultar_cliente.jsp"><span style="color:black;">Consultar Cliente</span></a>
                    </li>
                    <li>
                        <a href="novo_produto.jsp"><span style="color:black;">Novo Produto</span></a>
                    </li>
                    <li>
                        <a href="consultar_produto.jsp"><span style="color:black;">Consultar Produto</span></a>
                    </li>
                    <li>
                        <a href="novo_fornecedor.jsp"><span style="color:black;">Novo Fornecedor</span></a>
                    </li>
                    <li>
                        <a href="consultar_fornecedor.jsp"><span style="color:black;">Consultar Fornecedor</span></a>
                    </li>
                </ul>
        </nav>

  
    <body>
        
        <form method="post" action="inserir_produto.jsp ">
            <label for="InputNomeProduto">Nome do Produto</label><br>
            <input type="text" name="InputNomeProduto"/><br>
            <label for="InputQtnd">Quantidade de Produtos por grama</label><br>
            <input botton type="number" name="InputQtnd"/><br>
           
            <input type="submit" value="Cadastrar Produto"/>      
        </form>
        
       
    </body>
    </main>
    <footer>Hort Fruit do zé © | Desenvolvido por Vander Wender </footer>

</html>
<!--Pagina Okay-->

