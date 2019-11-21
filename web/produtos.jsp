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
            Produto produto = Produto.getProduto(request.getParameter("prod"));
            if(produto == null)
              response.sendRedirect("index.jsp");
            %>
        
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include>
        
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

                            <tr>
                                <th scope="row" class="border-0">
                                    <div class="p-3">
                                        <img src="<%//out.println(c.getImagem());%>" alt="" width="70" class="img-fluid rounded shadow-sm">
                                        <div class="ml-4 d-inline-block align-middle">
                                            <h5 class="mb-0 text-dark d-inline-block align-middle"><%//out.println(c.getNome());%></h5>
                                        </div>
                                    </div>
                                </th>
                                <td class="border-0 align-middle"><strong>R$<%//out.println(c.getPreco());
                      //subtotal += (c.getPreco() * c.getQtd());%></strong></td>
                                <td class="border-0 align-middle">
                                    <div class="row align-items-centerg">
                                        <form action="Button_Add" method="post">
                                            <button type="submit" class="btn" name="add"  style="background-color: #1b4965; color: white" value="<%%>"><i class="fa fa fa-plus"></i></button>
                                        </form>                         
                                        <strong class="mt-2 ml-2"><%//out.println(c.getQtd());%></strong>
                                        <form action="Button_Del" method="post">
                                            <button type="submit" class="btn ml-2" name="del" style="background-color: #1b4965; color: white"  value="<%%>"><i class="fa fa-minus"></i></button>
                                        </form>
                                    </div>
                                </td>
                                <td class="border-0 align-middle">
                                    <form action="RemoveProduct" method="post">
                                        <button type="submit" class="btn" name="button" style="background-color: #1b4965; color: white"  value="<%%>"><i class="fa fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                            <%
                           // } else {
                            %>
                            <tr>
                                <th scope="row">
                                    <div class="p-3">
                                        <img src="<%//out.println(c.getImagem());%>" alt="" width="70" class="img-fluid rounded shadow-sm">
                                        <div class="ml-4 d-inline-block align-middle">
                                            <h5 class="mb-0 text-dark d-inline-block"><%//out.println(c.getNome());%></h5>
                                        </div>
                                    </div>
                                </th>
                                <td class="align-middle"><strong>R$<%//out.println(c.getPreco());
                     // subtotal += (c.getPreco() * c.getQtd());%></strong></td>
                                <td class="align-middle">
                                    <div class="row">
                                        <form action="Button_Add" method="post">
                                            <button type="submit" class="btn" name="add" style="background-color: #1b4965; color: white"  value="<%%>"><i class="fa fa fa-plus"></i></button>
                                        </form>
                                        <strong class="ml-2 mt-2"><%//out.println(c.getQtd());%></strong>
                                        <form action="Button_Del" method="post">
                                            <button type="submit" class="btn ml-2" name="del" style="background-color: #1b4965; color: white" value="<%%>"><i class="fa fa-minus"></i></button>
                                        </form>
                                    </div>
                                </td>
                                <td class="align-middle">
                                    <form action="RemoveProduct" method="post">
                                        <button type="submit" class="btn" name="button" style="background-color: #1b4965; color: white"  value="<%%>"><i class="fa fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                            <%
                                    //}
                               // }
                            %>
                            </tbody>

                        </table>
                        <a href="produtos.jsp" class="btn btn-lg py-2 mb-4" style="background-color: #1b4965; color: white">Continuar Comprando</a>
                    </div>    
                </div>

                <div class="col-md">
                    <div class="text-light px-4 py-4 text-uppercase font-weight-bold" style="height: 80px; background-color: #1b4965">Pedido</div>
                    <div class="p-3">
                        <p class="font-italic mb-4">Os custos de envio e adicionais são calculados com base nos valores inseridos.</p>
                        <ul class="list-unstyled mb-4">
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Envio e manejo</strong><strong>R$<%
                              
                                //if (subtotal == 0) {
                                //    out.print("0");
                                //    Carrinho.setSubtotal(subtotal);
                                //} else {
                                //    out.print("10");
                                //}
                                 %></strong></li>
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Taxa</strong><strong>R$0.00</strong></li>
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                                <h5 class="font-weight-bold">R$<%
                                    //if (subtotal == 0) {
                                    //    out.print("0");
                                    //} else {
                                    //    out.print(subtotal + 10);
                                    //    Carrinho.setSubtotal(subtotal + 10);
                                    //}
                                    %>.00</h5>
                            </li>
                        </ul>
                        <a href="pagamento.jsp" class="btn btn-lg btn-block" style="background-color: #1b4965; color: white">Finalizar Compra</a>
                    </div>
                </div>
            </div>

        </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
