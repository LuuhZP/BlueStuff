
package modelos;

import java.util.ArrayList;

public class Pessoa {

   private String nome;
   private String rg;
   private String cpf;
   private char sexo;
   private String telefone;
   private String dataNas;
   private String cep;
   private String rua;
    private String numero;
    private String complemento;
    private String bairro;
    private String cidade;
    private String estado;
   private String email;
   private String login;
   private String senha;
   private boolean admin;

   public static ArrayList<Pessoa> lista = new ArrayList();

   public static Pessoa login(String login, String senha){
      for(Pessoa p : Pessoa.lista){
         if(login.equals(p.getLogin()) && senha.equals(p.getSenha()))
             return p;
      }
      return null;
   }
   
   public static Pessoa getPessoa(String busca){
       String nome = busca.replaceAll("-", " ");
       for(Pessoa p : Pessoa.lista){
           if(p.getNome().equals(nome))
               return p;
       }
       return null;
       
   }
   
   public static void deletar(String busca){
        Pessoa pes = Pessoa.getPessoa(busca);
        Pessoa.lista.remove(pes);
    }

   public String getNome() {
      return nome;
   }

   public void setNome(String nome) {
      this.nome = nome;
   }

   public String getRg() {
      return rg;
   }

   public void setRg(String rg) {
      this.rg = rg;
   }

   public String getCpf() {
      return cpf;
   }

   public void setCpf(String cpf) {
      this.cpf = cpf;
   }

   public char getSexo() {
      return sexo;
   }

   public void setSexo(char sexo) {
      this.sexo = sexo;
   }

   public String getTelefone() {
      return telefone;
   }

   public void setTelefone(String telefone) {
      this.telefone = telefone;
   }

   public String getDataNas() {
      return dataNas;
   }

   public void setDataNas(String dataNas) {
      this.dataNas = dataNas;
   }

   public String getCep() {
      return cep;
   }

   public void setCep(String cep) {
      this.cep = cep;
   }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
   
   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getLogin() {
      return login;
   }

   public void setLogin(String login) {
      this.login = login;
   }

   public String getSenha() {
      return senha;
   }

   public void setSenha(String senha) {
      this.senha = senha;
   }

   public static ArrayList<Pessoa> getLista() {
      return lista;
   }

   public static void setLista(ArrayList<Pessoa> lista) {
      Pessoa.lista = lista;
   }

   public boolean isAdmin() {
      return admin;
   }

   public void setAdmin(boolean admin) {
      this.admin = admin;
   }
   
   @Override
    public String toString() {
        return nome.replaceAll(" ", "-");
    }

}
