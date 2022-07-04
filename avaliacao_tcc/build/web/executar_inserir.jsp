

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente" %>
<%@page import="DAO.DAOCliente" %>

<%
    Cliente Cli = new Cliente();
    DAOCliente Clid = new DAOCliente();
 try{
        String nome= request.getParameter("nome");
        String Email= request.getParameter("Email");
        String telefone = request.getParameter("Telefone");
//        Adulterando o set de Cliente.java
        Cli.setNome(nome);
        Cli.setEmail(Email);
        Cli.setTelefone(telefone);
//        Executando o metodo do DAO em Cli.cliente
        Clid.InserirCliente(Cli);
        out.print("Usuário inserido com sucesso");
        out.print("<meta http-equiv='refresh' content='3,url=index.jsp'>");
}catch (Exception erro){
    throw new RuntimeException("Erro executar Cliente:"+erro);
        }
%>