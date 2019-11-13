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
    </head>
    <body>
        
        <%
            boolean logado = false;
            
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean)session.getAttribute("logado");
            }
            
            Pessoa pessoa = new Pessoa();
            
            if(session != null && session.getAttribute("pessoa") != null){
                pessoa = (Pessoa)session.getAttribute("pessoa");
            }
            
            if(logado && pessoa.isAdmin()){
        %>
        
        <div class="container" style="margin: auto">
            <form class="form" action="AddProduto" method="post">

                <div class="form-group">

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default">Descricao</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="descricao">
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">R$</span>
                            <span class="input-group-text">0.00</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="preco">
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-default">Imagem:</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="imagem">
                    </div>

                    <button type="submit" class="btn btn-warning">OK</button>

                </div>

            </form>
            <form class="form" action="EditProduct" method="post">
                <div class="table-responsive">
                    <table class="mt-3 table table-sm">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Valor</th>
                                <th scope="col">Imagem</th>
                                <th scope="col"></th>
                                <th scope="col"></th>
                            </tr>
                        </thead>    
                        <tbody>

                            <%
                                for (int i = 0; i < Produto.lista.size(); i++) {

                                    int num = i;

                                    Produto p = Produto.lista.get(i);
                                    
        /*
          <td>
        <button type="submit" class="btn btn-warning" name="button" value="<%=num"><i class="fa fa-edit"></i></button>
                                </td>
                                <td>
                                    <form action="RemoveList" method="post">
                                        <button type="submit" class="btn btn-warning" name="button" value="<%=num"><i class="fa fa-trash"></i></button>
                                    </form>
                                </td>
                                    */

                            %>

                            <tr>

                                <td scope="row"><%=i + 1%></td>
                                <td>

                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="<%=p.getDescricao()%>" name="descricao" style="width: 200px;">
                                    </div>

                                </td>
                                <td>

                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="<%=p.getPreco()%>" name="preco" style="width: 100px;">
                                    </div>

                                </td>
                                <td>

                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="<%=p.getImagem()%>" name="imagem" style="width: 150px;">
                                    </div>

                                </td>
                                
                            </tr>

                            <%
                                }
                            %>

                    </table>
                    </tbody>
                    <%} else {%>
                    <jsp:forward page="index.jsp" />
                    <%
                        }
                    %>

                </div>
            </form>
        </div>

    </body>
</html>

