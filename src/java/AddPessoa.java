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
import modelos.Pessoa;

/**
 *
 * @author camara
 */
public class AddPessoa extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nome = request.getParameter("nome");
        String rg = request.getParameter("RG");
        String cpf = request.getParameter("CPF");
        char sexo = request.getParameter("sexo").charAt(0);
        String telefone = request.getParameter("telefone");
        String rua = request.getParameter("rua");
        String num = request.getParameter("num");
        String complemento = request.getParameter("complemento");
        String bairro = request.getParameter("bairro");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("UF");
              
        //Precisa implementar dataNas
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String admin = request.getParameter("admin");
        
        Pessoa p = new Pessoa();
        p.setNome(nome);
        p.setRg(rg);
        p.setCpf(cpf);
        p.setSexo(sexo);
        p.setTelefone(telefone);
        p.setEmail(email);
        p.setSenha(senha);
        
        if(admin.equals("Sim"))
            p.setAdmin(true);
        else
            p.setAdmin(false);
        
        response.sendRedirect("index.jsp");
    }

}
