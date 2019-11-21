
package modelos;

import java.util.ArrayList;
import java.util.Date;

public class Pessoa {

   private String nome;
   private String rg;
   private String cpf;
   private char sexo;
   private String telefone;
   private Date dataNas;
   private String cep;
   private String email;
   private String login;
   private String senha;
   private boolean admin;

   public static ArrayList<Pessoa> lista = new ArrayList();

   public static Pessoa login(String login, String senha){
      for(Pessoa p : Pessoa.lista){
         if(!p.getSenha().equals(senha) || !p.getEmail().equals(login) && !p.getLogin().equals(login)) {
          } else {
             return p;
          }
      }
      return null;
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

   public Date getDataNas() {
      return dataNas;
   }

   public void setDataNas(Date dataNas) {
      this.dataNas = dataNas;
   }

   public String getCep() {
      return cep;
   }

   public void setCep(String cep) {
      this.cep = cep;
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

}
