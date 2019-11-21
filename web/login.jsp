<%--
    Document   : login.jsp
    Created on : 04/09/2019, 17:26:29
    Author     : Caio - Evangelista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body style=" background-color: #cae9ff">
        
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="0" />
        </jsp:include>
    <%
        boolean logado = false;

        if(session != null && 
                session.getAttribute("logado") != null){
            logado = (boolean)session.getAttribute("logado");
        }

        if(logado){
            session.setAttribute("logado", false);
        }
    %>
       
     <div class="container" style="width: 33%; display: block; margin-left: 33%">
         
         <form class="form-signin" action="Login" method="post" >
             <img class="mb-4" src="images/logo_transparent.png" alt="" style="width: 33%; margin-left: 33%;">
             <label for="inputEmail" class="sr-only">Login ou Email </label>
            <input name="login" id="inputEmail" class="form-control" placeholder="Login ou Email">

            <label for="inputPassword" class="sr-only">Senha</label>
            <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Senha">
            <button class="btn btn-success btn-lg btn-block" type="submit" style="margin-top: 10%">Entrar</button>
         </form>
      </div>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   </body>
</html>
