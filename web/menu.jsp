<%--
    Document   : menu
    Created on : 18/09/2019, 16:14:22
    Author     : Desenvolvimento
--%>
<%@page import="modelos.Pessoa"%>
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
    
    <form class="form-inline" action="BuscaProd" method="post">
        <div class="form-group mx-sm-3 mb-2">
            <input type="text" class="form-control" name="busca" placeholder="Produto">
        </div>
        <button type="submit" class="btn btn-primary mb-2">Buscar</button>
    </form>
    
    <%
            boolean logado = false;
            
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean)session.getAttribute("logado");
            }
            
            Pessoa pessoa = new Pessoa();
            
            if(session != null && session.getAttribute("pessoa") != null){
                pessoa = (Pessoa)session.getAttribute("pessoa");
            }

            if(!logado || !pessoa.isAdmin()){
                if(!logado){
                
        %>
       
    <span class="navbar-text d-flex flex-row bd-highlight mx-auto" style=" display: block; width: 150px;">
      <p class="text-left">FAÇA O <a href="login.jsp" class="btn-outline-success rounded alert-link text-decoration-none" >LOGIN</a> OU <a href="addPessoa.jsp"class="btn-outline-danger rounded alert-link text-decoration-none" >CADASTRE-SE</a></p>
    </span>
        <% } else{ %>
            <span class="navbar-text d-flex flex-row bd-highlight mx-auto" style=" display: block; width: 150px;">
      <p class="text-left">SEJA BEM VINDO <%= pessoa.getNome().toUpperCase() %></p>
    </span>
        
            <span class="navbar-text d-flex flex-row bd-highlight mx-auto" style=" display: block; width: 150px;">
        <a href="login.jsp" class="btn btn-danger rounded alert-link text-decoration-none" >SAIR</a>
    </span>        
        
        <% }%>

    <div class="d-flex flex-row-reverse ">
        <ul class="list-unstyled">
            <li><img src="images/icones/icons8-usuário-masculino-64.png" width="30px"/><a href="<% if(logado){%>addPessoa.jsp?pes=<%= pessoa%><% }else{ %>login.jsp <% }%>" class="btn-outline-warning rounded text-decoration-none text-white" >  MEU CADASTRO</a></li>
            <li><img src="images/icones/icons8-carrinho-de-compras-64.png" width="30px"/><a href="<% if(logado){%>carrinho.jsp<% }else{ %>login.jsp <% }%>" class="btn-outline-warning rounded text-decoration-none text-white" >  MEU CARRINHO</a></li>
            <li><img src="images/icones/icons8-produto-64.png" width="30px"/><a href="<% if(logado){%>carrinho.jsp<% }else{ %>login.jsp <% }%>" class="btn-outline-warning rounded text-decoration-none text-white" >  MEUS PEDIDOS</a></li>

        </ul>
    </div>
    <% } else{ %>
    
    <span class="navbar-text d-flex flex-row bd-highlight mx-auto" style=" display: block; width: 150px;">
        <a href="comprar.jsp" class="btn btn-success rounded alert-link text-decoration-none" >Comprar</a>
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
                    <a class="dropdown-item" href="busca.jsp?type=Pessoas">Modificar</a>
                </div>
            </li>
            <li class="nav-item dropdown addActive">
                <img src="images/icones/icons8-editar-64.png" width="30px"/>
                <a class="dropdown-toggle btn-outline-warning rounded text-decoration-none text-white" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">PRODUTOS</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="addProduto.jsp">Cadastrar</a>
                    <a class="dropdown-item" href="busca.jsp?type=Produtos">Modificar</a>           
                    </form>
                </div>
            </li>
            <li class="nav-item dropdown addActive">
                <img src="images/icones/icons8-excluir-64.png" width="30px" />
                <a class="dropdown-toggle btn-outline-warning rounded text-decoration-none text-white" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">CUPONS</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#">Adicionar</a>
                    <a class="dropdown-item" href="#">Remover</a>
                </div>
            </li>
        </ul>
    </div>
    <% } %>        
</nav>
    
<% if(navInferior){ %>
<nav class="navbar navbar-expand-lg navbar-dark" style=" margin-top: -20px; background-color: #5fa8d3">
    
    <div class="collapse navbar-collapse">
        <div class="row">
            <div class="col" style="text-align: center;"><a class="text-decoration-none text-white" href="index.jsp?busca=eletronico">Eletronicos</a></div>
            <div class="col" style="text-align: center;"><a class="text-decoration-none text-white" href="index.jsp?busca=celulares-computadores">Celulares & Computadores</a></div>
            <div class="col" style="text-align: center;"><a class="text-decoration-none text-white" href="index.jsp?busca=roupas">Roupas</a></div>
            <div class="col" style="text-align: center;"><a class="text-decoration-none text-white" href="index.jsp?busca=casa-mobilha">Casa & Mobilha</a></div>
            <div class="col" style="text-align: center;"><a class="text-decoration-none text-white" href="index.jsp?busca=outros">Outros</a></div>
        </div>
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