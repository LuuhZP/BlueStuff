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
        <title>Add Produto</title>
    </head>
    <body >
        
        <%
            String prod = request.getParameter("prod");
            
            boolean alterar = prod != null;
            Produto p = new Produto();
            if(alterar){
                p = Produto.getProduto(prod);
            }
            boolean logado = false;
            
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean)session.getAttribute("logado");
            }
            
            Pessoa pessoa = new Pessoa();
            
            if(session != null && session.getAttribute("pessoa") != null){
                pessoa = (Pessoa)session.getAttribute("pessoa");
            }
            
            if(!logado || !pessoa.isAdmin())
                response.sendRedirect("login.jsp");
            else{
        %>
        
        
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="0" />
        </jsp:include>
         
        <div class="container" style="align-items: center; padding-top: 40px; padding-bottom: 40px;">
            
            <h1 style="margin-bottom: 40px  ">Adicionar Produto!</h1>
         
            <form class="form" action="AddProduto" method="post">
                
                <div class="form-group">
                    <div class="row">
                        <div class="col-7">
                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text text-white " id="inputGroup-sizing-default" style="background-color: #1b4965; ">Titulo*</span>
                                </div>
                                <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="titulo" <% if(alterar){%> value="<%= p.getTitulo()%>" <% }%>placeholder="Titulo do Produto" required>
                                 
                            </div>
                        </div>
                        <div class="col">
                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text text-white" style="background-color: #1b4965; ">Categoria*</span>
                                </div>
                                <select class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="categoria" required>
                                    <option <% if(!alterar){%>selected<% }%> > </option>
                                    <option value="eletronicos" <% if(p.getCategoria().equals("eletronicos")){%>selected<% }%>>Eletronicos</option>
                                    <option value="celulares-computadores" <% if(p.getCategoria().equals("celulares-computadores")){%>selected<% }%>>Celulares & Computadores</option>
                                    <option value="roupas" <% if(p.getCategoria().equals("roupas")){%>selected<% }%>>Roupas</option>
                                    <option value="casa-mobilha" <% if(p.getCategoria().equals("casa-mobilha")){%>selected<% }%>>Casa & Mobilha</option>
                                    <option value="outros" <% if(p.getCategoria().equals("outros")){%>selected<% }%>>Outros</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">                    
                        <div class="col">
                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text text-white" style="background-color: #1b4965; ">Preço*</span>
                                </div>
                                <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="preco" <% if(alterar){%> value="<%= p.getPreco()%>" <% }%> placeholder="5.50" required>
                            </div>
                        </div>
                        <div class="col">
                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text text-white" style="background-color: #1b4965; ">Desconto</span>
                                </div>
                                <input class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="desconto" <% if(alterar){%> value="<%= p.getDesconto()%>" <% }%> value="0.00">
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text text-white" style="background-color: #1b4965; ">Quantidade</span>
                                </div>
                                <input type="int" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="quantidade" <% if(alterar){%> value="<%= p.getQuantidade()%>" <% }%> value="0">
                            </div>
                        </div>
                     </div>
                    <div class="input-group-lg mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965; ">Descrição*</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="descricao" <% if(alterar){%> value="<%= p.getDescricao()%>" <% }%> style="min-height: 100px" placeholder="Dados do produto" required/>
                    </div>
                    <div class="input-group-lg mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965; ">KeyWords*</span>
                        </div>
                        
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="keywords" <% if(alterar){%> value="<%= p.getKeyWords()%>" <% }%> placeholder="Palavras chaves separada por  ', '" required>

                    </div>
                    <div class="input-group-lg mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965; ">Imagens*</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="imagens" <% if(alterar){%> value="<%= p.getImagens()%>" <% }%> style="min-height: 100px" placeholder="separe as imagens com ', '" required/>
                    </div>
                    
                <%  if(alterar){%>  
                <input name="antigo" value="<%= p%>" style="display: none;"/>
                <%  }%>

                    <button type="submit" class="btn btn-lg" style="background-color: #1b4965; color: white;"><% if(alterar){%> Modificar Produto <% } else{ %>Adicionar Produto<% }%></button>

                </div>

            </form>
        </div>
                            
        <% } %>

    </body>
</html>

