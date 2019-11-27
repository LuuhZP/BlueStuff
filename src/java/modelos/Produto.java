package modelos;


import java.util.ArrayList;
import java.util.Arrays;

public class Produto {

   private String titulo;
   private String descricao;
   private String categoria;
   private float preco;
   private float desconto;
   private int quantidade;
   private String keyWords;
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
   
    public static void deletar(String busca){
        Produto prod = Produto.getProduto(busca);
        Produto.lista.remove(prod);
    }
    
    public String getImagens(){
        String img = "";
        for(String s : listaImg)
            img += ", " + s;
        return img;
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
   
   public static void setDesconto(String busca, float desconto){
       Produto prod = Produto.getProduto(busca);
       prod.setDesconto(desconto);
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
        return keyWords;
    }

    public void setKeyWords(String KeyWords) {
        this.keyWords = KeyWords;
    }

    public ArrayList<String> getListaImg() {
        return listaImg;
    }

    public void setListaImg(String listaImg) {
        this.listaImg = new ArrayList<>(Arrays.asList(listaImg.split(" , ")));
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
   
    public String toString() {
        return titulo.replaceAll(" ", "-");
    }  
}
