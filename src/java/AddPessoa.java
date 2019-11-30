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
        
        Pessoa p = new Pessoa();
        
        if(request.getParameter("dataNas") != null){
            String dataNas = request.getParameter("dataNas");
            p.setDataNas(dataNas);
        }
        if(request.getParameter("RG") != null){
            String rg = request.getParameter("RG");
            p.setRg(rg);
        }
        if(request.getParameter("sexo") != null){
            char sexo = request.getParameter("sexo").charAt(0);
            p.setSexo(sexo);
        }
        if(request.getParameter("complemento") != null){
            String complemento = request.getParameter("complemento");
            p.setComplemento(complemento);
        }
        if(request.getParameter("complemento") != null){
            String bairro = request.getParameter("bairro");
            p.setBairro(bairro);
        }
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("CPF");
        String telefone = request.getParameter("telefone");
        String rua = request.getParameter("rua");
        String num = request.getParameter("num");
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("UF");
              
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        if(request.getParameter("admin") != null){
            String admin = request.getParameter("admin");
            if(admin.equals("Sim"))
                p.setAdmin(true);
            else
                p.setAdmin(false);
        }
        
        p.setNome(nome);
        p.setCpf(cpf);
        p.setTelefone(telefone);
        p.setRua(rua);
        p.setNumero(num);
        p.setCidade(cidade);
        p.setEstado(estado);
        p.setEmail(email);
        p.setSenha(senha);
        
        
        if(request.getParameter("antigo") == null){
            Pessoa antigo = Pessoa.getPessoa(request.getParameter("antigo"));
            Pessoa.lista.remove(antigo);
        }
        Pessoa.lista.add(p);

        response.sendRedirect("index.jsp");
    }

}
