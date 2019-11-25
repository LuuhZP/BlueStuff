package modelos;


import java.util.ArrayList;

public class Produto {

   private String titulo;
   private String descricao;
   private float preco;
   private float desconto;
   private int quantidade;
   private String KeyWords;
   public ArrayList<String> listaImg = new ArrayList();
   public static ArrayList<Produto> lista = new ArrayList();
   
   public static Produto getProduto(String busca){
       String buscar = busca.replaceAll("-", " ");
       for(Produto p : Produto.lista){
           if(p.getTitulo().equals(buscar))
               return p;
       }
       return null;
   }

   public String getTitulo() {
      return titulo;
   }

   public void setTitulo(String titulo) {
      this.titulo = titulo;
   }

   public String getDescricao() {
      return descricao;
   }

   public void setDescricao(String descricao) {
      this.descricao = descricao;
   }

   public float getPreco() {
      return preco;
   }

   public void setPreco(float preco) {
      this.preco = preco;
   }

   public float getDesconto() {
      return desconto;
   }

   public void setDesconto(float desconto) {
      this.desconto = desconto;
   }

   public int getQuantidade() {
      return quantidade;
   }

   public void setQuantidade(int quantidade) {
      this.quantidade = quantidade;
   }

   public static ArrayList<Produto> getLista() {
      return lista;
   }

   public static void setLista(ArrayList<Produto> lista) {
      Produto.lista = lista;
   }

    public String getKeyWords() {
        return KeyWords;
    }

    public void setKeyWords(String KeyWords) {
        this.KeyWords = KeyWords;
    }

    public ArrayList<String> getListaImg() {
        return listaImg;
    }

    public void setListaImg(ArrayList<String> listaImg) {
        this.listaImg = listaImg;
    }


    @Override
    public String toString() {
        return titulo.replaceAll(" ", "-");
    }  
   
   
}
