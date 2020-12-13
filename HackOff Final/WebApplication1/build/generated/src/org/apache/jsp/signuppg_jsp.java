package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signuppg_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Sign Up</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"signpg.css\">\n");
      out.write("    </head>\n");
      out.write("    <br>\n");
      out.write("    <center>\n");
      out.write("        <img class=\"sign\" src=\"SIGN-UP.png\">\n");
      out.write("    </center>\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("    <form name = \"hackform\" action = \"signupintermediate.jsp\" method = \"POST\">\n");
      out.write("        <table width=\"100%\">\n");
      out.write("\n");
      out.write("            <tr><td width=\"33%\">\n");
      out.write("                    <div class=\"name\">Name</div>\n");
      out.write("                    <input type=\"text\" class=\"namebox\" placeholder=\"Enter Name\" name=\"name\" >\n");
      out.write("                    <div class=\"name\">Registration number</div>\n");
      out.write("                    <input type=\"text\" class=\"namebox\" placeholder=\"Enter Registration number\" name = \"regno\">\n");
      out.write("                    <div class=\"name\">VIT e-mail</div>\n");
      out.write("                    <input type=\"text\" class=\"namebox\" placeholder=\"Enter VIT Email id\" name = \"email\">\n");
      out.write("                    <div class=\"name\">Phone number</div>\n");
      out.write("                    <input type=\"text\" class=\"namebox\" placeholder=\"Enter mobile number\" name = \"phone\">\n");
      out.write("                </td>\n");
      out.write("                <td width=\"33%\">\n");
      out.write("                    <div class=\"name\">Password</div>\n");
      out.write("                    <input type=\"password\" class=\"namebox\" placeholder=\"Enter a password\" name = \"password\">\n");
      out.write("                    <div class=\"name\">Confirm Password</div>\n");
      out.write("                    <input type=\"password\" class=\"namebox\" placeholder=\"Confirm password\" name = \"passwordconfirm\">\n");
      out.write("                </td>\n");
      out.write("                <td width=\"33%\" style=\"text-align:center\">\n");
      out.write("                    <div class=\"name\">Address</div>\n");
      out.write("                    <textarea rows=\"4\" cols=\"40\" class=\"boxy\" placeholder=\"Enter your Address\" name = \"address\"></textarea>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        <center><button class=\"btnn\" type = \"submit\">Sign-Up</button></center>\n");
      out.write("    </form>\n");
      out.write("</body>\n");
      out.write("</html>");
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
