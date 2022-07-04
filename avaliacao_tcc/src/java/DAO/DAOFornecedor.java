 

//O DAO é responsável pelas operações CRUD no domínio;
//- O DAO não é responsável por conexões ;
package DAO;
import MODEL.Fornecedor;
import java.sql.Connection;
//uma forma de você fazer uma inserção no banco mais segura por evitar SQL Insertion, onde você prepara os parametros para serem inseridos
import java.sql.PreparedStatement;
//Faz o mesmo do PreparedStatement, porém de uma maneira menos segura   
import java.sql.Statement;
//Metodo para conter uma lista de objeto com metodos para adicionar, ler a posição, apagar
import java.util.ArrayList;
//Mostra o resultado como um select no banco
import java.sql.ResultSet;


public class DAOFornecedor {
    //classe responsável por manter uma conexão aberta com o banco
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Fornecedor> lista = new ArrayList<>();
    
    public DAOFornecedor(){
        //Abrindo uma nova conexão referenciado no conexão.Java
        conn = new Conexao().getConexao();
    }
    
    public void InserirFornecedor(Fornecedor Fornecedor){
    
        String sql = "Insert into tb_fornecedor (nome_fornecedor,email,telefone) values(?,?,?)";
   
    try{
      //stmt usado para criar um objeto que representa a instrução SQL que será executada, sendo que é invocado através do objeto Connetion.
      stmt = conn.prepareStatement(sql);
      //adiciona a String no metodo criado em Cliente.Java
      stmt.setString(1, Fornecedor.getNome_fornecedor());
      stmt.setString(2, Fornecedor.getEmail());
      stmt.setString(3, Fornecedor.getTelefone());
      stmt.execute();
      stmt.close();
    
    }catch(Exception erro){
        
        throw new RuntimeException("Erro inserir fornecedor:"+erro);
    }
    }
  
    public ArrayList<Fornecedor> listarFornecedor (){
    
        String sql = "select * from tb_fornecedor";
    
    try{
        st = conn.createStatement();
        
        rs=st.executeQuery(sql);
        
        //Enquanto haver dados a serem mostrado ele repete a ação
        while(rs.next()){
                Fornecedor fornecedor = new Fornecedor ();
                fornecedor.setId_fornecedor(rs.getInt("id_fornecedor"));
                fornecedor.setNome_fornecedor(rs.getString("nome_fornecedor"));
                fornecedor.setEmail(rs.getString("email"));
                fornecedor.setTelefone(rs.getString("telefone"));
                
                lista.add(fornecedor);
            }
        
    }catch(Exception erro){
    
        throw new RuntimeException("erro ao listar todos fornecedor;"+erro);
    }
        return lista;
    }
    
      public ArrayList<Fornecedor> listarFornecedorNome (String valor){
    
        String sql="select * from tb_fornecedor where nome_fornecedor like '%"+valor+"%' ";
    
    try{
        st = conn.createStatement();
        
        rs=st.executeQuery(sql);
        
        while(rs.next()){
                Fornecedor fornecedor = new Fornecedor ();
                fornecedor.setId_fornecedor(rs.getInt("id_fornecedor"));
                fornecedor.setNome_fornecedor(rs.getString("nome_fornecedor"));
                fornecedor.setEmail(rs.getString("email"));
                fornecedor.setTelefone(rs.getString("telefone"));
             
                lista.add(fornecedor);
            }
        
    }catch(Exception erro){
    
        throw new RuntimeException("erro ao listar todos fornecedor;"+erro);
    }
        return lista;
    }
    
    
};
