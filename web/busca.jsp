<%-- 
    Document   : busca
    Created on : 21/11/2019, 20:25:05
    Author     : cfeva
--%>

<%@page import="modelos.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script language="javascrip">
            $(function(){
	//Pesquisar os cursos sem refresh na página
	$("#pesquisa").keyup(function(){
		
		var pesquisa = $(this).val();
		
		//Verificar se há algo digitado
		if(pesquisa != ''){
			var dados = {
				palavra : pesquisa
			}		
			$.post('Busca', dados, function(retorna){
				//Mostra dentro da ul os resultado obtidos 
				$(".resultado").html(retorna);
			});
		}else{
			$(".resultado").html('');
		}		
	});
});
        </script>
        
    </head>
    <body style=" background-color: #cae9ff">
        
        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="0" />
        </jsp:include>
        
        <%          
            String type = request.getParameter("type");
            String funcion = request.getParameter("funcion");
            
            boolean logado = false;
            
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean)session.getAttribute("logado");
            }
            
            Pessoa pessoa = new Pessoa();
            
            if(session != null && session.getAttribute("pessoa") != null){
                pessoa = (Pessoa)session.getAttribute("pessoa");
            }
            
            if(type == null || funcion == null || !logado || !pessoa.isAdmin())
              response.sendRedirect("index.jsp");
            else{
            %>
        <h1>Hello World!</h1>
        
    <div class="container" style="width: 33%; display: block; margin-left: 33%">
         
         <h1>Pesquisar Cursos</h1>
		<form method="POST" id="form-pesquisa" action="">
			Pesquisar: <input type="text" name="pesquisa" id="pesquisa" placeholder="O que você está procurando?">
			<input type="submit" name="enviar" value="Pesquisar">
		</form>
		
		<ul class="resultado">
		
		</ul>
      </div>
        <% }%>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   </body>
</html>
