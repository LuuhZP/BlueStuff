<%--
    Document   : index
    Created on : 21/08/2019, 17:26:44
    Author     : gutol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="modelos.Produto"%>

<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/ofertas.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <style>
           .card-columns {
               @include media-breakpoint-only(lg) {
                 column-count: 4;
               }
               @include media-breakpoint-only(xl) {
                 column-count: 5;
               }
             }
        </style>

    </head>
    <body>

       <%
          String cat = request.getParameter("busca");
          String categoria = cat.replaceAll("-", " & ");
       %>

        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include>

         <jsp:useBean id="Produtos" class="modelos.Produto" />
         <div class="card-deck" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto; margin-top: 10px;">

            <%
               int i = 0;
               for(Produto p: Produto.lista){
                  if(i % 7 == 0){ %>
                     </div>
                     <div class="card-deck" style="max-width:100%; max-height:300px; width: auto; height: auto; margin: auto; margin-top: 10px;">
            <%
               }else{
                  if(categoria!=null && p.getCategoria().equals(categoria)){

            %>

                     <div class="card mb-4 shadow-sm" style="max-width:100%; height:230px; width: auto;">
                        <a class="btn btn-lg btn-primary btn-block" href="produtos.jsp?prod=<%=p%>" >
                        <img class="card-img-top align-middle" src="<%= p.listaImg.get(0)%>" alt="Card image cap" style=" margin: auto; display: inline-block; max-width:90%; max-height:130px; width: auto; height: auto;">
                        </a>
                        <div class="card-body">
                            <h5 style="text-align: center" class="card-title"> <%= p.getTitulo() %> <br><span style="font-size: 150%; background-color: #5fa8d3; margin-left: auto;" class="badge badge-primary align-items-center">R$<%= p.getPreco() %></span></h5>
                        </div>
                     </div>

            <% }}
                  i++;
               }
             %>
            </div>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
