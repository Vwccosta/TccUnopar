<!--contentType é o tipo de arquivo que está a pagina-->
<!--Pagina Okay-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
     
        
        
        <title>Novo Cliente</title>
        <link rel="stylesheet" type="text/css" href="Estilos.css"> 
    </head>
    
    
        <header>
        <h1>Cadastrar cliente novo</h1>
        </header>
    <body>
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


       
        <form method="post" action="executar_inserir.jsp    ">
            <label for="nome">Nome</label><br>
            <input type="text" name="nome"/><br>
            
            <label for="email">E-mail</label><br>
            <input type="Email" name="Email"/><br>
            
            <label for="telefone">Telefone</label><br>
            <input type="tel" name="Telefone"/><br> 
            
            <input type="submit" value="Cadastrar"/>
        </form>
</main>
</body>
<footer>Hort Fruit do zé © | Desenvolvido por Vander Wender </footer>

</html>
 <!--Pagina Okay-->
