<%-- 
    Document   : addProduto
    Created on : 13/11/2019, 17:55:48
    Author     : camara
--%>

<%@page import="modelos.Produto"%>
<%@page import="modelos.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body >
        
        <%
            boolean logado = false;
            
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean)session.getAttribute("logado");
            }
            
            Pessoa pessoa = new Pessoa();
            
            if(session != null && session.getAttribute("pessoa") != null){
                pessoa = (Pessoa)session.getAttribute("pessoa");
            }
            
            if(logado & pessoa.isAdmin()){
        %>
        
        
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include>
         
         
         
        <div class="container" style="align-items: center; padding-top: 40px; padding-bottom: 40px;">
            
            <h1 style="margin-bottom: 40px  ">Adicionar Produto!</h1>
         
            <form class="form" action="AddProduto" method="post">
                
                <div class="form-group">
                    
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default">Nome</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="descricao">
                    </div>
                    
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default">Titulo</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="descricao">
                    </div>

                    
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default">Descricao</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="descricao">
                    </div>
                    
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default">Imagem:</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="imagem">
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">R$</span>
                            <span class="input-group-text">0.00</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="preco">
                    </div>

                    <button type="submit" class="btn btn-warning">OK</button>

                </div>

            </form>
        </div>
                            
                            <%
                            }
                else {

               %>     
                    <jsp:forward page="index.jsp" />
                    <%
                }
              %>

    </body>
</html>

