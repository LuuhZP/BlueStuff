<%--
    Document   : menu
    Created on : 18/09/2019, 16:14:22
    Author     : Desenvolvimento
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="db.Mock"%>
<%
   Mock.makeMock();

   boolean navInferior = request.getParameter("navInferior").equals("1") ? true : false;

%>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<nav class="navbar navbar-expand-lg navbar-dark" style=" background-color: #1b4965">

    <a class="navbar-brand" href="index.jsp">
       <img src="images/logo_transparent (5).png" alt="" width="150px" style="display: block; margin-top: -80px; "/>
    </a>
    
    <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="O que você proucura?" aria-label="Search" >
        <span class="border border-warning rounded-pill"><button class="btn btn-outline-warning rounded-pill" type="submit">Buscar</button></span>
    </form>
       
    <span class="navbar-text d-flex flex-row bd-highlight mx-auto" style=" display: block; width: 150px;">
      <p class="text-left">FAÇA O <a href="login.jsp" class="btn-outline-success rounded alert-link text-decoration-none" >LOGIN</a> OU <a href="#"class="btn-outline-danger rounded alert-link text-decoration-none" >CADASTRE-SE</a></p>
    </span>

    <div class="d-flex flex-row-reverse ">
        <ul class="list-unstyled">
            <li><img src="images/icones/icons8-usuário-masculino-64.png" alt="" width="30px"/><a href="#" class="btn-outline-warning rounded text-decoration-none text-white" >  MEU CADASTRO</a></li>
            <li><img src="images/icones/icons8-carrinho-de-compras-64.png" alt="" width="30px"/><a href="#" class="btn-outline-warning rounded text-decoration-none text-white" >  MEU CARRINHO</a></li>
            <li><img src="images/icones/icons8-produto-64.png" alt="" width="30px"/><a href="#" class="btn-outline-warning rounded text-decoration-none text-white" >  MEUS PEDIDOS</a></li>

        </ul>
    </div>
  
     
      <%
            boolean logado = false;
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean) session.getAttribute("logado");
            }

            if(logado){
        %>
         <li class="nav-item dropdown addActive">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             Cadastrar
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
             <a class="dropdown-item" href="addProduto.jsp">Produtos</a>
             <a class="dropdown-item" href="#">Funcionarios</a>
           </div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             Gerenciar
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
             <a class="dropdown-item" href="#">Produtos</a>
             <a class="dropdown-item" href="#">Clientes</a>
           </div>
         </li>
         
      <%
            }
        %>
    </ul>
  </div>
</nav>
<% if(navInferior){ %>
<nav class="navbar navbar-expand-lg navbar-light" style=" margin-top: -20px; background-color: #5fa8d3">

    <a class="navbar-brand" href="index.jsp">
       <img src="image/logo.png" alt="" width="100px" style="display: block; margin-top: -10px; "/>
    </a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Ofertas <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="produtos.jsp">Produtos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="sobre.jsp">Sobre</a>
      </li>
      <li class="nav-item dropdown addActive">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             Cadastrar
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
             <a class="dropdown-item" href="addProduto.jsp">Produtos</a>
             <a class="dropdown-item" href="#">Funcionarios</a>
           </div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             Gerenciar
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
             <a class="dropdown-item" href="#">Produtos</a>
             <a class="dropdown-item" href="#">Clientes</a>
           </div>
         </li>
      <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </ul>
  </div>
</nav>
<% } %>