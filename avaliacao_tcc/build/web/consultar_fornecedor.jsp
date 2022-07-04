
<%@page import="DAO.DAOFornecedor"%>
<!--Pagina Okay-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Fornecedor" %>

<%@page import="java.util.ArrayList" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Fornecedor</title>
        <link rel="stylesheet" type="text/css" href="Estilos.css"> 
    </head>
    <header><h1>Consulta de Fornecedor</h1></header>
    
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
        
        <form action="consultar_fornecedor.jsp" method="post">
            <label>Pesquisar por nome</label>
            <input type="text" name="nome" placeholder="Digite o nome"/>
            <input type="submit" value="Pesquisar">
        </form>
          <%
                      out.print("<table>");
                      out.print("<tr>");
                      out.print("<th>ID</th>");
                      out.print("<th>Nome</th>");
                      out.print("<th>TELEFONE</th>");
                     
                
                      out.print("</tr>");
                      
                      DAOFornecedor For = new DAOFornecedor();
                      
                      if(request.getParameter("nome")==" "  || request.getParameter("nome")==null){
                      ArrayList<Fornecedor> Lista = For.listarFornecedor();
                      for(int i=0;i<Lista.size();i++){
                      out.print("<tr>");
                      out.print("<td>"+Lista.get(i).getId_fornecedor()+"</td>");
                      out.print("<td>"+Lista.get(i).getNome_fornecedor()+"</td>");
                      out.print("<td>"+Lista.get(i).getEmail()+"</td>");
                      out.print("<td>"+Lista.get(i).getTelefone()+"</td>");
                      
   
                      out.print("<tr>");
                      }
            
            
            
            }else{
                      ArrayList<Fornecedor> Lista = For.listarFornecedorNome(request.getParameter("nome_fornecedor"));
                      for(int i=0;i<Lista.size();i++){
                      out.print("<tr>");
                      out.print("<td>"+Lista.get(i).getId_fornecedor()+"</td>");
                      out.print("<td>"+Lista.get(i).getNome_fornecedor()+"</td>");
                      out.print("<td>"+Lista.get(i).getEmail()+"</td>");
                      out.print("<td>"+Lista.get(i).getTelefone()+"</td>");
                      
                    
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
