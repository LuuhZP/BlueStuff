<%-- 
    Document   : addPessoa
    Created on : 20/11/2019, 14:40:48
    Author     : camara
--%>

<%@page import="modelos.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Pessoa</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        

        <jsp:include page="menu.jsp">
            <jsp:param name="navInferior" value="1" />
        </jsp:include>

        <style>
            .navs a.active { 
                background-color:red; 
            }
            .pagination a:hover:not(.active) { 
                background-color: white;
            }

        </style>
        
        <%
            String pes = request.getParameter("pes");
            
            boolean alterar = pes != null;
            Pessoa p = new Pessoa();
            if(alterar){
                p = Pessoa.getPessoa(pes);
            }
            
            boolean logado = false;
            
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean)session.getAttribute("logado");
            }
            
            Pessoa pessoa = new Pessoa();            
            if(session != null && session.getAttribute("pessoa") != null){
                pessoa = (Pessoa)session.getAttribute("pessoa");
            }
            
        %>
        
        <div class="navs container mt-3">
            <h2>Adicionar Pessoa</h2>

            <!-- Nav tabs -->
             <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link active" href="#home">Dados Pessoais</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#menu1">Dados Cadastrais</a>
                </li>
            </ul>
            
            <form class="form" action="AddPessoa" method="post">
            
            <div class="tab-content">
                    <!-- action="addPessoa" -->
                    <div id="home" class="container tab-pane active"><br>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-7">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Nome*</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="nome" <% if(alterar){%> value="<%= p.getNome()%>" <% }%> required>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Data de Nascimento:</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="dataNas" <% if(alterar && p.getDataNas() != null){%> value="<%= p.getDataNas()%>" <% }%>>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Telefone*</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="telefone" <% if(alterar){%> value="<%= p.getTelefone()%>" <% }%> required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">RG</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="RG" <% if(alterar && p.getRg() != null){%> value="<%= p.getRg()%>" <% }%> >
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">CPF*</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="CPF" <% if(alterar){%> value="<%= p.getCpf()%>" <% }%> required>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <label class="input-group-text text-white" for="inputGroupSelect01" style="background-color: #1b4965;">Sexo:</label>
                                            </div>
                                            <select class="custom-select" name="sexo"  value="M" >
                                                <option selected> </option>
                                                <option value="M">Masculino</option>
                                                <option value="F">Feminino</option>
                                                <option value="I">Indefinido</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <br/>
                                <br/>
                                <br/>
                                <div class="row">
                                    <div class="col">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Rua*</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="rua" <% if(alterar){%> value="<%= p.getRua()%>" <% }%> required>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Numero*</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="num" <% if(alterar){%> value="<%= p.getNumero()%>" <% }%>required>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Complemento</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="complemento" <% if(alterar && p.getComplemento() != null){%> value="<%= p.getComplemento()%>" <% }%>>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Bairro</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="bairro" <% if(alterar && p.getBairro() != null){%> value="<%= p.getBairro()%>" <% }%>>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Cidade*</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="cidade" <% if(alterar){%> value="<%= p.getCidade()%>" <% }%> required>
                                        </div>
                                    </div>
                                    <div class="col-1">
                                        <div class="input-group-lg mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">UF*</span>
                                            </div>
                                            <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="UF" <% if(alterar){%> value="<%= p.getEstado()%>" <% }%> required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                        
                        <div class="d-flex justify-content-md-end">
                            <button class="btn btn-lg" onclick="$('.nav-pills a:last').tab('show');event.preventDefault()" style="background-color: #62b6cb; color: white;">Proximo</button>
                            <br/>
                            <br/>
                        </div>
                    </div>
                    

                    <div id="menu1" class="container tab-pane fade"><br>
                        <div class="form-group">
                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Email</span>
                                </div>
                                <input type="email" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="email" <% if(alterar){%> value="<%= p.getLogin()%>" <% }%> required>
                            </div>

                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Senha</span>
                                </div>
                                <input type="password" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="senha" <% if(alterar){%> value="<%= p.getSenha()%>" disabled <% }%> required >
                            </div>

                            <% if(logado && pessoa.isAdmin()){ %>
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="disabledFieldsetCheck">
                                    <label class="form-check-label" for="disabledFieldsetCheck" style=" margin-left: 2% ">
                                        Acesso de Administrador
                                    </label>
                                </div>
                            </div>
                            <% }%>
                           
                        <div class="d-flex justify-content-between">
                             <button class="btn btn-lg" onclick="$('.nav-pills a:first').tab('show');event.preventDefault()" style="background-color: #62b6cb; color: white;">Anterior</button>
                            <button type="submit" class="btn btn-lg" style="background-color: #1b4965; color: white;"><% if(alterar){%> Alterar Cadastro <% } else {%>Adicionar Pessoa <% }%></button>
                        </div>
                    </div>    
                </div>                    
            </form>
        </div>

        <script>
        $(document).ready(function(){
                $(".nav-pills a").click(function(){
                    $(this).tab('show');
                });
            });
        </script>

    </body>
</html>