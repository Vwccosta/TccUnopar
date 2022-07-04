 

//O DAO é responsável pelas operações CRUD no domínio;
//- O DAO não é responsável por conexões ;
package DAO;
import MODEL.Cliente;
import java.sql.Connection;
//uma forma de você fazer uma inserção no banco mais segura por evitar SQL Insertion, onde você prepara os parametros para serem inseridos
import java.sql.PreparedStatement;
//Faz o mesmo do PreparedStatement, porém de uma maneira menos segura   
import java.sql.Statement;
//Metodo para conter uma lista de objeto com metodos para adicionar, ler a posição, apagar
import java.util.ArrayList;
//Mostra o resultado como um select no banco
import java.sql.ResultSet;


public class DAOCliente {
    //classe responsável por manter uma conexão aberta com o banco
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cliente> lista = new ArrayList<>();
    
    public DAOCliente(){
        //Abrindo uma nova conexão referenciado no conexão.Java
        conn = new Conexao().getConexao();
    }
    
    public void InserirCliente(Cliente Cliente){
    
        String sql = "Insert into tb_cliente (nome_cliente,email_cliente,telefone_cliente) values(?,?,?)";
   
    try{
      //stmt usado para criar um objeto que representa a instrução SQL que será executada, sendo que é invocado através do objeto Connetion.
      stmt = conn.prepareStatement(sql);
      //adiciona a String no metodo criado em Cliente.Java
      stmt.setString(1, Cliente.getNome());
      stmt.setString(2,Cliente.getEmail());
      stmt.setString(3, Cliente.getTelefone());
      stmt.execute();
      stmt.close();
    
    }catch(Exception erro){
        
        throw new RuntimeException("Erro inserir usuário:"+erro);
    }
    }
  
    public ArrayList<Cliente> listarCliente (){
    
        String sql = "select * from tb_cliente";
    
    try{
        st = conn.createStatement();
        
        rs=st.executeQuery(sql);
        
        //Enquanto haver dados a serem mostrado ele repete a ação
        while(rs.next()){
                Cliente cliente = new Cliente ();
                cliente.setId(rs.getInt("id_cliente"));
                cliente.setNome(rs.getString("nome_cliente"));
                cliente.setEmail(rs.getString("email_cliente"));
                cliente.setTelefone(rs.getString("Telefone_cliente"));
                lista.add(cliente);
            }
        
    }catch(Exception erro){
    
        throw new RuntimeException("erro ao listar todos Clientes;"+erro);
    }
        return lista;
    }
    
      public ArrayList<Cliente> listarClienteNome (String valor){
    
        String sql="select * from tb_cliente where nome_cliente like '%"+valor+"%' ";
    
    try{
        st = conn.createStatement();
        
        rs=st.executeQuery(sql);
        
        while(rs.next()){
                Cliente cliente = new Cliente ();
                cliente.setId(rs.getInt("id_cliente"));
                cliente.setNome(rs.getString("nome_cliente"));
                cliente.setEmail(rs.getString("email_cliente"));
                cliente.setTelefone(rs.getString("Telefone_cliente"));
                lista.add(cliente);
            }
        
    }catch(Exception erro){
    
        throw new RuntimeException("erro ao listar todos Clientes;"+erro);
    }
        return lista;
    }
    
    
};
