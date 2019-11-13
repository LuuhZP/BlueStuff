
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Pessoa;

public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //obtendo os parâmetros da requisição
        String email = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        
            request.getSession().setAttribute("logado", false);
        
        //comparar com os dado de login default
        Pessoa p = Pessoa.login(email,senha);
        if(p != null){
            request.getSession().setAttribute("logado", true);
            request.getSession().setAttribute("pessoa", p);
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("login.jsp");
        }
        
    }
}
