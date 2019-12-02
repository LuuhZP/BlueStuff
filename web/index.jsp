<%--
    Document   : index
    Created on : 21/08/2019, 17:26:44
    Author     : Gustavo O
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelos.Produto"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/ofertas.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

    </head>
    <body>
        
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include> 

        
        <%String categoria = request.getParameter("busca");
        
        if (categoria == null){%>
            <%-- NOTICIAS --%>
            <div style="background-color: #bee9e8; margin-top: -1.5%">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width: 800px; height: 450px; margin: auto;">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner" style="width: 840px; height: 450px; margin: auto; ">
                  <div class="carousel-item active">
                        <img src="images/conteudo/Promoção de Verão.png" class="d-block w-100" >
                    </div>
                    <div class="carousel-item">
                        <img src="images/conteudo/TEC2.png" class="d-block w-100">
                    </div>
                </div>
            </div>
            </div>
            <br/>
            <%-- PROMOÇÃO --%>
            <div class="border-bottom">
                <span class="badge badge-primary align-items-center text-white" style="background-color: #1b4965; margin-left: auto; font-size: 150%; padding: 0.7%; ">PROMOÇÃO</span>
            </div>            
            <div class="card-deck" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto; margin-top: 10px;">
        <%  int i = 0;
            for(Produto p: Produto.lista){
                if(i == 6){
                    break; 
                }
                if(p.getDesconto() > 0){
                    i++; %>
                    <jsp:include page="card.jsp">
                        <jsp:param name="prod" value="<%= p %>" />
                    </jsp:include>  
                
            <%  } %>
        <%  } %>
            </div>
            <%-- PARA VOCÊ --%>
            <div class="border-bottom">
                <span class="badge badge-primary align-items-center text-white" style="background-color: #1b4965; margin-left: auto; font-size: 150%; padding: 0.7%; ">PARA VOCÊ</span>
            </div>            
            <div class="card-deck" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto; margin-top: 10px;">
        <%  for(i = 0; i < 6; i++){ %>
            <jsp:include page="card.jsp">
                <jsp:param name="prod" value="<%= Produto.lista.get(i) %>" />
            </jsp:include>  
                
        <%  } %>
            </div>
            <%-- CATEGORIAS --%>
        <%  String[] categorias = {"eletronicos", "celulares-computadores", "roupas", "casa-mobilha", "outros"};
            for(String cat : categorias){%>
                <div class="border-bottom">
                    <span class="badge badge-primary align-items-center text-white" style="background-color: #1b4965; margin-left: auto; font-size: 150%; padding: 0.7%; "><%= cat.toUpperCase().replaceAll("-", " & ") %></span>
                </div>            
                <div class="card-deck" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto; margin-top: 10px;">
            <%  i = 0;
                for(Produto p: Produto.lista){
                    if(i == 6){
                        break; 
                    }
                    if(p.getCategoria().equals(cat)){
                        i++; %>
                        <jsp:include page="card.jsp">
                            <jsp:param name="prod" value="<%= p %>" />
                        </jsp:include>  

                <%  } %>
            <%  } %>
            </div>
        <%  } %>
<%  } else { %>
        <div class="border-bottom">
            <span class="badge badge-primary align-items-center text-white" style="background-color: #1b4965; margin-left: auto; font-size: 150%; padding: 0.7%; "><%= categoria.toUpperCase().replaceAll("-", " & ") %></span>
        </div>
        <div class="card-deck" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto; margin-top: 10px;">
            <%
            
               int i = 0;
               for(Produto p: Produto.lista){
                  if(i % 6 == 0){ %>
                     </div>
                     <div class="card-deck" style="max-width:90%; max-height:300px; width: auto; height: auto; margin: auto; margin-top: 10px;">
            <%
                    i++;
                }else{
                if(categoria==null || categoria.equals(p.getCategoria() ) ){
                    i++;

            %>
                <jsp:include page="card.jsp">
                    <jsp:param name="prod" value="<%= p %>" />
                </jsp:include>                      

            <%      }
                }
               }
             %>
              
            </div>

<%  } %>

<jsp:include page="footer.jsp" /> 
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
