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
    </head>
    <body>     
        
        <%
            Produto produto;

            if(session != null && 
                    session.getAttribute("prod") != null){
                produto = (Produto) session.getAttribute("prod");
            }
            else{
                response.sendRedirect("index.jsp");
            }
            %>
        
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include>
        
        <div class="container">
            <h1>Produtos da Minha Loja!</h1>
            
        </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
