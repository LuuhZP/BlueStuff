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
import modelos.Pessoa;
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
        
    }
        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String function = request.getParameter("function");
        String type = request.getParameter("type");
        String object = request.getParameter("obj");
        
        if(type.equals("Produtos")){
            if(function.equals("del"))
                Produto.deletar(object);
            else if (function.equals("desconto")){
                float desconto = Float.parseFloat(request.getParameter("desconto"));
                Produto.setDesconto(object, desconto);
            }
        }
        else if(type.equals("Pessoas")){
            if(function.equals("del"))
                Pessoa.deletar(object);
            else if (function.equals("desconto")){
                float desconto = Float.parseFloat(request.getParameter("desconto"));
                //Pessoa.setDesconto(object, desconto);
            }
        }
        
            response.sendRedirect("busca.jsp?type="+type);
        /*
        else{
        
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
        }*/
    }

}
