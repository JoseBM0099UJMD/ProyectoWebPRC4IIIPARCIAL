package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import sv.edu.ujmd.controlador.Pacientes;

public final class CRUDPacientes_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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

      out.write("    Document   : CRUDPacientes\n");
      out.write("    Created on : 06-01-2023, 07:42:53 PM\n");
      out.write("    Author     : Alejandro Bautista\n");
      out.write("--%>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>CRUD de Pacientes</title>\n");
      out.write("          <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" \n");
      out.write("              integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" \n");
      out.write("        integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" \n");
      out.write("        integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" \n");
      out.write("        integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <h1>CRUD de Pacientes</h1>\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("    ");
 String message = (String) request.getAttribute("message"); 
      out.write("\n");
      out.write("    ");
 if (message != null && !message.isEmpty()) { 
      out.write("\n");
      out.write("        <p>");
      out.print( message );
      out.write("</p>\n");
      out.write("    ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("    <h2>Agregar/Editar Paciente</h2>\n");
      out.write("    <form action=\"crearpaciente.jsp\" method=\"post\">\n");
      out.write("        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Nombre\" placeholder=\"Nombre\" name=\"Nombre\" >\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Apellido\" placeholder=\"Apellido\" name=\"Apellido\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Edad\" placeholder=\"Edad\" name=\"Edad\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Peso\" placeholder=\"Peso\" name=\"Peso\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Fec_Nac\" placeholder=\"Fecha de Nacimiento\" name=\"Fec_Nac\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Padecimiento\" placeholder=\"Padecimiento\" name=\"Padecimiento\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Tipo_Sangre\" placeholder=\"Tipo de Sangre\" name=\"Tipo_Sangre\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Nom_Padres\" placeholder=\"Responsable\" name=\"Nom_Padres\" >\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <button class=\"btn btn-primary\" type=\"submit\">Guardar</button>\n");
      out.write("                        </div>\n");
      out.write("        </form>    \n");
      out.write("        \n");
      out.write("        <form action=\"modificarpaciente.jsp\" method=\"put\">\n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"idPacienteM\" placeholder=\"ID Paciente\" name=\"idPacienteM\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"NombreM\" placeholder=\"Nombre\" name=\"NombreM\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"ApellidoM\" placeholder=\"Apellido\" name=\"ApellidoM\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"EdadM\" placeholder=\"Edad\" name=\"EdadM\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"PesoM\" placeholder=\"Peso\" name=\"PesoM\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Fec_NacM\" placeholder=\"Fecha de Nacimiento\" name=\"Fec_NacM\" >\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"PadecimientoM\" placeholder=\"Padecimiento\" name=\"PadecimientoM\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Tipo_SangreM\" placeholder=\"Tipo de Sangre\" name=\"Tipo_SangreM\" >\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("                        <div class=\"form-group\">                            \n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"Nom_PadresM\" placeholder=\"Responsable\" name=\"Nom_PadresM\" >\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <button class=\"btn btn-primary\" type=\"submit\">Modificar</button>\n");
      out.write("                        </div>\n");
      out.write(" \n");
      out.write("    </form>\n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
