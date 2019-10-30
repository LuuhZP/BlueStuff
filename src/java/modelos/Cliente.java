package modelos;

import java.util.ArrayList;

public class Cliente {

   private int id;
   private Pessoa pessoa;

   public static ArrayList<Cliente> lista = new ArrayList();

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

   public static ArrayList<Cliente> getLista() {
       return lista;
   }

   public static void setLista(ArrayList<Cliente> lista) {
       Cliente.lista = lista;
   }

}
