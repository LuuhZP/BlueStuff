
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


        }
    }

}
