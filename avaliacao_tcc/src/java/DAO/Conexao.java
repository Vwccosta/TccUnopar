
package DAO;
//responsável por se comunicar com todos os drivers disponível do banco.
import java.sql.DriverManager;
//classe responsável por manter uma conexão aberta com o banco
import java.sql.Connection;

public class Conexao {
    public Connection getConexao(){
     try{
// denuncia a presença de eventuais erros de classpath(Classpath é onde estão as bibliotecas do java)
         Class.forName("com.mysql.jdbc.Driver");
                ///Caminho do banco, falta mudar o banco
  
            return DriverManager.getConnection("jdbc:mysql://localhost/bdhortfruit","root","");
     }catch(Exception erro){
         //caso de erro na conexão
         throw new RuntimeException ("erro classe conexao"+erro);
     }   
    }
}
