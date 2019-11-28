package modelos;

public class ItemCarrinho {
    private Produto produto;
    private int quantidade;
    private float preco;
    
    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
    
    public String toString() {
        return produto.getTitulo().replaceAll(" ", "-");
    } 
}
