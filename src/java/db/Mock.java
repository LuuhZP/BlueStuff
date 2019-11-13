/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.util.ArrayList;
import modelos.Produto;
import modelos.Pessoa;

/**
 *
 * @author gutol
 */
public class Mock {


    public static void makeMock(){
        createUsers();
        createProducts();
    }

    private static void createUsers(){
        ArrayList<Pessoa> lista;

        if(Pessoa.getLista().isEmpty()){
            lista = Pessoa.getLista();

            Pessoa admin = new Pessoa();
            admin.setLogin("admin@ifpr.edu.br");
            admin.setSenha("admin");
            admin.setNome("Administrador");
            admin.setAdmin(true);
            lista.add(admin);

            Pessoa gerente = new Pessoa();
            gerente.setEmail("gerente@ifpr.edu.br");
            gerente.setSenha("123");
            gerente.setNome("Fulano de Tal");
            gerente.setAdmin(true);
            lista.add(gerente);
        }

    }

    private static void createProducts(){
        ArrayList<Produto> lista;

        //só cria produtos com lista vazia
        if(Produto.lista.isEmpty()){
            lista = Produto.lista;

            Produto caneta = new Produto();
            caneta.setDescricao("Caneta Bic");
            caneta.setPreco(1.5f);
            caneta.setImagem("http://www.bavatos.com.br/content/images/thumbs/0001016_caneta-esf-cristal-azul-bic_580.jpeg");
            lista.add(caneta);

            Produto caderno = new Produto();
            caderno.setDescricao("Caderno");
            caderno.setPreco(5.5f);
            caderno.setImagem("https://cdnv2.moovin.com.br/marbig/imagens/produtos/det/caderno-espiral-capa-plastica-universitario-1-materia-neon-lilas-96-folhas-img-56136.jpg");
            lista.add(caderno);

            Produto caneca = new Produto();
            caneca.setDescricao("Caneca");
            caneca.setPreco(10.0f);
            caneca.setImagem("https://socd.vteximg.com.br/arquivos/ids/171137-1310-1310/caneca-magica-azul-marinho-fosco.jpg?v=636404720194970000");
            lista.add(caneca);

            Produto lapis = new Produto();
            lapis.setDescricao("Lapis");
            lapis.setPreco(1.0f);
            lapis.setImagem("https://cdn.awsli.com.br/600x450/268/268329/produto/19914289/bcb456e23e.jpg");
            lista.add(lapis);

            Produto borracha = new Produto();
            borracha.setDescricao("Borracha");
            borracha.setPreco(1.5f);
            borracha.setImagem("https://images.tcdn.com.br/img/img_prod/698958/borracha_faber_castell_tons_pastel_fc_max_191_1_20190625134314.jpg");
            lista.add(borracha);

            Produto sulfite = new Produto();
            sulfite.setDescricao("Folha Sulfite");
            sulfite.setPreco(5.0f);
            sulfite.setImagem("https://http2.mlstatic.com/papel-sulfite-folha-a4-75-grs-pacote-c-500-unidades-D_NQ_NP_891083-MLB26996539385_032018-F.jpg");
            lista.add(sulfite);
        }
    }

}
