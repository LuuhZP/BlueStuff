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
import modelos.Produto;

/**
 *
 * @author cfeva
 */
public class Busca extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String palavra = request.getParameter("palavra");
        
        for(Produto p : Produto.lista){
            if(p.getTitulo().indexOf(palavra) != -1){
                out.println("<li>"+ p.getTitulo()+"</li>");
            }
        }

    }


}
