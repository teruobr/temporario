<%-- 
    Document   : Cadastro
    Created on : 23/08/2012, 00:07:40
    Author     : Teruo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Estilo.css" type="text/css">
        <title>Cadastro de novo usuário</title>
    </head>

    <script type="text/javascript" >
        function validarSenha(){
            var senha = document.f1.txtSenha.value;
            var cSenha = document.f1.txtConfirmaSenha.value;

            if (senha != cSenha) {
                alert("Senha não confere!!!");
                return false;
            }
               return true;
        }
    </script>
    <body>
        <form action="CadastraUsuario" name="f1">
            <jsp:include page="header.jsp"/>
            <h1>Cadastro</h1>
            <br>
            Preencha os campos abaixo para criar um cadastro.
            <table>
                <tr>
                    <td>
                        Nome:
                    </td>
                    <td>
                        <input type="text" name="txtNome" required="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        E-mail:
                    </td>
                    <td>
                        <input type="text" name="txtEmail" required="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Senha:
                    </td>
                    <td>
                        <input type="password" name="txtSenha" required="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Confirmar senha:
                    </td>
                    <td>
                        <input type="password" name="txtConfirmaSenha" required="true" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="Login.jsp">
                            Voltar 
                        </a>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <input type="submit" value="Enviar" onclick="if(validarSenha()) return true; else return false;"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
