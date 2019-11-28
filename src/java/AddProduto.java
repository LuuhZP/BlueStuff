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
        
        String titulo = request.getParameter("titulo");
        
        String categoria = request.getParameter("categoria");
        
        float preco = Float.parseFloat(
                request.getParameter("preco")
        );
        
        float desconto = Float.parseFloat(
                request.getParameter("desconto")
        );
        
        int quantidade = Integer.parseInt(
                request.getParameter("quantidade")
        );
        
        String descricao = request.getParameter("descricao");
        
        String keywords = request.getParameter("keywords");
        
        String imagem = request.getParameter("imagens");
        
        Produto p = new Produto();
        p.setTitulo(titulo);
        p.setCategoria(categoria);
        p.setPreco(preco);
        p.setDesconto(desconto);
        p.setQuantidade(quantidade);
        p.setDescricao(descricao);
        p.setKeyWords(keywords);
        p.listaImg.add(imagem);
        
        Produto.lista.add(p);   
        
        response.sendRedirect("index.jsp");
        
    }
    
    
}
