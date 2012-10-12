<%-- 
    Document   : Vagas
    Created on : 12/10/2012, 17:26:42
    Author     : Felipe
--%>

<%@page import="bean.Vagas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Estilo.css" type="text/css">
        <title>Vagas</title>
    </head>
    <body>
        <jsp:include page="MenuLogado.jsp"/>
        <h2>Pesquisar Vagas</h2>
        
        <%
        List<Vagas> listaVagas = (List<Vagas>) request.getSession().getAttribute("listaVagas");
        
            %>
        <form action="PesquisaVaga" name="form" method="post" >
            <table>
                <tr><td>Titulo:</td> <td>
                        <input type="txt" name="txtTitulo"/>
                    </td> </tr>
                <tr>
                    <td>
                        &Aacute;rea de Atua&ccedil;&atilde;o:
                    </td>
                    <td>
                        <select name="lstArea" >
                            <option value="Selecione">Selecione</option>
                            <option value="Analise">Analise</option>
                            <option value="Doc�ncia e Pesquisa">Doc&ecirc;ncia e Pesquisa</option>
                            <option value="Empres�rio">Empres&aacute;rio</option>
                            <option value="Ger�ncia">Gerencia</option>
                            <option value="Programa��o">Programa&ccedil;&atilde;o</option>
                            <option value="Redes">Redes</option>

                        </select>
                    </td>
                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        N&iacute;vel de Atua&ccedil;&atilde;o:
                    </td>
                    <td>
                        <select name="lstNivel" >
                            <option value="Selecione">Selecione</option>
                            <option value="T�cnico">T&eacute;cnico</option>
                            <option value="Estagi�rio">Estagi&aacute;rio</option>
                            <option value="J�nior">J&uacute;nior</option>
                            <option value="Pleno">Pleno</option>
                            <option value="Senior">Senior</option>
                            <option value="Gerente">Gerente </option>
                        </select>
                    </td>

                </tr>

                <tr>

                    <td>
                        Estado:
                    </td>
                    <td>
                        <select name="lstEstado" >
                            <option value="Selecione">Selecione</option>
                            <option value="SP">S&atilde;o Paulo </option>
                        </select>
                    </td>
                    <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        Cidade:
                    </td>
                    <td>
                        <select name="lstCidade" >
                            <option value="Selecione">Selecione</option>
                            <option value="S�o Paulo">S&atilde;o Paulo</option>
                            <option value="Santo Andr�">Santo Andr&eacute;</option>
                            <option value="S�o Bernardo do Campo">S&atilde;o Bernardo do Campo</option>
                            <option value="S�o Caetano do Sul">S&atilde;o Caetano do Sul</option>
                        </select>
                    </td>
                </tr>
                </br>
                <tr><td> &nbsp;</td><td> &nbsp;</td><td> &nbsp;</td> <td> &nbsp;</td><td> &nbsp;</td><td> &nbsp;</td> 

                    <td>
                        <input type="submit" value="Pesquisar"/>
                    </td></tr> 

            </table>
        </form>

        <table border ="2p">
            <tr>
                <td>
                    Empresa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    &Aacute;rea &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    N&iacute;vel &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>

                <td>
                    Estado &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>

                <td>
                    Cidade &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    Descri&ccedil;&atilde;o &nbsp;&nbsp;
                </td>

            </tr>
            
            <%
            if(listaVagas != null && !listaVagas.isEmpty()){
                for (int i = 0; i < listaVagas.size(); i++) {
                        %>
             <TR> <TD><%=String.valueOf(listaVagas.get(i).getIdEmpresa())%></TD>
                <TD><%=String.valueOf(listaVagas.get(i).getAreaAtuacao())%></TD>
                <TD><%=String.valueOf(listaVagas.get(i).getNivelAtuacao())%></TD>
                <TD><%=String.valueOf(listaVagas.get(i).getEstado())%></TD>
                <TD><%=String.valueOf(listaVagas.get(i).getCidade())%></TD>
                <TD><a href ="VerDetalhe.jsp?ID=<%=listaVagas.get(i).getId()%>&IDEMPRESA=<%=listaVagas.get(i).getIdEmpresa()%>"> Mais Informa��es </a></td>
            </TR> 
            
            <%}}%>
        

        </table>
    </body>
</html>
