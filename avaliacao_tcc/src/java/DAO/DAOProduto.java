
package DAO;
import MODEL.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;

public class DAOProduto {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList<>();
    
    public DAOProduto(){
        
        conn = new Conexao().getConexao();  
}
     public void InserirProduto(Produto Produto){
    
        String sql = "Insert into tb_produto (nome_produto,qtd_produto) values(?,?)";
   
    try{
    
      stmt = conn.prepareStatement(sql);
      stmt.setString(1,Produto.getNome_produto());
      stmt.setInt(2,Produto.getQtd_produto());
 
      stmt.execute();
      stmt.close();
    
    }catch(Exception erro){
        
        throw new RuntimeException("Erro inserir Produto:"+erro);
    }
     }
    
   public ArrayList<Produto> listarProduto(){
    
        String sql = "select * from tb_produto";
    
    try{
        st = conn.createStatement();
        
        rs=st.executeQuery(sql);
        
        
        while(rs.next()){
                Produto produto = new Produto ();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome_produto(rs.getString("nome_produto"));
                produto.setQtd_produto(rs.getInt("qtd_produto"));
                lista.add(produto);
            }
        
    }catch(Exception erro){
    
        throw new RuntimeException("erro ao listar Produtos;"+erro);
    }
        return lista;
    }
    
      public ArrayList<Produto> listarProdutoNome(String valor){
    
        String sql = "select * from tb_produto where nome_produto like '%"+valor+"%' ";
    
    try{
        st = conn.createStatement();
        
        rs=st.executeQuery(sql);
        
        
        while(rs.next()){
                Produto produto = new Produto ();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome_produto(rs.getString("nome_produto"));
                produto.setQtd_produto(rs.getInt("qtd_produto"));
                lista.add(produto);
            }
        
    }catch(Exception erro){
    
        throw new RuntimeException("erro ao listar Produtos;"+erro);
    }
        return lista;
  
      }
};
  


