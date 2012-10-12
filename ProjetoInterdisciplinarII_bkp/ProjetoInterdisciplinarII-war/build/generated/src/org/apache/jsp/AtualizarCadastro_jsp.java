package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bean.Usuario;
import bean.Usuario_;

public final class AtualizarCadastro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Estilo.css\" type=\"text/css\">\n");
      out.write("        <title>Cadastro de novo usu�rio</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");


            Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
            String email = usuario.getEmail();
            String nome = usuario.getNome();
            String rg = usuario.getRg();
            String sexo = usuario.getSexo();
            String estado = usuario.getEstado();
            String cidade = usuario.getCidade();
            String bairro = usuario.getBairro();
            String endereco = usuario.getEndereco();
            String DDDcelular = usuario.getDddcelular();            
            String celular = usuario.getCelular();
            String DDDtelefone = usuario.getDddtelefone();  
            String telefone = usuario.getTelefone();
            String escolaridade = usuario.getEscolaridade();
            String nivel = usuario.getNivel();
            String area = usuario.getArea();
            String faculdade = usuario.getFaculdade();
            String curso = usuario.getCurso();
        
      out.write("\n");
      out.write("        <form action=\"AtualizaCadastro\" >\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "MenuLogado.jsp", out, false);
      out.write("\n");
      out.write("            <h1>Atualizar Dados Cadastrais</h1> \n");
      out.write("            <br>\n");
      out.write("            Preencha os campos abaixo para atualizar o seu cadastro. \n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        RG:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input  value=\"");
      out.print(rg);
      out.write("\" type=\"text\" name=\"txtRg\" required=\"true\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        Estado:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"lstEstado\" required=\"true\">\n");
      out.write("                            <option value=\"\">Selecione</option>\n");
      out.write("                            <option value=\"SP\">S&atilde;o Paulo </option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        Cidade:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"lstCidade\" required=\"true\">\n");
      out.write("                            <option value=\"\">Selecione</option>\n");
      out.write("                            <option value=\"São Paulo\">S&atilde;o Paulo</option>\n");
      out.write("                            <option value=\"Santo André\">Santo Andr&eacute;</option>\n");
      out.write("                            <option value=\"São Bernardo do Campo\">S&atilde;o Bernardo do Campo</option>\n");
      out.write("                            <option value=\"São Caetano do Sul\">S&atilde;o Caetano do Sul</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        Bairro:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input value=\"");
      out.print(bairro);
      out.write("\" type=\"text\" name=\"txtBairro\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        Endereço:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input value=\"");
      out.print(endereco);
      out.write("\" type=\"text\" name=\"txtEndereco\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        Celular:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        (<input value=\"");
      out.print(DDDcelular);
      out.write("\" type=\"text\" name=\"txtDDDCel\" maxlength=\"2\" size=\"1\" />) <input value=\"");
      out.print(celular);
      out.write("\" type=\"text\" name=\"txtCel\" maxlength=\"9\" size=\"7\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        Telefone:\n");
      out.write("                    </td><td>\n");
      out.write("                        (<input value=\"");
      out.print(DDDtelefone);
      out.write("\" type=\"text\" name=\"txtDDDTel\" maxlength=\"2\" size=\"1\" />) <input value=\"");
      out.print(telefone);
      out.write("\" type=\"text\" name=\"txtTel\" maxlength=\"8\" size=\"7\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        Grau de Escolaridade:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"lstEscolaridade\" required=\"true\">\n");
      out.write("                            <option value=\"\">Selecione</option>\n");
      out.write("                            <option value=\"Tecnico\">T&eacute;cnico</option>\n");
      out.write("                            <option value=\"Superior Incompleto\">Superior Incompleto</option>\n");
      out.write("                            <option value=\"Superior Completo\">Superior Completo</option>\n");
      out.write("                            <option value=\"Pós-Graduado\">P&oacute;s-Graduado</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        Nível de Atuação:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"lstNivel\" required=\"true\">\n");
      out.write("                            <option value=\"\">Selecione</option>\n");
      out.write("                            <option value=\"Técnico\">T&eacute;cnico</option>\n");
      out.write("                            <option value=\"Estagiário\">Estagi&aacute;rio</option>\n");
      out.write("                            <option value=\"Júnior\">J&uacute;nior</option>\n");
      out.write("                            <option value=\"Pleno\">Pleno</option>\n");
      out.write("                            <option value=\"Senior\">Senior</option>\n");
      out.write("                            <option value=\"Gerente\">Gerente </option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        Faculdade:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"lstFaculdade\" required=\"true\">\n");
      out.write("                            <option value=\"\">Selecione</option>\n");
      out.write("                            <option value=\"Mackenzie\">Universidade Mackenzie</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        �rea de Atua��o:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"lstArea\" required=\"true\">\n");
      out.write("                            <option value=\"\">Selecione</option>\n");
      out.write("                            <option value=\"Analise\">Analise</option>\n");
      out.write("                            <option value=\"Doc�ncia e Pesquisa\">Doc�ncia e Pesquisa</option>\n");
      out.write("                            <option value=\"Empres�rio\">Empres�rio</option>\n");
      out.write("                            <option value=\"Ger�ncia\">Gerencia</option>\n");
      out.write("                            <option value=\"Programa��o\">Programa��o</option>\n");
      out.write("                            <option value=\"Redes\">Redes</option>\n");
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        Curso:\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"lstCurso\" required=\"true\">\n");
      out.write("                            <option value=\"\">Selecione</option>\n");
      out.write("                            <option value=\"SI\">Sistemas de Informa��o</option>\n");
      out.write("                            <option value=\"CC\">Ci�ncias da Computa��o</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr> </br> </tr>\n");
      out.write("                <tr>\n");
      out.write("\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"MeusDados.jsp\">\n");
      out.write("                            <input type=\"button\" value=\"Voltar\"/>\n");
      out.write("                        </a>\n");
      out.write("                        <input type=\"submit\" value=\"Finalizar\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
