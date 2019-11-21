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
    </head>
    <body>

        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include>

        <jsp:useBean id="Produtos" class="modelos.Produto" />

        <div class="container">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Descrição</th>
                        <th>Valor</th>
                    </tr>
                </thead>
                <tbody>
            <%
                for(int i=0; i<Produtos.lista.size(); i++){
                    Produto p = Produtos.lista.get(i);
                %>
                    <tr>
                    <td> <%=(i+1)%> </td>
                    <td> <%=p.getDescricao()%> </td>
                    <td> <%=p.getPreco()%> </td>
                    <td> <a class="btn btn-lg btn-primary btn-block" href="produtos.jsp?prod=<%=p%>" >Go</a> 
                    
                    </td>
                    </tr>
                    <%
                }

            %>
                </tbody>
            </table>
        </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
