/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Produto;

/**
 *
 * @author camara
 */
@WebServlet(urlPatterns = {"/EditProduct"})
public class EditProduct extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Produto l = Produto.lista.remove(Integer.parseInt(request.getParameter("buttondel")));
        
        response.sendRedirect("editProduto.jsp");
        
    }
        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        PrintWriter out = response.getWriter();

        Produto p = Produto.getLista().get(Integer.parseInt(request.getParameter("button")));
        
        String titulo; 
        
        if("0".equals(request.getParameter("nome")))
            titulo = p.getTitulo();
        else
            titulo = request.getParameter("nome");
        
        float preco;
        
        if("0".equals(request.getParameter("preco")))
            preco = p.getPreco();
        else
            preco = Float.parseFloat(request.getParameter("preco"));
        
        String imagem; 
        
        if("0".equals(request.getParameter("imagem")))
            imagem = p.listaImg.get(0);
        else
            imagem = request.getParameter("imagem");
        
        p.setTitulo(titulo);
        
        p.setPreco(preco);
            
        p.listaImg.add(imagem);
                
        response.sendRedirect("editProduto.jsp");
    }

}
