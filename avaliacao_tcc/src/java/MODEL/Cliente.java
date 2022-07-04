//A camada Model é o armazenamento do banco
package MODEL;
// MODEL.CLIENTE
public class Cliente {
//  Varchar no banco é declarado como String no Model
  private int id;
  private String nome;
  private String Email;
  private String telefone;
//Metodo get é utilizado para pegar um valor do banco
    public int getId() {
        return id;
    }
//Metodo Set é utilizado para alterar um valor do banco
    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

}
