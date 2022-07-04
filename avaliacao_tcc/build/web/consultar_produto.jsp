
<!--Pagina Okay-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto" %>
<%@page import="DAO.DAOProduto" %>
<%@page import="java.util.ArrayList" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Produtos</title>
        <link rel="stylesheet" type="text/css" href="Estilos.css"> 
    </head>
    <header><h1>Consulta de Produtos</h1></header>
    
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
        
        <form action="consultar_produto.jsp" method="post">
            <label>Pesquisar por nome</label>
            <input type="text" name="nome" placeholder="Digite o nome"/>
            <input type="submit" value="Pesquisar">
        </form>
            <%
                      out.print("<table>");
                      out.print("<tr>");
                      out.print("<th>ID</th>");
                      out.print("<th>Nome</th>");
                      out.print("<th>Quantidade</th>");
                     
                
                      out.print("</tr>");
                      
                      DAOProduto Pro = new DAOProduto();
                      if(request.getParameter("nome")==" "  || request.getParameter("nome")==null){
                      ArrayList<Produto> Lista = Pro.listarProduto() ;
                      for(int i=0;i<Lista.size();i++){
                      out.print("<tr>");
                      out.print("<td>"+Lista.get(i).getId_produto()+"</td>");
                      out.print("<td>"+Lista.get(i).getNome_produto()+"</td>");
                      out.print("<td>"+Lista.get(i).getQtd_produto()+"</td>");
                      
   
                      out.print("<tr>");
                      }
            
            
            
            }else{
                      ArrayList<Produto> Lista = Pro.listarProdutoNome(request.getParameter("nome"));
                      for(int i=0;i<Lista.size();i++){
                      out.print("<tr>");
                      out.print("<td>"+Lista.get(i).getId_produto()+"</td>");
                      out.print("<td>"+Lista.get(i).getNome_produto()+"</td>");
                      out.print("<td>"+Lista.get(i).getQtd_produto()+"</td>");
                    
                      out.print("<tr>");
                    
                    }
                      }
            out.print("</table>");
            
            
            %>
      </main>
    </body>
    <footer>Hort Fruit do zé © | Desenvolvido por Vander Wender </footer>

</html>
<!--Pagina Okay-->
