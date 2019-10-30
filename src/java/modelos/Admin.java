
package modelos;

import java.util.ArrayList;

public class Admin {

   private int id;
   private Pessoa pessoa;

   public static ArrayList<Admin> lista = new ArrayList();

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public Pessoa getPessoa() {
      return pessoa;
   }

   public void setPessoa(Pessoa pessoa) {
      this.pessoa = pessoa;
   }

   public static ArrayList<Admin> getLista() {
      return lista;
   }

   public static void setLista(ArrayList<Admin> lista) {
      Admin.lista = lista;
   }

}
