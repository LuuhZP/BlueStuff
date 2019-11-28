<%-- 
    Document   : busca
    Created on : 21/11/2019, 20:25:05
    Author     : cfeva
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
    <body >
        
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="0" />
        </jsp:include>
        
        <%          
            String type = request.getParameter("type");
            
            boolean logado = false;
            
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean)session.getAttribute("logado");
            }
            
            Pessoa pessoa = new Pessoa();
            
            if(session != null && session.getAttribute("pessoa") != null){
                pessoa = (Pessoa)session.getAttribute("pessoa");
            }
            
            if(type == null || !logado || !pessoa.isAdmin())
              response.sendRedirect("index.jsp");
            else{
                boolean isProduto = type.equals("Produtos");
                boolean isPessoa = type.equals("Pessoas");
            if(isProduto){%>
            <form id="edit" class="form" action="EditProduct" method="post"></form>
            
            <form id="des" class="form" action="AddDesconto" method="post"></form>
        <% } %>
        
            
        <div class="text-center">
            <h1>Buscar por <%= type.toUpperCase() %></h1>
            <div style="font-size: 25px; height: 30px; padding: 3%" >
                <label>Busca: </label>
                <input class="border-bottom" id="filtro-nome" style="width: 80%"/>
            </div>     
        </div>
        <div style="padding: 20px">
            <table class="mt-3 table table-sm" id="lista">
                <thead>
                    <tr>
                        <% if(isProduto){ %>
                        <th scope="col">Nome</th>
                        <th scope="col">Categoria</th>
                        <th scope="col">Valor</th>
                        <th scope="col">Desconto</th>
                        <th scope="col">Quantidade</th>
                        <th scope="col">Imagem</th>
                        <th scope="col">editar</th>
                        <% }else if(isPessoa){ %>
                        <th scope="col">Nome</th>
                        <th scope="col">RG</th>
                        <th scope="col">CPF</th>
                        <th scope="col">Telefone</th>
                        <th scope="col">Email</th>
                        <% } %>
                    </tr>
                </thead>
                <tbody>
                    <% if(isProduto) {
                    for (int i = 0; i < Produto.lista.size(); i++) {

                        Produto p = Produto.lista.get(i);
                        %>
                        <tr style="width: 15%; font-size: 20px;">
                            <td><%= p.getTitulo() %></td>
                            <td><%= p.getCategoria() %></td>
                            <td>R$<%= p.getPreco() %></td>
                            <td style="width: 15%">
                                <form class="form" action="EditProduct" method="post">
                                    <span  <%if(p.getDesconto() > 0){%> style="font-size: 25px; background-color: #5fa8d3; margin-left: auto; width:70%" class="badge badge-primary align-items-center" <% }%> >
                                        R$ <input name="desconto" value="<%= p.getDesconto() %> " style="border: none; width: 40%; background-color: transparent ">
                                    </span> <br/>
                                    <input name="function" value="desconto" style="display: none">
                                    <input name="type" value="Produtos" style="display: none">
                                    <button type="submit" name="obj" value="<%= p%>" class="btn" style="background-color: #1b4965; color: white; margin-top: 5%;">Alterar</button> <br/>
                                </form>
                            </td>
                            <td><%= p.getQuantidade() %> <br/><a class="btn" style="background-color: #1b4965; color: white; margin-top: 5%;">Adicionar</a> <br/></td> </td>
                            <td>
                                <img src="<%= p.listaImg.get(0)%>" style=" max-width:80px; max-height:80px; width: auto; height: auto;">
                            </td>
                            <td>
                                <div class="mx-auto" style="width: 55px; display: block">
                                    <a type="submit"  href="addProduto.jsp?prod=<%= p%>" class="btn" style="background-color: #1b4965; color: white; margin-top: 7%;">Modificar</a> <br/>
                                    <form class="form" action="EditProduct" method="post">
                                        <input name="function" value="del" style="display: none">
                                        <input name="type" value="Produtos" style="display: none">
                                        <button type="submit" name="obj" value="<%= p%>" class="btn" style="background-color: #1b4965; color: white; margin-top: 7%;">Excluir</button> <br/>
                                    </form> 
                                    
                                </div>
                            </td>
                        </tr>
                        <% } %>
                        <% }else if(isPessoa) {
                    for (int i = 0; i < Pessoa.lista.size(); i++) {

                        Pessoa p = Pessoa.lista.get(i);
                        %>
                        <tr style="width: 15%; font-size: 20px;">
                            <td><%= p.getNome() %></td>
                            <td><%= p.getRg() %></td>
                            <td><%= p.getCpf() %></td>
                            <td><%= p.getTelefone() %></td>
                            <td><%= p.getLogin() %></td>
                            <td>
                                <div class="mx-auto" style="width: 55px; display: block">
                                    <a href="addPessoa.jsp?pes=<%=p%>" class="btn" style="background-color: #1b4965; color: white; margin-top: 7%;">Modificar</a> <br/>
                                    <form class="form" action="EditProduct" method="post">
                                        <input name="function" value="del" style="display: none">
                                        <input name="type" value="Pessoas" style="display: none">
                                        <button type="submit" name="obj" value="<%= p%>" class="btn" style="background-color: #1b4965; color: white; margin-top: 7%;">Excluir</button> <br/>
                                    </form>
                                    
                                </div>
                            </td>
                        </tr>
                        <% }} %>
                </tbody>
            </table>
        </div>
        <% }%>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
        <script>
            $('#filtro-nome').keyup(function() {
    var nomeFiltro = $(this).val().toLowerCase();
    $('table tbody').find('tr').each(function() {
        var conteudoCelula = $(this).find('td:first').text();
        var corresponde = conteudoCelula.toLowerCase().indexOf(nomeFiltro) >= 0;
        $(this).css('display', corresponde ? '' : 'none');
    });
});
        </script>
        
   </body>
</html>
