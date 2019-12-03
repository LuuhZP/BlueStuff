
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

            Produto caneca = new Produto();
            caneca.setTitulo("Caneca");
            caneca.setPreco(10.0f);
            caneca.setCategoria("casa-mobilha");
            caneca.listaImg.add("https://socd.vteximg.com.br/arquivos/ids/171137-1310-1310/caneca-magica-azul-marinho-fosco.jpg?v=636404720194970000");
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
            
            Produto sulfite = new Produto();
            sulfite.setTitulo("Folha Sulfite");
            sulfite.setCategoria("casa-mobilha");
            sulfite.setPreco(5.0f);
            sulfite.listaImg.add("https://http2.mlstatic.com/papel-sulfite-folha-a4-75-grs-pacote-c-500-unidades-D_NQ_NP_891083-MLB26996539385_032018-F.jpg");
            lista.add(sulfite);
                        
            Produto vestidomidi = new Produto();
            vestidomidi.setTitulo("Vestido Midi");
            vestidomidi.setDescricao("Vestido Azul Marinho tamanho midi perfeito para passeios ao ar livre");
            vestidomidi.setPreco(45.99f);
            vestidomidi.setDesconto(10f);
            vestidomidi.listaImg.add("https://www.lindybopusa.com/media/catalog/product/e/t/ethel_blue.jpg");
            vestidomidi.listaImg.add("https://www.lindybopusa.com/media/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/1/4/1443703252-54339300.jpg");
            vestidomidi.setQuantidade(1988);
            vestidomidi.setKeyWords("vestido midi azul");
            vestidomidi.setCategoria("roupas");
            lista.add(vestidomidi);

            Produto moletomchamas = new Produto();
            moletomchamas.setTitulo("Moletom Chamas Azuis");
            moletomchamas.setDescricao("Moletom com print de chamas azuis");
            moletomchamas.setPreco(120.5f);
            moletomchamas.setDesconto(0f);
            moletomchamas.listaImg.add("http://makabago.com/3076-large_default/bluza-blue-flames.jpg");
            moletomchamas.listaImg.add("http://makabago.com/2784-large_default/blue-flames-koszulka-z-dlugim-rekawem.jpg");
            moletomchamas.listaImg.add("http://makabago.com/2842-large_default/bluza-dziecieca-blue-flames.jpg");
            moletomchamas.setQuantidade(34556);
            moletomchamas.setKeyWords("moletom chamas capuz");
            moletomchamas.setCategoria("roupas");
            lista.add(moletomchamas);

            Produto camitiedye = new Produto();
            camitiedye.setTitulo("Camiseta Tie Dye");
            camitiedye.setDescricao("Camiseta estilo Tie Dye feita artesanalmente com tons de azul");
            camitiedye.setPreco(78.5f);
            camitiedye.setDesconto(0f);
            camitiedye.listaImg.add("https://ragstock.com/wp-content/uploads/tie-dye-shirts-royal-front.jpg");
            camitiedye.listaImg.add("https://35f0jq1fcotly82b3o727xi0-wpengine.netdna-ssl.com/wp-content/uploads/tie-dye-shirts-teal-front-324x486.jpg");
            camitiedye.setQuantidade(50645);
            camitiedye.setKeyWords("camisa artesanal tiedye");
            camitiedye.setCategoria("roupas");
            lista.add(camitiedye);

            Produto fantasiaprincesa = new Produto();
            fantasiaprincesa.setTitulo("Vestido Fantasia Princesa");
            fantasiaprincesa.setDescricao("Vestido para quem deseja sentir se como uma princesa, trabalhado no cetim e tule");
            fantasiaprincesa.setPreco(250.5f);
            fantasiaprincesa.setDesconto(0f);
            fantasiaprincesa.listaImg.add("https://www.dhresource.com/0x0s/f2-albu-g8-M00-66-47-rBVaV10A0S-AYvhTAAMfOEFElB4492.jpg/pettigirl-halloween-jasmine-princess-dress.jpg");
            fantasiaprincesa.listaImg.add("https://i0.wp.com/ae01.alicdn.com/kf/Ha41e5b0e346c4a3aafa0b24994e15747Q/Kids-Carnival-Party-Costume-Girls-Jasmine-Princess-Dress-Children-Elena-Christmas-Birthday-Clothes-Child-Wig-Summer.jpg");
            fantasiaprincesa.setQuantidade(12);
            fantasiaprincesa.setKeyWords("fantasia princesa vestido");
            fantasiaprincesa.setCategoria("roupas");
            lista.add(fantasiaprincesa);

            Produto vestidobaile = new Produto();
            vestidobaile.setTitulo("Vestido Formal");
            vestidobaile.setDescricao("Vestido para baile formal cetim azul marinho");
            vestidobaile.setPreco(180.5f);
            vestidobaile.setDesconto(12.5f);
            vestidobaile.listaImg.add("https://dimg.dillards.com/is/image/DillardsZoom/zoom/rare-editions-big-girls-7-16-embellished-waist-extreme-high-low-dress/05320621_zi_navy.jpg");
            vestidobaile.listaImg.add("https://dimg.dillards.com/is/image/DillardsZoom/mainProduct/rare-editions-big-girls-7-16-embellished-waist-extreme-high-low-dress/05320621_zi_navy__01_ai.jpg");
            vestidobaile.setQuantidade(199);
            vestidobaile.setKeyWords("vestido formal baile");
            vestidobaile.setCategoria("roupas");
            lista.add(vestidobaile);

            Produto babyvestido = new Produto();
            babyvestido.setTitulo("Vestido Mamãe e Bebê Combinando");
            babyvestido.setDescricao("Vestido Mamãe e Bebê Combinando estampa de barquinhos azul claro");
            babyvestido.setPreco(33.5f);
            babyvestido.setDesconto(0f);
            babyvestido.listaImg.add("https://strawberrymeerkat.co.uk/wp-content/uploads/2019/06/duns-19.jpg");
            babyvestido.listaImg.add("https://strawberrymeerkat.co.uk/wp-content/uploads/2019/06/duns-3-2.jpg");
            babyvestido.setQuantidade(46768);
            babyvestido.setKeyWords("baby vestido infantil adulto");
            babyvestido.setCategoria("roupas");
            lista.add(babyvestido);

            Produto babymm = new Produto();
            babymm.setTitulo("Roupas para Bebês M e M");
            babymm.setDescricao("Roupas para bebês especial M&M azul marinho");
            babymm.setPreco(40.5f);
            babymm.setDesconto(6f);
            babymm.listaImg.add("https://ae01.alicdn.com/kf/HTB16cPTeiFTMKJjSZFAq6AkJpXaP/2019-New-fashion-baby-boys-girls-clothes-newborn-blue-and-red-Long-sleeve-Cartoon-printing-Jumpsuit.jpg");
            babymm.listaImg.add("https://cdn.shopify.com/s/files/1/2219/6671/products/product-image-298768507_480x480.jpg?v=1527383360");
            babymm.setQuantidade(457567);
            babymm.setKeyWords("m&m baby infantil");
            babymm.setCategoria("roupas");
            lista.add(babymm);

            Produto camifrancesa = new Produto();
            camifrancesa.setTitulo("Camisa Linha Francesa");
            camifrancesa.setDescricao("Camiseta Azul marinho linha francesa");
            camifrancesa.setPreco(84.5f);
            camifrancesa.setDesconto(0f);
            camifrancesa.listaImg.add("https://images-na.ssl-images-amazon.com/images/I/51D8vCzrE5L._UL1042_.jpg");
            camifrancesa.listaImg.add("https://images.footballfanatics.com/FFImage/thumb.aspx?i=/productimages/_3056000/altimages/ff_3056831alt3_full.jpg");
            camifrancesa.setQuantidade(3045564);
            camifrancesa.setKeyWords("camisa francesa importado");
            camifrancesa.setCategoria("roupas");
            lista.add(camifrancesa);

            Produto calpantalona = new Produto();
            calpantalona.setTitulo("Calça Pantalona");
            calpantalona.setDescricao("Calça pantalona tecido nobre acinturada azul");
            calpantalona.setPreco(86.5f);
            calpantalona.setDesconto(0f);
            calpantalona.listaImg.add("https://images.www.fendi.com/images/h45/h1a/8962340847646/FR6240A8D5F19EE_01_medium");
            calpantalona.listaImg.add("https://images-na.ssl-images-amazon.com/images/I/51qfS0VZDyL._UX466_.jpg");
            calpantalona.setQuantidade(255675);
            calpantalona.setKeyWords("calca pantalona acinturada");
            calpantalona.setCategoria("roupas");
            lista.add(calpantalona);

            Produto camimalha = new Produto();
            camimalha.setTitulo("Camiseta Malha Verão");
            camimalha.setDescricao("Camiseta malha leve e fresca para o verão azul claro");
            camimalha.setPreco(86.5f);
            camimalha.setDesconto(0f);
            camimalha.listaImg.add("https://cdn.shopify.com/s/files/1/2360/8057/products/C2251_3_compressed_800x.jpg?v=1572093179");
            camimalha.listaImg.add("https://s3-eu-west-1.amazonaws.com/htsi-ez-prod/ez/images/4/7/2/7/767274-1-eng-GB/main_dca1d0bf-57ea-47d7-9d8e-e7080f15c165.png");
            camimalha.setQuantidade(345642);
            camimalha.setKeyWords("camisa malha fresca verao");
            camimalha.setCategoria("roupas");
            lista.add(camimalha);

            Produto camiverao = new Produto();
            camiverao.setTitulo("Vestido Fresco para Verão");
            camiverao.setDescricao("Vestido midi veludo sem mangas azul escuro");
            camiverao.setPreco(34.5f);
            camiverao.setDesconto(0f);
            camiverao.listaImg.add("https://www.lindybop.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/h/cheronda-blue-velvet2412.jpg");
            camiverao.listaImg.add("https://www.lindybop.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/h/cheronda-blue-velvet2426.jpg");
            camiverao.setQuantidade(3455);
            camiverao.setKeyWords("camisa verao fresco veludo chique");
            camiverao.setCategoria("roupas");
            lista.add(camiverao);

            Produto casaco1 = new Produto();
            casaco1.setTitulo("Casaco para Frio Intenso");
            casaco1.setDescricao("Casaco para neve touca reforçada multi-bolsos azul escuro");
            casaco1.setPreco(55.5f);
            casaco1.setDesconto(0f);
            casaco1.listaImg.add("https://www.decathlon.co.uk/media/851/8510104/zoom_1692686.jpg");
            casaco1.listaImg.add("https://contents.mediadecathlon.com/p1702045/k$71907ecf6e84ec2c6f941bbdf88c4469/sq/Parka+chaude+imperm+able+de+randonn+e+neige+homme+SH500+ultra+warm+bleue.webp?f=1000x1000");
            casaco1.setQuantidade(4354456);
            casaco1.setKeyWords("casaco neve reforçado frio");
            casaco1.setCategoria("roupas");
            lista.add(casaco1);

            Produto iphonexr = new Produto();
            iphonexr.setTitulo("Iphone XR");
            iphonexr.setDescricao("Compre o iPhone XR em seis lindas cores, com Face ID avançado, chip A12 Bionic e tela Liquid Retina.");
            iphonexr.setPreco(4599.5f);
            iphonexr.setDesconto(0f);
            iphonexr.listaImg.add("https://media.4rgos.it/i/Argos/8672674_R_Z001A?w=750&h=440&qlt=70");
            iphonexr.listaImg.add("https://images-na.ssl-images-amazon.com/images/I/41B2oG0SZjL._SX679_.jpg");
            iphonexr.setQuantidade(80000);
            iphonexr.setKeyWords("iphonexr blue 64gb apple");
            iphonexr.setCategoria("celulares-computadores");
            lista.add(iphonexr);


            Produto samsungj8 = new Produto();
            samsungj8.setTitulo("Samsung Galaxy J8");
            samsungj8.setDescricao("Smartphone Samsung Galaxy J8 64GB Dual Chip Android 8.0 Tela 6 ´ Octa - Core 1.8.");
            samsungj8.setPreco(1799.5f);
            samsungj8.setDesconto(0f);
            samsungj8.listaImg.add("https://images-na.ssl-images-amazon.com/images/I/51zgxpcZTVL._SL1500_.jpg");
            samsungj8.listaImg.add("https://produtos.fotos-riachuelo.com.br/media/catalog/product/cache/3541e153ef6ead3044d72626c3847968/s/m/smartphone-samsung-galaxy-j8-android-8-0-tela-6-0-64gb-camera-16mp-4g-prateado-12583847_foto1_frontal.jpg");
            samsungj8.setQuantidade(469596);
            samsungj8.setKeyWords("samsung j8 64gb dual android");
            samsungj8.setCategoria("celulares-computadores");
            lista.add(samsungj8);

            Produto huawe3i = new Produto();
            huawe3i.setTitulo("Huawei 3i");
            huawe3i.setDescricao("O Huawei nova 3i é um smartphone Android de bom nível, ótimo para fotos, que pode satisfazer até o mais exigente dos usuários.");
            huawe3i.setPreco(1999.5f);
            huawe3i.setDesconto(30.5f);
            huawe3i.listaImg.add("https://consumer-img.huawei.com/content/dam/huawei-cbg-site/common/mkt/pdp/phones/nova-3i/img/huawei_nova3i_kv_back.jpg");
            huawe3i.listaImg.add("https://www.91-img.com/pictures/128491-v11-huawei-nova-3i-mobile-phone-large-1.jpg");
            huawe3i.setQuantidade(34667);
            huawe3i.setKeyWords("huawe3i android");
            huawe3i.setCategoria("celulares-computadores");
            lista.add(huawe3i);

            Produto samsunga9 = new Produto();
            samsunga9.setTitulo("Samsung A9");
            samsunga9.setDescricao("O Samsung Galaxy A9 é um smartphone Android avançado e abrangente em todos os pontos de vista com algumas características excelentes");
            samsunga9.setPreco(1633.5f);
            samsunga9.setDesconto(0f);
            samsunga9.listaImg.add("https://images.samsung.com/is/image/samsung/ph-galaxy-a9-a920-sm-a920fzbdxtc-backvitalityblue-123095331?$PD_GALLERY_L_JPG$");
            samsunga9.listaImg.add("https://img1.cgtrader.com/items/1834215/ca584c5885/samsung-galaxy-a9-2018-lemonade-blue-3d-model-max-obj-mtl-3ds-wrl-wrz.jpg");
            samsunga9.setQuantidade(999);
            samsunga9.setKeyWords("samsung android a9");
            samsunga9.setCategoria("celulares-computadores");
            lista.add(samsunga9);

            Produto realme2 = new Produto();
            realme2.setTitulo("Oppo Realme 2");
            realme2.setDescricao("O Oppo Realme 2 Pro é um smartphone Android avançado e abrangente em todos os pontos de vista com algumas características excelentes");
            realme2.setPreco(699.5f);
            realme2.setDesconto(0f);
            realme2.listaImg.add("https://images-na.ssl-images-amazon.com/images/I/41e2YrS2QbL._SX466_.jpg");
            realme2.listaImg.add("https://www.bareillykart.com/wp-content/uploads/2019/02/realme-2-rmx805-original-imaf9pg6zqdb9zac-1.jpeg");
            realme2.setQuantidade(345);
            realme2.setKeyWords("oppo realme2 android");
            realme2.setCategoria("celulares-computadores");
            lista.add(realme2);

            Produto vivoy91i = new Produto();
            vivoy91i.setTitulo("Vivo Y91i");
            vivoy91i.setDescricao("O vivo Y91i é um smartphone Android completo, que não tem muito a invejar aos mais avançados dispositivos.");
            vivoy91i.setPreco(1500.5f);
            vivoy91i.setDesconto(0f);
            vivoy91i.listaImg.add("https://n4.sdlcdn.com/imgs/i/e/p/large/Vivo-Ocean-Blue-Vivo-1820-SDL362390693-2-ff0de.jpeg");
            vivoy91i.listaImg.add("https://www.noypigeeks.com/wp-content/uploads/2018/12/Vivo-Y91i-758x426.jpg");
            vivoy91i.setQuantidade(346);
            vivoy91i.setKeyWords("vivo y91i android");
            vivoy91i.setCategoria("celulares-computadores");
            lista.add(vivoy91i);

            Produto redmiy3 = new Produto();
            redmiy3.setTitulo("Xiomi Redmi Y3");
            redmiy3.setDescricao("O Redmi Y3 é um smartphone Android de bom nível, ótimo para fotos, que pode satisfazer até o mais exigente dos usuários");
            redmiy3.setPreco(680.5f);
            redmiy3.setDesconto(0f);
            redmiy3.listaImg.add("https://i.gadgets360cdn.com/products/large/1556094303_635_xiaomi_redmi_y3.jpg");
            redmiy3.listaImg.add("https://www.bdstall.com/asset/product-image/giant_86761.jpg");
            redmiy3.setQuantidade(356);
            redmiy3.setKeyWords("xiomi redmiy3 android");
            redmiy3.setCategoria("celulares-computadores");
            lista.add(redmiy3);

            Produto samsungs4 = new Produto();
            samsungs4.setTitulo("Samsung Galaxy S4");
            samsungs4.setDescricao("É um produto com poucos concorrentes em termos de multimídia graças à câmera de 13 megapixels que permite ao Samsung Galaxy S4 I9505 tirar fotos fantásticas");
            samsungs4.setPreco(498.5f);
            samsungs4.setDesconto(0f);
            samsungs4.listaImg.add("https://www.cellularcountry.com/images/Samsung_Galaxy_S4_16GB_R970C_Android_4G_Navy_Blue_Phone_Cricket_CDMA_51264_01.jpg");
            samsungs4.listaImg.add("https://www.kickmobiles.com/images/thumbs/0000142_samsung-galaxy-s4-gt-i9505-16gb-arctic-blue.jpeg");
            samsungs4.setQuantidade(45);
            samsungs4.setKeyWords("samsung s4 android 16gb");
            samsungs4.setCategoria("celulares-computadores");
            lista.add(samsungs4);

            Produto mi9 = new Produto();
            mi9.setTitulo("Xiomi Mi 9");
            mi9.setDescricao("O Xiaomi MI 9 é um smartphone Android com características inovadoras que o tornam uma excelente opção para qualquer tipo de utilização");
            mi9.setPreco(2241.5f);
            mi9.setDesconto(100.5f);
            mi9.listaImg.add("https://gloimg.gbtcdn.com/soa/gb/pdm-product-pic/Other/2019/07/02/source-img/20190702200210_43294.jpg");
            mi9.listaImg.add("https://media.karousell.com/media/photos/products/2019/05/15/xiaomi_mi_9_ocean_blue_664gb_swap_1557895414_131ce186.jpg");
            mi9.setQuantidade(35678);
            mi9.setKeyWords("mi9 xiomi android");
            mi9.setCategoria("celulares-computadores");
            lista.add(mi9);

            Produto oppoa5 = new Produto();
            oppoa5.setTitulo("Oppo A5");
            oppoa5.setDescricao("O Oppo A5 pode ser considerado um modelo intermediário em praticamente qualquer quesito, exceto no chip, que o posicionaria no segmento de entrada");
            oppoa5.setPreco(583.5f);
            oppoa5.setDesconto(0f);
            oppoa5.listaImg.add("https://i.gadgets360cdn.com/products/large/1530947258_635_oppo_a5.jpg");
            oppoa5.listaImg.add("https://hytechmobiles.com/wp-content/uploads/2018/10/OPPO-A5-Diamond-Blue-min.jpg");
            oppoa5.setQuantidade(1188);
            oppoa5.setKeyWords("oppo a5 android");
            oppoa5.setCategoria("celulares-computadores");
            lista.add(oppoa5);
            
            Produto mesa = new Produto();
            mesa.setTitulo("Mesa de Trabalho");
            mesa.setDescricao("Sua criança precisa de um cantinho especial para poder ler, escrever, desenhar e estudar, onde ela possa desenvolver sua criatividade e otimizar seu aprendizado divertindo-se. Esta charmosíssima Mesa Country Infantil é uma ótima opção para criar um ambiente fértil para o desenvolvimento da criança. Seu design é absolutamente encantador, contribuindo para uma decoração diferenciada do cômodo.");
            mesa.setPreco(185.49f);
            mesa.setDesconto(0f);
            mesa.listaImg.add("https://staticmobly.akamaized.net/p/EcomC3B3veis-Mesa-Retangular-Country-Infantil-52x68-cm-Azul-4016-14549-1-zoom.jpg");
            mesa.listaImg.add("https://staticmobly.akamaized.net/p/EcomC3B3veis-Mesa-Retangular-Country-Infantil-52x68-cm-Azul-8175-14549-2-zoom.jpg");
            mesa.setQuantidade(312);
            mesa.setKeyWords("mesa azul movel trabalho");
            mesa.setCategoria("casa-mobilia");
            lista.add(mesa);
            
            Produto cadeira = new Produto();
            cadeira.setTitulo("Cadeira plus dark blue ");
            cadeira.setDescricao("Espaldar médio. Revestimento em tecido poliéster crepe. Encosto com regulagem de altura, regulagem de altura no braço, mecanismo de contato permanente com regulagem de inclinação somente do encosto, com regulagem de altura do assento com coluna a gás, base injetada (resina termoplástica) e rodízios com 50mm de diâmetro.");
            cadeira.setPreco(585.57f);
            cadeira.setDesconto(20f);
            cadeira.listaImg.add("https://assets.betalabs.net/production/flexform/item-images/c05a3d61d83d2a266d6ee9110a4a4a40.JPG");
            cadeira.listaImg.add("https://assets.betalabs.net/production/flexform/item-images/52ef522f0ec034fd3dbbb5be5b2e4ff7.jpg");
            cadeira.listaImg.add("https://assets.betalabs.net/production/flexform/item-images/de3d4d41323da68657b60e239b42db27.jpg");
            cadeira.listaImg.add("https://assets.betalabs.net/production/flexform/item-images/674084390904c85341bf5a66352abcb5.jpg");
            cadeira.listaImg.add("https://assets.betalabs.net/production/flexform/item-images/42ea25e54c21ae4cace288ac8f4fa230.png");
            cadeira.setQuantidade(25);
            cadeira.setKeyWords("cadeira azul movel rodas");
            cadeira.setCategoria("casa-mobilia");
            lista.add(cadeira);
            
            Produto berco = new Produto();
            berco.setTitulo("Kit Berço Trança Nuvem de Amor Azul");
            berco.setDescricao("O Kit Berço Menino Trança Nuvem de Amor Azul é um produto exclusivo da Grão de Gente, maior marca da América Latina em enxoval e decoração para quarto de bebê. Um conjunto completo com tudo o que você precisa para aconchegar e proteger seu menino. O protetor lateral e a cabeceira vêm com zíper, para facilitar a lavagem, e amarril, para fixação no berço. ");
            berco.setPreco(169.50f);
            berco.setDesconto(0f);
            berco.listaImg.add("https://dmhxz00kguanp.cloudfront.net/fotos/135248/kit-berco-tranca-nuvem-de-amor-azul-291226.jpg");
            berco.listaImg.add("https://dmhxz00kguanp.cloudfront.net/fotos/135248/kit-berco-tranca-nuvem-de-amor-azul-291224.jpg");
            berco.setQuantidade(34);
            berco.setKeyWords("berço azul movel dormir cama");
            berco.setCategoria("casa-mobilia");
            lista.add(berco);

            Produto mala = new Produto();
            mala.setTitulo("Conjunto de Malas 3 Peças Yins com Giro 360º - YS21055AM Azul Marinho");
            mala.setDescricao("Na hora de armazenar os objetos e roupas para viagem, sem dúvida, pensamos em espaço, segurança e qualidade das bagagens. Então, conheça o conjunto de malas Yins YS21055AM. Ele ideal tanto para viagens curtas quanto longas, pois nele contemplam 03 peças. Todas as malas são fabricadas em ABS, tem um amplo compartimento, design moderno com abertura em zíper, rodinhas que giram em 360o para facilitar no manuseio e o cadeado é integrado para melhor proteção. Sem falar da cor azul marinho que resulta num acabamento elegante e charmoso. ");
            mala.setPreco(499.99f);
            mala.setDesconto(0f);
            mala.listaImg.add("https://a-static.mlcdn.com.br/618x463/conjunto-de-malas-3-pecas-yins-com-giro-360o-ys21055am-azul-marinho/magazineluiza/223889600/11c0bb1c1e0dc76b5a092f0be872ba12.jpg");
            mala.listaImg.add("https://a-static.mlcdn.com.br/618x463/conjunto-de-malas-3-pecas-yins-com-giro-360o-ys21055am-azul-marinho/magazineluiza/223889600/d04e5ae47f898a8341b060e980ba4703.jpg");
            mala.setQuantidade(323);
            mala.setKeyWords("mala azul movel viajar guardar roupa");
            mala.setCategoria("casa-mobilia");
            lista.add(mala);

            Produto sofa = new Produto();
            sofa.setTitulo("Sofá 3 Lugares Genova Retrátil e Reclinável Abitare 658");
            sofa.setDescricao("Sofá 3 Lugares Genova Retrátil e Reclinável Abitare 658. O estofado Genova oferece conforto e um visual moderno. Com seu assento retrátil e seu encosto reclinável proporciona ainda mais conforto atendendo a todas os desejos de seus compradores.");
            sofa.setPreco(799.99f);
            sofa.setDesconto(0f);
            sofa.listaImg.add("https://a-static.mlcdn.com.br/618x463/sofa-3-lugares-genova-retratil-e-reclinavel-abitare-658/lojasmm/7175/b232a2c9f0bbac71d67d1ec54887f01a.jpg");
            sofa.setQuantidade(12);
            sofa.setKeyWords("sofa azul movel dormir sala");
            sofa.setCategoria("casa-mobilia");
            lista.add(sofa);

            Produto puff = new Produto();
            puff.setTitulo("Puff Multiuso 3 em 1 Casal Azul Tecido Corvin com Travesseiro Bf Colchões");
            puff.setDescricao("Puff estilo clássico; Muito confortavel; Prático; Fácil de Limpar");
            puff.setPreco(269.99f);
            puff.setDesconto(0f);
            puff.listaImg.add("https://images-shoptime.b2w.io/produtos/01/00/img/13696/5/13696535_1GG.jpg");
            puff.listaImg.add("https://images-shoptime.b2w.io/produtos/01/00/img/13696/5/13696535_2GG.jpg");
            puff.listaImg.add("https://images-shoptime.b2w.io/produtos/01/00/img/13696/5/13696535_3GG.jpg");
            puff.listaImg.add("https://images-shoptime.b2w.io/produtos/01/00/img/13696/5/13696535_4GG.jpg");
            puff.setQuantidade(812);
            puff.setKeyWords("sofa cama puff azul movel dormir sala quarto");
            puff.setCategoria("casa-mobilia");
            lista.add(puff);

            Produto gr = new Produto();
            gr.setTitulo("ROUPEIRO CASAL GUARDA-ROUPA MDF 3 PORTAS");
            gr.setDescricao("O Guarda-Roupa 3 portas Moore vai ficar lindo em seu quarto ou no quarto de seus filhos, afinal ele possui design leve, livre de excessos e combina o mdf com detalhes de muito bom gosto em madeira maciça.");
            gr.setPreco(1502.33f);
            gr.setDesconto(0f);
            gr.listaImg.add("https://www.ideastore.com.br/thumbs/produtos/52morp3pbrag-1-roupeiro-casal-guarda-roupas-mdf-3-portas-branco-azul-madeira-design-moderno-para-quarto-de-menino-woodinn-ideastore-tokstok-oppa-panteon-lthumb_w800.jpg?0.1.i");
            gr.listaImg.add("https://www.ideastore.com.br/thumbs/produtos/694morp3pbrag-2-roupeiro-casal-guarda-roupas-mdf-3-portas-branco-azul-madeira-design-moderno-para-quarto-de-menino-woodinn-ideastore-muma-mobly-armario-bonthumb_w800.jpg?0.1.i");
            gr.listaImg.add("https://www.ideastore.com.br/thumbs/produtos/530morp3pbrag-4-roupeiro-casal-guarda-roupas-mdf-3-portas-branco-azul-madeira-design-moderno-para-quarto-de-menino-woodinn-ideastorethumb_w800.jpg?0.1.i");
            gr.listaImg.add("https://www.ideastore.com.br/thumbs/produtos/116@morp3pbrag-3-roupeiro-casal-guarda-roupas-mdf-3-portas-branco-azul-madeira-design-moderno-para-quarto-de-menino-woodinn-ideastore-meumoveldemdeira-soho-thumb_w800.jpg?0.1.i");
            gr.setQuantidade(120);
            gr.setKeyWords("azul movel dormir guarda roupa moderno quarto");
            gr.setCategoria("casa-mobilia");
            lista.add(gr);

            Produto gaveteiro = new Produto();
            gaveteiro.setTitulo("Gaveteiro com 4 Gavetas Lucy");
            gaveteiro.setDescricao("Gaveteiros são itens indispensáveis para organizar papéis e outros objetos que você queira ter fácil acesso. O gaveteiro Lucy possui cores vivas que quebram a monotonia de qualquer ambiente sem tirar a sobriedade. São 4 gavetas, sendo uma com sistema de fechamento à chave. A estrutura do gaveteiro é de chapa de aço com pintura epóxi, conferindo resistência e qualidade. Muito versátil, pode ser usado como um organizador em escritórios ou como criado-mudo. ");
            gaveteiro.setPreco(479.99f);
            gaveteiro.setDesconto(0f);
            gaveteiro.listaImg.add("https://www.etna.com.br/medias/sys_master/images/images/hd7/h28/9497512738846/0390534-01.jpg");
            gaveteiro.listaImg.add("https://www.etna.com.br/medias/sys_master/images/images/h60/hf4/9497512312862/0390534-02.jpg");
            gaveteiro.listaImg.add("https://www.etna.com.br/medias/sys_master/images/images/h2a/ha8/9497512476702/0390534-03.jpg");            
            gaveteiro.setQuantidade(80);
            gaveteiro.setKeyWords("azul movel rodinha guarda roupa moderno quarto");
            gaveteiro.setCategoria("casa-mobilia");
            lista.add(gaveteiro);

              
        }
    }

}
