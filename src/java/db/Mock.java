
package db;

import java.util.ArrayList;
import java.util.Collections;
import modelos.Produto;
import modelos.Pessoa;

public class Mock {


    public static void makeMock(){
        createUsers();
        createProducts();
        Collections.shuffle(Produto.lista);
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
            gerente.setLogin("gerente@ifpr.edu.br");
            gerente.setSenha("admin");
            gerente.setNome("Fulano de Tal");
            gerente.setAdmin(true);
            lista.add(gerente);
            
            Pessoa aluno = new Pessoa();
            gerente.setLogin("aluno@ifpr.edu.br");
            gerente.setSenha("admin");
            gerente.setNome("Ciclano de Tal");
            gerente.setAdmin(false);
            lista.add(aluno);
        }

    }

    private static void createProducts(){
        ArrayList<Produto> lista;

        //só cria produtos com lista vazia
        if(Produto.lista.isEmpty()){
            lista = Produto.lista;

            Produto caneta = new Produto();
            caneta.setTitulo("Caneta Bic Azul");
            caneta.setDescricao("Caneta Esferogáfica de cor Azul fabricada pela empresa BIC. Possui ponta de espeçura 3mm e comprimento de 15cm aaaa a a a a a aaaaaa a  aaaaaa a a a aaa a aa aa aaaaaa aaaa aaa  aaaa aaa a");
            caneta.setCategoria("outros");
            caneta.setPreco(1.50f);
            caneta.setDesconto(0.20f);
            caneta.listaImg.add("http://www.bavatos.com.br/content/images/thumbs/0001016_caneta-esf-cristal-azul-bic_580.jpeg");
            lista.add(caneta);

            Produto caderno = new Produto();
            caderno.setTitulo("Caderno");
            caderno.setCategoria("outros");
            caderno.setPreco(5.5f);
            caderno.listaImg.add("https://cdnv2.moovin.com.br/marbig/imagens/produtos/det/caderno-espiral-capa-plastica-universitario-1-materia-neon-lilas-96-folhas-img-56136.jpg");
            lista.add(caderno);
            lista.add(caderno);
            lista.add(caderno);
            lista.add(caderno);
            lista.add(caderno);
            lista.add(caderno);
            lista.add(caderno);
            lista.add(caderno);

            Produto caneca = new Produto();
            caneca.setTitulo("Caneca");
            caneca.setPreco(10.0f);
            caneca.setCategoria("casa-mobilha");
            caneca.listaImg.add("https://socd.vteximg.com.br/arquivos/ids/171137-1310-1310/caneca-magica-azul-marinho-fosco.jpg?v=636404720194970000");
            lista.add(caneca);
            lista.add(caneca);
            lista.add(caneca);
            lista.add(caneca);
            lista.add(caneca);
            lista.add(caneca);

            Produto lapis = new Produto();
            lapis.setTitulo("Lapis");
            lapis.setCategoria("casa-mobilha");
            lapis.setPreco(1.0f);
            lapis.listaImg.add("https://cdn.awsli.com.br/600x450/268/268329/produto/19914289/bcb456e23e.jpg");
            lista.add(lapis);

            Produto borracha = new Produto();
            borracha.setTitulo("Borracha");
            borracha.setCategoria("casa-mobilha");
            borracha.setDesconto(0.5f);
            borracha.setPreco(1.5f);
            borracha.listaImg.add("https://images.tcdn.com.br/img/img_prod/698958/borracha_faber_castell_tons_pastel_fc_max_191_1_20190625134314.jpg");
            lista.add(borracha);
            lista.add(borracha);
            lista.add(borracha);
            lista.add(borracha);
            lista.add(borracha);
            lista.add(borracha);
            lista.add(borracha);

            Produto sulfite = new Produto();
            sulfite.setTitulo("Folha Sulfite");
            sulfite.setCategoria("casa-mobilha");
            sulfite.setPreco(5.0f);
            sulfite.listaImg.add("https://http2.mlstatic.com/papel-sulfite-folha-a4-75-grs-pacote-c-500-unidades-D_NQ_NP_891083-MLB26996539385_032018-F.jpg");
            lista.add(sulfite);
            lista.add(sulfite);
            lista.add(sulfite);
            lista.add(sulfite);
            lista.add(sulfite);
            lista.add(sulfite);
            lista.add(sulfite);
            lista.add(sulfite);
            lista.add(sulfite);
            lista.add(caneta);
            lista.add(caneta);
            lista.add(caneta);
            lista.add(lapis);
            lista.add(lapis);
            lista.add(lapis);
            lista.add(lapis);
            lista.add(lapis);
            lista.add(lapis);


        }
    }

}
