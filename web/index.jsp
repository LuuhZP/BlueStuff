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
                    <td> <%=p.getTitulo()%> </td>
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
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
