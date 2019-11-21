<%-- 
    Document   : addPessoa
    Created on : 20/11/2019, 14:40:48
    Author     : camara
--%>

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

                                <div class="input-group-lg mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Nome</span>
                                    </div>
                                    <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="nome">
                                </div>

                                <div class="input-group-lg mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">RG</span>
                                    </div>
                                    <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="RG">
                                </div>


                                <div class="input-group-lg mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">CPF</span>
                                    </div>
                                    <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="CPF">
                                </div>

                                <div class="input-group-lg mb-3">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text text-white" for="inputGroupSelect01" style="background-color: #1b4965;">Sexo:</label>
                                    </div>
                                    <select class="custom-select" name="sexo">
                                        <option selected> </option>
                                        <option value="M">Masculino</option>
                                        <option value="F">Feminino</option>
                                        <option value="I">Indefinido</option>
                                    </select>
                                </div>


                                <div class="input-group-lg mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Telefone:</span>
                                    </div>
                                    <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="telefone">
                                </div>


                                <div class="input-group-lg mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Data de Nascimento:</span>
                                    </div>
                                    <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="dataNas">
                                </div>
                            </div>
                        
                        <div class="d-flex justify-content-md-end">
                            <button class="btn btn-lg" onclick="$('.nav-pills a:last').tab('show');event.preventDefault()" style="background-color: #62b6cb; color: white;">Proximo</button>
                        </div>
                    </div>
                    

                    <div id="menu1" class="container tab-pane fade"><br>
                        <div class="form-group">
                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Email:</span>
                                </div>
                                <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="email">
                            </div>


                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text text-white" id="inputGroup-sizing-default" style="background-color: #1b4965;">Senha:</span>
                                </div>
                                <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-sm" name="senha">
                            </div>


                            <div class="input-group-lg mb-3">
                                <div class="input-group-prepend">
                                    <label class="input-group-text text-white" for="inputGroupSelect01" style="background-color: #1b4965;">Admin:</label>
                                </div>
                                <select class="custom-select" name="admin">
                                    <option selected> </option>
                                    <option value="true">Sim</option>
                                    <option value="false">Não</option>
                                </select>
                            </div>
                        </div>
                        
                        
                           
                        <div class="d-flex justify-content-between">
                             <button class="btn btn-lg" onclick="$('.nav-pills a:first').tab('show');event.preventDefault()" style="background-color: #62b6cb; color: white;">Anterior</button>
                            <button type="submit" class="btn btn-lg" style="background-color: #1b4965; color: white;">Adicionar Pessoa</button>
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