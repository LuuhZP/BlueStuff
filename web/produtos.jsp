<%-- 
    Document   : produtos
    Created on : 21/08/2019, 17:26:44
    Author     : gutol
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>     
        
        <%
            Produto produto = Produto.getProduto(request.getParameter("prod"));
            if(produto == null)
              response.sendRedirect("index.jsp");
            else{
            %>
        
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include>
        
        <div class="container-fluid">
            <div class="row">
                <!-- Shopping cart table -->
                <div class="col-lg-5" style="height: 380px; background-color: #1b4965">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="height: 350px; margin-top: 5%">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" >
                            <div class="carousel-item active">
                                <img src="https://cdn.awsli.com.br/600x450/268/268329/produto/19914289/bcb456e23e.jpg" class="d-block w-100" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto">
                            </div>
                            <div class="carousel-item" style="">
                                <img src="https://images.tcdn.com.br/img/img_prod/698958/borracha_faber_castell_tons_pastel_fc_max_191_1_20190625134314.jpg" class="d-block w-100" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto;">
                            </div>
                            <div class="carousel-item">
                                <img src="..." class="d-block w-100" alt="...">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev" style="margin-left: -6%">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" style="margin-right: -6%">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>    
                </div>
                                        
<%--       COLUNA LATERAL      --%>
                <div class="col-md">
                    <div class="text-light text-center px-4 py-4 text-uppercase font-weight-bold" style="height: 45px;  margin: auto; background-color: #1b4965; font-size: 120%"><%= produto.getTitulo() %></div>
                    <div class="p-3">
                        <p class="font-italic mb-4"><%= produto.getDescricao() %></p>
                        <ul class="list-unstyled mb-4">
                            <% if(produto.getDesconto() != 0){ %>
                            <li class="d-flex justify-content-between py-3 border-top "><strong class="text-muted">Preço</strong><strong>R$<%= produto.getPreco() %></strong></li>
                            <li class="d-flex justify-content-between py-3 border-top"><strong class="text-muted">Desconto</strong><strong>R$<%= produto.getDesconto() %></strong></li>
                            <% }%>
                            <li class="border-top"><strong class="text-muted">Total:</strong>
                                <h2 class="font-weight text-center" style="font-size: 65px">R$<%= (produto.getPreco() - produto.getDesconto()) %></h2>
                            </li>
                        </ul>
                        <a href="pagamento.jsp" class="btn btn-lg btn-block" style="background-color: #1b4965; color: white">Adicionar ao Carrinho</a>
                    </div>
                </div>
            </div>
            <%-- Sujestoes --%>
            <div>
                <div style="height: 250px; background-color: #5fa8d3">
                    <div id="carousel2" class="carousel slide" data-ride="carousel" style="height: 230px; margin-top: 10px">
                        <div class="carousel-inner" >                            
                            <div class="carousel-item active">
                                <div class="card-deck" style="max-width:90%; max-height:230px; width: auto; height: auto; margin: auto; margin-top: 10px;">
                                    <a href="produtos.jsp?prod=caneta-bic-azul" class="card" style="max-width:90%; max-height:230px; width: auto; height: auto;">
                                        <img src="https://cdn.awsli.com.br/600x450/268/268329/produto/19914289/bcb456e23e.jpg" class="card-img-top" alt="..." style="max-width:90%; max-height:150px; width: auto; height: auto;">
                                        <div class="card-body">
                                            <h5 class="card-title font-weight" style="font-size: 15px">Caneta Bic Azul</h5>
                                            <p class="font-weight-bold text-center" style="font-size: 20px">R$ 5,00</p>
                                        </div>
                                    </a>
                                    <div class="card" style="max-width:90%; max-height:230px; width: auto; height: auto;">
                                        <img src="https://cdn.awsli.com.br/600x450/268/268329/produto/19914289/bcb456e23e.jpg" class="card-img-top" alt="..." style="max-width:90%; max-height:150px; width: auto; height: auto;">
                                        <div class="card-body">
                                            <h5 class="card-title font-weight" style="font-size: 15px">Caneta Bic Azul</h5>
                                            <p class="font-weight-bold text-center" style="font-size: 20px">R$ 5,00</p>
                                        </div>
                                    </div>
                                    <div class="card" style="max-width:90%; max-height:230px; width: auto; height: auto;">
                                        <img src="https://cdn.awsli.com.br/600x450/268/268329/produto/19914289/bcb456e23e.jpg" class="card-img-top" alt="..." style="max-width:90%; max-height:150px; width: auto; height: auto;">
                                        <div class="card-body">
                                            <h5 class="card-title font-weight" style="font-size: 15px">Caneta Bic Azul</h5>
                                            <p class="font-weight-bold text-center" style="font-size: 20px">R$ 5,00</p>
                                        </div>
                                    </div>
                                    <div class="card" style="max-width:90%; max-height:230px; width: auto; height: auto;">
                                        <img src="https://cdn.awsli.com.br/600x450/268/268329/produto/19914289/bcb456e23e.jpg" class="card-img-top" alt="..." style="max-width:90%; max-height:150px; width: auto; height: auto;">
                                        <div class="card-body">
                                            <h5 class="card-title font-weight" style="font-size: 15px">Caneta Bic Azul</h5>
                                            <p class="font-weight-bold text-center" style="font-size: 20px">R$ 5,00</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="https://images.tcdn.com.br/img/img_prod/698958/borracha_faber_castell_tons_pastel_fc_max_191_1_20190625134314.jpg" class="d-block w-100" style="max-width:80%; max-height:300px; width: auto; height: auto; margin: auto;">
                            </div>
                            <div class="carousel-item">
                                <img src="..." class="d-block w-100" alt="...">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carousel2" role="button" data-slide="prev" style="margin-left: -10px">
                            <span class="control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carousel2" role="button" data-slide="next" style="margin-right: -10px; color: white ">
                            <span class="control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>    
                </div>
            </div>
        </div>
        
                            
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <% }%>
    </body>
</html>
