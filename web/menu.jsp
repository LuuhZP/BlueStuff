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

<script>$('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget); // Button that triggered the modal
  var recipient = button.data('whatever'); // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this);
  modal.find('.modal-title').text('New message to ' + recipient);
  modal.find('.modal-body input').val(recipient);
}); </script>

<nav class="navbar navbar-expand-lg navbar-dark" style=" background-color: #1b4965">

    <a class="navbar-brand" href="index.jsp">
       <img src="images/logo_transparent (5).png" alt="" width="150px" style="display: block; margin-top: -80px; "/>
    </a>
    
    <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="O que você proucura?" aria-label="Search" >
        <span class="border border-warning rounded-pill"><button class="btn btn-outline-warning rounded-pill" type="submit">Buscar</button></span>
    </form>
    
    <%
            boolean logado = false;
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean) session.getAttribute("logado");
            }

            if(!logado){
        %>
       
    <span class="navbar-text d-flex flex-row bd-highlight mx-auto" style=" display: block; width: 150px;">
      <p class="text-left">FAÇA O <a href="login.jsp" class="btn-outline-success rounded alert-link text-decoration-none" >LOGIN</a> OU <a href="addPessoa.jsp"class="btn-outline-danger rounded alert-link text-decoration-none" >CADASTRE-SE</a></p>
    </span>

    <div class="d-flex flex-row-reverse ">
        <ul class="list-unstyled">
            <li><img src="images/icones/icons8-usuário-masculino-64.png" width="30px"/><a href="#" class="btn-outline-warning rounded text-decoration-none text-white" >  MEU CADASTRO</a></li>
            <li><img src="images/icones/icons8-carrinho-de-compras-64.png" width="30px"/><a href="carrinho.jsp" class="btn-outline-warning rounded text-decoration-none text-white" >  MEU CARRINHO</a></li>
            <li><img src="images/icones/icons8-produto-64.png" width="30px"/><a href="#" class="btn-outline-warning rounded text-decoration-none text-white" >  MEUS PEDIDOS</a></li>

        </ul>
    </div>
    <% } else{ %>
    
    <span class="navbar-text d-flex flex-row bd-highlight mx-auto" style=" display: block; width: 150px;">
        <a href="login.jsp" class="btn btn-success rounded alert-link text-decoration-none" >ESTOQUE</a>
    </span>
    
    <span class="navbar-text d-flex flex-row bd-highlight mx-auto" style=" display: block; width: 150px;">
        <a href="login.jsp" class="btn btn-danger rounded alert-link text-decoration-none" >SAIR</a>
    </span>
    
    <div class="d-flex flex-row-reverse ">
        <ul class="list-unstyled">
            <li class="nav-item dropdown addActive">
                <img src="images/icones/icons8-usuário-masculino-64.png" width="30px"/>
                <a class=" dropdown-toggle btn-outline-warning rounded text-decoration-none text-white" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">PESSOAS</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="addPessoa.jsp">Cadastrar</a>
                    <a class="dropdown-item" href="#">Modificar</a>
                    <a class="dropdown-item" href="#">Excluir</a>
                </div>
            </li>
            <li class="nav-item dropdown addActive">
                <img src="images/icones/icons8-editar-64.png" width="30px"/>
                <a class="dropdown-toggle btn-outline-warning rounded text-decoration-none text-white" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">PRODUTOS</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="addPessoa.jsp">Cadastrar</a>
                    <a class="dropdown-item" href="busca.jsp?type=Produtos&funcion=Modificar">Modificar</a>
                    <a class="dropdown-item" href="busca.jsp?type=Produtos&funcion=Excluir">Excluir</a>
                    <a class="dropdown-item" type="submit" href="busca.jsp?type=Produtos&funcion=Desconto">Desconto</a>           
                    </form>
                </div>
            </li>
            <li class="nav-item dropdown addActive">
                <img src="images/icones/icons8-excluir-64.png" width="30px" />
                <a class="dropdown-toggle btn-outline-warning rounded text-decoration-none text-white" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">CUPONS</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="addProduto.jsp">Adicionar</a>
                    <a class="dropdown-item" href="#">Remover</a>
                </div>
            </li>
        </ul>
    </div>
    <% } %>
        
           
      
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

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Buscar</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>