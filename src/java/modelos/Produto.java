package modelos;

import java.math.BigDecimal;
import java.util.ArrayList;

public class Produto {

   private int id;
   private String titulo;
   private String descricao;
   private BigDecimal preco;
   private BigDecimal desconto;
   private int quantidade;

   public static ArrayList<Produto> lista = new ArrayList();

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
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

   public BigDecimal getPreco() {
      return preco;
   }

   public void setPreco(BigDecimal preco) {
      this.preco = preco;
   }

   public BigDecimal getDesconto() {
      return desconto;
   }

   public void setDesconto(BigDecimal desconto) {
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

}
