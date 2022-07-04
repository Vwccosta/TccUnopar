

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Fornecedor" %>
<%@page import="DAO.DAOFornecedor" %>

<%
    Fornecedor For = new Fornecedor();
    DAOFornecedor Clid = new DAOFornecedor();
 try{
        String nome= request.getParameter("nome_fornecedor");
        String Email= request.getParameter("Email");
        String telefone = request.getParameter("Telefone");
//        Adulterando o set de Cliente.java
        For.setNome_fornecedor(nome);
        For.setEmail(Email);
        For.setTelefone(telefone);
//        Executando o metodo do DAO em Cli.cliente
        Clid.InserirFornecedor(For);
        out.print("Fornecedor inserido com sucesso");
        out.print("<meta http-equiv='refresh' content='3,url=index.jsp'>");
}catch (Exception erro){
    throw new RuntimeException("Erro executar Fornecedor:"+erro);
        }
%>