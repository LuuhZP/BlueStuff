package modelos;

import java.util.ArrayList;
import java.util.Date;

public class Cartao {
    private Pessoa pessoa;
    private String tipo;
    private String nome;
    private String numero;
    private String digitoVerificador;
    private Date dataValidade;

    public static ArrayList<Cartao> lista = new ArrayList();

    public Pessoa getCliente() {
        return pessoa;
    }

    public void setCliente(Pessoa pessoa) {
        this.pessoa = pessoa;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getDigitoVerificador() {
        return digitoVerificador;
    }

    public void setDigitoVerificador(String digitoVerificador) {
        this.digitoVerificador = digitoVerificador;
    }

    public Date getDataValidade() {
        return dataValidade;
    }

    public void setDataValidade(Date dataValidade) {
        this.dataValidade = dataValidade;
    }

    public static ArrayList<Cartao> getLista() {
        return lista;
    }

    public static void setLista(ArrayList<Cartao> lista) {
        Cartao.lista = lista;
    }
}
