package modelos;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;

public class Carrinho {

    private Pessoa pessoa;
    private Date dataCriacao;
    private Date dataEnvio;
    private BigDecimal valorTotal;
    private BigDecimal desconto;

    public static ArrayList<ItemCarrinho> itens = new ArrayList();
    
    public static ItemCarrinho getItem(String busca){
       for(ItemCarrinho item : Carrinho.itens){
           if(item.getProduto().getTitulo().equals(busca))
               return item;
       }
       return null;
    }
    
    public Pessoa getCliente() {
        return pessoa;
    }

    public void setCliente(Pessoa pessoa) {
        this.pessoa = pessoa;
    }

    public Date getDataCriacao() {
        return dataCriacao;
    }

    public void setDataCriacao(Date dataCriacao) {
        this.dataCriacao = dataCriacao;
    }

    public Date getDataEnvio() {
        return dataEnvio;
    }

    public void setDataEnvio(Date dataEnvio) {
        this.dataEnvio = dataEnvio;
    }

    public BigDecimal getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(BigDecimal valorTotal) {
        this.valorTotal = valorTotal;
    }

    public BigDecimal getDesconto() {
        return desconto;
    }

    public void setDesconto(BigDecimal desconto) {
        this.desconto = desconto;
    }

    public ArrayList<ItemCarrinho> getItens() {
        return itens;
    }

    public void setItens(ArrayList<ItemCarrinho> itens) {
        this.itens = itens;
    }
    
    
}
