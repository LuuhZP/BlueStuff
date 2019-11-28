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
import modelos.Carrinho;
import modelos.ItemCarrinho;
import modelos.Produto;

/**
 *
 * @author camara
 */
public class AddCarrinho extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
        Produto p = Produto.getProduto(request.getParameter("prod"));
        
        ItemCarrinho item = new ItemCarrinho();
        item.setProduto(p);
        item.setQuantidade(1);
        item.setPreco(p.getPreco()-p.getDesconto());
        
        Carrinho.itens.add(item);
        
        response.sendRedirect("carrinho.jsp");
    }

}
