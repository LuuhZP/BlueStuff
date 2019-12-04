<%-- 
    Document   : carrinho
    Created on : 20/11/2019, 22:27:14
    Author     : camara
--%>

<%@page import="modelos.ItemCarrinho"%>
<%@page import="modelos.Produto"%>
<%@page import="modelos.Carrinho"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/carrinho.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include>

        <%
            float subtotal = 0;

        %>
        
        <div class="container-fluid">
            <div class="row">
                <!-- Shopping cart table -->
                <div class="col-lg-8">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col" class="border-0" style="background-color: #1b4965">
                                        <div class="p-3 px-3 text-uppercase" style="color: white">Produto</div>
                                    </th>
                                    <th scope="col" class="border-0" style="background-color: #1b4965">
                                        <div class="py-3 text-uppercase" style="color: white">Preço</div>
                                    </th>
                                    <th scope="col" class="border-0" style="background-color: #1b4965">
                                        <div class="py-3 text-uppercase" style="color: white">Quantidade</div>
                                    </th>
                                    <th scope="col" class="border-0" style="background-color: #1b4965">
                                        <div class="py-3 text-uppercase" style="color: white">Remover</div>
                                    </th>
                                </tr>
                            </thead>

                            <tbody>

                                <%                      
                                    
                                    for (int i = 0; i < Carrinho.itens.size(); i++) {

                                        int num = i;

                                        ItemCarrinho item = Carrinho.itens.get(i);
                                        
                                        subtotal = item.getPreco();
                                        
                                    if(num == 0){
                                  
                                %>

                            <tr>
                                <th scope="row" class="border-0">
                                    <div class="p-3">
                                        <img src="<%=item.getProduto().listaImg.get(0)%>" alt="" width="70" class="img-fluid rounded shadow-sm">
                                        <div class="ml-4 d-inline-block align-middle">
                                            <h5 class="mb-0 text-dark d-inline-block align-middle"><%=item.getProduto().getTitulo()%></h5>
                                        </div>
                                    </div>
                                </th>
                                <td class="border-0 align-middle"><strong>R$<%=item.getPreco()%></strong></td> 
                                <td class="border-0 align-middle">
                                    <div class="row align-items-centerg">
                                        <form action="EditCarrinho" method="post">
                                            <input name="funcao" value="add" style="display: none">
                                            <button type="submit" name="item" value="<%=item%>" class="btn" style="background-color: #1b4965; color: white; margin-top: 5%;"><i class="fa fa fa-plus"></i></button>
                                        </form>                         
                                        <strong class="mt-2 ml-2 mr-sm-2"><%=item.getQuantidade()%></strong>
                                        <form action="EditCarrinho" method="post">
                                            <input name="funcao" value="rem" style="display: none">
                                            <button type="submit" name="item" value="<%=item%>" class="btn" style="background-color: #1b4965; color: white; margin-top: 5%;"><i class="fa fa-minus"></i></button>
                                        </form>
                                    </div>
                                </td>
                                <td class="border-0 align-middle">
                                    <form action="EditCarrinho" method="post">
                                        <input name="funcao" value="del" style="display: none">
                                        <button type="submit" name="item" value="<%=item%>" class="btn" style="background-color: #1b4965; color: white"><i class="fa fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                            <%
                            } else {
                            %>
                            <tr>
                                <th scope="row">
                                    <div class="p-3">
                                         <img src="<%=item.getProduto().listaImg.get(0)%>" alt="" width="70" class="img-fluid rounded shadow-sm">
                                        <div class="ml-4 d-inline-block align-middle">
                                            <h5 class="mb-0 text-dark d-inline-block align-middle"><%=item.getProduto().getTitulo()%></h5>
                                        </div>
                                    </div>
                                </th>
                                <td class="align-middle"><strong>R$<%=item.getPreco()%></strong></td> 
                                <td class="align-middle">
                                    <div class="row">
                                        <form action="EditCarrinho" method="post">
                                            <input name="funcao" value="add" style="display: none">
                                            <button type="submit" name="item" value="<%=item%>" class="btn" style="background-color: #1b4965; color: white; margin-top: 5%;"><i class="fa fa fa-plus"></i></button>
                                        </form>                         
                                        <strong class="mt-2 ml-2 mr-sm-2"><%=item.getQuantidade()%></strong>
                                        <form action="EditCarrinho" method="post">
                                            <input name="funcao" value="rem" style="display: none">
                                            <button type="submit" name="item" value="<%=item%>" class="btn" style="background-color: #1b4965; color: white; margin-top: 5%;"><i class="fa fa-minus"></i></button>
                                        </form>
                                    </div>
                                </td>
                                <td class="align-middle">
                                    <form action="EditCarrinho" method="post">
                                        <input name="funcao" value="del" style="display: none">
                                        <button type="submit" name="item" value="<%=item%>" class="btn" style="background-color: #1b4965; color: white"><i class="fa fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                            <%
                                    }
                               }
                            %>
                            </tbody>

                        </table>
                    </div>    
                </div>

                <div class="col-md">
                    
                    <div class="text-light px-4 py-4 text-uppercase font-weight-bold" style="height: 56px; background-color: #1b4965">Pedido</div>
                    <div class="p-3">
                        <p class="font-italic mb-4">Os custos de envio e adicionais são calculados com base nos valores inseridos.</p>
                        <ul class="list-unstyled mb-4">
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Subtotal</strong><strong>R$<%=subtotal%></strong></li>
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Envio e manejo</strong><strong>R$<%
                              
                                if (subtotal == 0) {
                                    out.print("0");
                                } else {
                                    out.print("10");
                                }
                                 %></strong></li>
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Taxa</strong><strong>R$0.00</strong></li>
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                                <h5 class="font-weight-bold">R$<%
                                    if (subtotal == 0) {
                                        out.print("0");
                                    } else {
                                        out.print(subtotal + 10);
                                    }
                                    %></h5>
                            </li>
                        </ul>
                        <%
                            //if (subtotal == 0) {
                        %>                    
                            
                        <%
                            //}
                        %>
                        <a href="pagamento.jsp" class="btn btn-lg btn-block" style="background-color: #1b4965; color: white">Finalizar Compra</a>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>