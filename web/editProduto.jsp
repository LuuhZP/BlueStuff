<%-- 
    Document   : editProduto
    Created on : 21/11/2019, 14:53:07
    Author     : camara
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      
    </head>
    
    <body>
        

        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include>

        
        <form id="edit" class="form" action="EditProduct" method="post"></form>
        <form id="del" class="form" action="EditProduct" method="get"></form> 
        
        <form id="des" class="form" action="AddDesconto" method="post"></form>
        
        
            <div class="table-responsive" style="padding: 20px">
                <table class="mt-3 table table-sm">
                    <thead>
                        <tr>
                            <th scope="col" >#</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Valor</th>
                            <th scope="col">Imagem</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>    
                    <tbody>

                        <%
                            for (int i = 0; i < Produto.lista.size(); i++) {

                                int num = i;

                                Produto p = Produto.lista.get(i);

                        %>

                        <tr>

                            <td scope="row" class="d-flex justify-content-between"><%=i + 1%></td>

                            <td>

                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="<%=p.getTitulo()%>" name="nome" form="edit" >
                                </div>

                            </td>
                            <td>

                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="<%=p.getPreco()%>" name="preco" form="edit" >
                                </div>

                            </td>
                            <td>

                                <div class="input-group">
<<<<<<< HEAD
                                    <input type="text" class="form-control" placeholder="<%=p.getListaImg()%>" name="imagem" form="edit" >
=======
                                    <input type="text" class="form-control" placeholder="<%=p.listaImg.get(0)%>" name="imagem" form="edit" >
>>>>>>> 21762db2d2d23cae454fa5068c8b1fc504e9765d
                                </div>

                            </td>
                            <td>
                                    <button type="submit" class="btn btn-md" name="button" value="<%=num%>" form="edit" style="background-color: #1b4965"><i class="fa fa-edit" style="color: white"></i></button>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="background-color: #1b4965"><i class="fa fa-money" style="color: white"></i></button>
                                    <button type="submit" class="btn btn-md" name="buttondel" value="<%=num%>" form="del" style="background-color: #1b4965"><i class="fa fa-trash" style="color: white"></i></button>
                                    
                                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Adicionar Desconto</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group">
                                                        <label for="message-text" class="col-form-label">Valor:</label>
                                                        <input type="text" class="form-control" placeholder="R$ 5" name="desconto" form="des" >
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-md" value="<%=num%>" form="des" style="background-color: #1b4965; color: white">Adicionar</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </td>
                        </tr>

                        <%
                            }
                        %>
                    </tbody>
                </table>
                    <h6><b>Coloque 0 naqueles parametros que não serão alterados</b></h6>
                    
            </div>
    </body>
</html>
