<%-- 
    Document   : card
    Created on : 29/11/2019, 13:10:08
    Author     : cfeva
--%>
<%@page import="modelos.Produto"%>
<%
    Produto p = Produto.getProduto(request.getParameter("prod"));
%>

<div class="card mb-4 shadow-sm" style="max-width:100%; height:230px; width: auto;">
    <a class="btn btn-lg btn-primary btn-block" href="produtos.jsp?prod=<%=p%>" >
        <img class="card-img-top align-middle" src="<%= p.listaImg.get(0)%>" alt="Card image cap" style=" margin: auto; display: inline-block; max-width:90%; max-height:130px; width: auto; height: auto;">
    </a>
    
    <div class="card-body" style="margin-top: -5%;">
        <h5 style="text-align: center" class="card-title"> 
            <span style=" font-size: 120%;"> <%= p.getTitulo() %> </span> 
            <br>
            <span style="font-size: 150%; background-color: <% if(p.getDesconto() > 0){ %> #FF6347; <% }else{ %> #5fa8d3; <% }%> margin-left: auto;" class="badge badge-primary align-items-center">R$<%= p.getPreco() - p.getDesconto() %></span>
        </h5>
    </div>
 </div>
  