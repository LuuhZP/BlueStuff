<%--
    Document   : login
    Created on : 04/09/2019, 17:26:29
    Author     : gutol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Minha Loja</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <link href="login.css" rel="stylesheet" type="text/css"/>
   </head>
   <body class="text-center">

     <div class="container" style="margin-top: 10%">

         <form class="form-signin"  >
            <img class="mb-4" src="images/facebook_profile_image - Copia.png" alt="" width="100" height="100">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

            <label for="inputEmail" class="sr-only">Email address</label>
            <input name="login" id="inputEmail" class="form-control" placeholder="Login ou Email" required="" autofocus="">

            <label for="inputPassword" class="sr-only">Password</label>
            <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Senha" required="">
            <div class="checkbox mb-3">
               <label>
                  <input type="checkbox" value="remember-me"> Remember me
               </label>
            </div>
            <button class="submit" class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
         <p class="mt-5 mb-3 text-muted">© 2017-2019</p>
         </form>
      </div>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   </body>
</html>
