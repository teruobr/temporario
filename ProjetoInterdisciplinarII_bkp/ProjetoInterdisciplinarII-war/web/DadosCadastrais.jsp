<%-- 
    Document   : DadosCadastrais
    Created on : 30/08/2012, 11:56:54
    Author     : Teruo
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Estilo.css" type="text/css">
        <title>Cadastro de novo usu�rio</title>
    </head>
    <body>
        <%
            String nome = (String) request.getAttribute("txtNome");
            String email = (String) request.getAttribute("txtEmail");
            String senha = (String) request.getAttribute("txtSenha");
            if (nome != null) {
                session.setAttribute("nome", nome);
            }
            if (email != null) {
                session.setAttribute("email", email);
            }
            if (senha != null) {
                session.setAttribute("senha", senha);
            }
        %>
        <form action="CadastraCompleto" >
            <jsp:include page="header.jsp"/>
            <h1>Dados Cadastrais</h1>
            <br>
            Preencha os campos abaixo para finalizar o seu cadastro.
            <table>
                <tr>
                    <td>
                        RG:
                    </td>
                    <td>
                        <input  type="text" name="txtRg" required="true"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Sexo:
                    </td>
                    <td>
                        <select name="lstSexo">
                            <option value="Masculino">Masculino</option>
                            <option value="Feminino">Feminino</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Estado:
                    </td>
                    <td>
                        <select name="lstEstado">
                            <option value="SP">S�o Paulo </option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Cidade:
                    </td>
                    <td>
                        <select name="lstCidade">
                            <option value="S�o Paulo">S�o Paulo</option>
                            <option value="Santo Andr�">Santo Andr�</option>
                            <option value="S�o Bernardo do Campo">S�o Bernardo do Campo</option>
                            <option value="S�o Caetano do Sul">S�o Caetano do Sul</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Bairro:
                    </td>
                    <td>
                        <input type="text" name="txtBairro"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Endere�o:
                    </td>
                    <td>
                        <input type="text" name="txtEndereco"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Celular:
                    </td>
                    <td>
                        (<input type="text" name="txtDDDCel" maxlength="2" size="1" />) <input type="text" name="txtCel" maxlength="9" size="7"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Telefone:
                    </td><td>
                        (<input type="text" name="txtDDDTel" maxlength="2" size="1" />) <input type="text" name="txtTel" maxlength="8" size="7"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Grau de Escolaridade:
                    </td>
                    <td>
                        <select name="lstEscolaridade" required="true">
                            <option value="">Selecione</option>
                            <option value="Tecnico">T�cnico</option>
                            <option value="Superior Incompleto">Superior Incompleto</option>
                            <option value="Superior Completo">Superior Completo</option>
                            <option value="P�s-Graduado">P�s-Graduado</option>
                        </select>
                    </td>
                    <td>
                        N�vel de Atua��o:
                    </td>
                    <td>
                        <select name="lstNivel" required="true">
                            <option value="">Selecione</option>
                            <option value="T�cnico">T�cnico</option>
                            <option value="Estagi�rio">Estagi�rio</option>
                            <option value="J�nior">J�nior</option>
                            <option value="Pleno">Pleno</option>
                            <option value="Senior">Senior</option>
                            <option value="Gerente">Gerente </option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Faculdade:
                    </td>
                    <td>
                        <select name="lstFaculdade" required="true">
                            <option value="">Selecione</option>
                            <option value="Mackenzie">Universidade Mackenzie</option>
                        </select>
                    </td>
                    <td>
                        �rea de Atua��o:
                    </td>
                    <td>
                        <select name="lstArea" required="true">
                            <option value="">Selecione</option>
                            <option value="Analise">Analise</option>
                            <option value="Doc�ncia e Pesquisa">Doc�ncia e Pesquisa</option>
                            <option value="Empres�rio">Empres�rio</option>
                            <option value="Ger�ncia">Gerencia</option>
                            <option value="Programa��o">Programa��o</option>
                            <option value="Redes">Redes</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        Curso:
                    </td>
                    <td>
                        <select name="lstCurso" required="true">
                            <option value="">Selecione</option>
                            <option value="SI">Sistemas de Informa��o</option>
                            <option value="CC">Ci�ncias da Computa��o</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="float:right;">
                        <input type="submit" value="Finalizar" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

