/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Carrinho;
import modelos.ItemCarrinho;

/**
 *
 * @author camara
 */
public class EditCarrinho extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ItemCarrinho item = Carrinho.getItem(request.getParameter("item"));
        String funcao = request.getParameter("funcao");
        
        if(funcao.equals("del")){
            Carrinho.itens.remove(item);
        }
        else if(funcao.equals("add")){
            item.setQuantidade(item.getQuantidade() + 1);
            item.setPreco(item.getProduto().getPreco() * item.getQuantidade());
        }
        else if(funcao.equals("rem")){
            item.setQuantidade(item.getQuantidade() - 1);
            item.setPreco(item.getProduto().getPreco() * item.getQuantidade());            
        }
        
        
        response.sendRedirect("carrinho.jsp");
    }

}
