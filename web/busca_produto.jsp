<%-- 
    Document   : busca_produto
    Created on : 03/12/2019, 21:38:27
    Author     : camara
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String produto = request.getSession().getAttribute("busca").toString();
            
            int numprod = 0;
        %>
        
          
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include> 

        <div class="border-bottom">
            <span class="badge badge-primary align-items-center text-white" style="background-color: #1b4965; margin-left: auto; font-size: 150%; padding: 0.7%; ">RESULTADO</span>
        </div>  
        
        <div class="container">
            
            <div class="row">

                <%
                    for(Produto p: Produto.lista){
                       
                        if(p.getTitulo().toLowerCase().contains(produto.toLowerCase())){
                            numprod++;
                %>

                            <div class="col">
                                <jsp:include page="card.jsp">
                                    <jsp:param name="prod" value="<%= p%>" />
                                </jsp:include>  
                            </div>

                <%
                        }

                }
                        
                %>
                
                <%
                     if(numprod==0){
                        
                %> 
                <h1>
                    Não há produtos com este nome!!!
                </h1>
                <%}%>              
            </div>
            
        </div>
        
    </body>
</html>
