

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto" %>
<%@page import="DAO.DAOProduto" %>

<%
    Produto pro = new Produto();
    DAOProduto prod = new DAOProduto();
    
 try{
        String InputNomeProduto= request.getParameter("InputNomeProduto");
//        O parametro é convertido para String então para tal foi usado parseInt retornando valor para Int
        int InputQtnd = Integer.parseInt(request.getParameter("InputQtnd"));
        
        
        pro.setNome_produto(InputNomeProduto);
        pro.setQtd_produto (InputQtnd);
       
        prod.InserirProduto(pro);
        out.print("Produto inserido com sucesso");
        out.print("<meta http-equiv='refresh' content='3,url=index.jsp'>");
}catch (Exception erro){
    throw new RuntimeException("Erro executar Produto:"+erro);
        }
%>




