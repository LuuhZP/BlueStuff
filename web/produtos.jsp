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
        
        <form id="add" class="form" action="AddCarrinho" method="post"></form>
        
        <div class="container-fluid">
            <div class="row">
                <!-- Shopping cart table -->
                <div class="col-lg-5" style="height: 380px; background-color: #1b4965">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="height: 350px; margin-top: 5%">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <% for(int j = 1; j <= produto.listaImg.size() - 1; j++){ %>
                            <li data-target="#carouselExampleIndicators" data-slide-to="<%= j%>"></li>
                            <% }%>
                        </ol>
                        <div class="carousel-inner" >
                            <div class="carousel-item active">
                                <img src="<%= produto.listaImg.get(0) %>" class="d-block w-100" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto">
                            </div>
                            <% for(int i = 1; i <= produto.listaImg.size() - 1; i++){ %>
                                <div class="carousel-item" style="">
                                    <img src="<%= produto.listaImg.get(i) %>" class="d-block w-100" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto;">
                                </div>
                            <% }%>
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
                                        
<%--       COLUNA LATERAL    --%>  
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
                            <button form="add" type="submit" name="prod" value="<%=produto%>"class="btn btn-lg btn-block" style="background-color: #1b4965; color: white">Adicionar ao Carrinho</button>
                    </div>
                </div>
            </div>
            <%-- Sujestoes 
            
            <div>
                <div style="height: 250px; background-color: #5fa8d3">
                    <div id="carousel2" class="carousel slide" data-ride="carousel" style="height: 230px; margin-top: 10px">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel2" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel2" data-slide-to="1"></li>
                            <li data-target="#carousel2" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" >
                            <div class="carousel-item active">
                                <div class="card-deck" style="max-width:90%; max-height:230px; width: auto; height: auto; margin: auto; margin-top: 10px;">
                                <%
                                    //int i = 0;
                                    for(int i = 1; i < 20; i++){
                                        Produto p = Produto.lista.get(i - 1);
                                        if(i % 6 == 0){%>
                                            </div>
                                            </div>
                                            <div class="carousel-item">
                                            <div class="card-deck" style="max-width:90%; max-height:230px; width: auto; height: auto; margin: auto; margin-top: 10px;">
                                            
                                <% }else{ %>
                                
                                    <div class="card mb-4 shadow-sm" style="max-width:90%; height:230px; width: auto;">
                                                        <a class="btn btn-lg btn-primary btn-block" href="produtos.jsp?prod=<%=p%>" style="height:150px;">
                                                        <img class="card-img-top align-middle" src="<%= p.listaImg.get(0)%>" alt="Card image cap" style=" margin: auto; display: inline-block; max-width:90%; max-height:130px; width: auto; height: auto;">
                                                        </a>
                                                        <div class="card-body align-items-center">
                                                            <h1 style="text-align: center; margin-top: -10px; font-size: 25px;"> <%= p.getTitulo() %> <br><span style="font-size: 15px; background-color: #5fa8d3; margin-left: auto;" class="badge badge-primary align-items-center">R$<%= p.getPreco() %></span></h1>
                                                        </div>
                                                    </div>
                                    
                                <% } } %>
                                </div>
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
        --%>
        <% }%>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
