<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente" %>
<%@page import="DAO.DAOCliente" %>
<%@page import="java.util.ArrayList" %> 
<!--Pagina okay -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Clientes</title>
        <link rel="stylesheet" type="text/css" href="Estilos.css"> 
    </head>
    <header>
        <h1>Consultar Clientes<h1/>
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

  
        
        <form action="consultar_cliente.jsp" method="post">
            <label>Pesquisar por nome</label>
            <input type="text" name="nome" placeholder="Digite o nome"/>
            <input type="submit" value="Pesquisar">
        
        </form>
            <%
                      out.print("<table>");
                      out.print("<tr>");
                      out.print("<th>ID</th>"); 
                      out.print("<th>NOME</th>");
                      out.print("<th>EMAIL</th>");
                      out.print("<th>TELEFONE</th>");
                      
                      out.print("</tr>");
//                      Instancia Cli da classe DAOCliente criada em DAOClient.Java
                      DAOCliente Cli = new DAOCliente();
//                      Se pegar o <th> for vazio ou null então mostre a lista que é cli.ListarCliente(ListarCliente foi criada na DaoCliente(Cli))
                      if(request.getParameter("nome")==" "  || request.getParameter("nome")==null){
                      ArrayList<Cliente> Lista = Cli.listarCliente();
                      for(int i=0;i<Lista.size();i++){
                      out.print("<tr>");
//                      Listando Cliente pelo Lista declarado e pegando o get do Model.Cliente
                      out.print("<td>"+Lista.get(i).getId()+"</td>");
                      out.print("<td>"+Lista.get(i).getNome()+"</td>");
                      out.print("<td>"+Lista.get(i).getEmail()+"</td>");
                      out.print("<td>"+Lista.get(i).getTelefone()+"</td>");
                     
                      out.print("<tr>");
                      }
            
            
            
            }else{
                      ArrayList<Cliente> Lista = Cli.listarClienteNome(request.getParameter("nome"));
                      for(int i=0;i<Lista.size();i++){
                      out.print("<tr>");
                      out.print("<td>"+Lista.get(i).getId()+"</td>");
                      out.print("<td>"+Lista.get(i).getNome()+"</td>");
                      out.print("<td>"+Lista.get(i).getEmail()+"</td>");
                      out.print("<td>"+Lista.get(i).getTelefone()+"</td>");
                    
                      out.print("<tr>");
                    
                    }
                      }
            out.print("</table>");
            
            
            %>
            </main>
          
      <footer>Hort Fruit do zé © | Desenvolvido por Vander Wender </footer>

    </body>
</html>
<!--Pagina okay -->
