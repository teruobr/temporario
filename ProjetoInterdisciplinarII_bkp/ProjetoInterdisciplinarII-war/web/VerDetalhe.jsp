<%-- 
    Document   : VerDetalhe
    Created on : 12/10/2012, 19:12:34
    Author     : Felipe
--%>

<%@page import="bean.Empresa"%>
<%@page import="java.util.List"%>
<%@page import="bean.Vagas"%>
<%@page import="bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Estilo.css" type="text/css">
        <title>Detalhes Vaga</title>
    </head>
    <body>
        <%
        
        Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
        Vagas vaga = (Vagas) request.getSession().getAttribute("vaga");
        Empresa empresa = (Empresa) request.getSession().getAttribute("empresa");
       /*/ 
       request.getSession().setAttribute("usuario",usuario);
       request.getSession().setAttribute("vaga",vaga);
       request.getSession().setAttribute("empresa",empresa);*/
        
        
            %>
        <jsp:include page="MenuLogado.jsp"/>
        <h2>Detalhe Vaga</h2>
        <form action="CandidatarUsuario">
        <table>
            <tr><td>Empresa:</td> <td><%=empresa.getNome() %></td> </tr>
            <tr><td>CNPJ:</td> <td><%=empresa.getCnpj() %></td> </tr>
            
            <tr><td>Titulo da Vaga:</td> <td><%=vaga.getTitulo() %></td> </tr>
            <tr><td>Descrição da Vaga:</td> <td><%=vaga.getDetalhe() %></td> </tr>
            <tr><td>N&iacute;vel de Atua&ccedil;&atilde;o:</td> <td><%=vaga.getNivelAtuacao() %></td> </tr>
            <tr><td>&Aacute;rea de Atua&ccedil;&atilde;o::</td> <td><%=vaga.getAreaAtuacao() %></td> </tr>
            <tr><td>Estado:</td> <td><%=vaga.getEstado() %></td> </tr>
            <tr><td>Data t&eacute;rmino de candidatura:</td> <td><%=vaga.getDataFinal() %></td> </tr>
           <td></br>
               <a href="Vagas.jsp">
                            Voltar
                        </a>
                    </td>
                    <td> &nbsp;</td>
                    <td> <input type="submit" value="Candidatar-se" /> </td>
                </tr>
            </table>
                     
        </form>
        
    </body>
</html>
