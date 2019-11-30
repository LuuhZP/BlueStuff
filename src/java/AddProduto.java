/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Produto;

/**
 *
 * @author gutol
 */
public class AddProduto extends HttpServlet {

    @Override
    public void doPost( HttpServletRequest request,
                        HttpServletResponse response
            )throws ServletException, IOException{
        Produto p = new Produto();
        
        String titulo = request.getParameter("titulo");        
        String categoria = request.getParameter("categoria");        
        float preco = Float.parseFloat(
                request.getParameter("preco")
        );        
        if(request.getParameter("desconto") != null){
            float desconto = Float.parseFloat(
                    request.getParameter("desconto")
            );
            p.setDesconto(desconto);
        }        
        if(request.getParameter("quantidade") != null){
            int quantidade = Integer.parseInt(
                    request.getParameter("quantidade")
            );
            p.setQuantidade(quantidade);
        }        
        String descricao = request.getParameter("descricao");        
        String keywords = request.getParameter("keywords");        
        String imagem = request.getParameter("imagens");
        
        p.setTitulo(titulo);
        p.setCategoria(categoria);
        p.setPreco(preco);
        p.setDescricao(descricao);
        p.setKeyWords(keywords);
        p.listaImg.add(imagem);
        
        if(request.getParameter("antigo") == null){
            Produto antigo = Produto.getProduto(request.getParameter("antigo"));
            Produto.lista.remove(antigo);
        }
        Produto.lista.add(p);
        
        response.sendRedirect("index.jsp");
        
    }
    
    
}
