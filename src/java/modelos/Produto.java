package modelos;


import java.util.ArrayList;

public class Produto {

   private String titulo;
   private String descricao;
   private String imagem;
   private float preco;
   private float desconto;
   private int quantidade;

   public static ArrayList<Produto> lista = new ArrayList();

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

   public String getImagem() {
      return imagem;
   }

   public void setImagem(String imagem) {
      this.imagem = imagem;
   }

}
