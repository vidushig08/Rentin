package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class first_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\" />\n");
      out.write("\n");
      out.write("        <!--Linking CSS-->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("\n");
      out.write("        <!--Google Fonts-->\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!--Title and Logo-->\n");
      out.write("        <title>Rentin'</title>\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"assets/logo.svg\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <div class=\"first\">\n");
      out.write("        <img src=\"assets/first-page/icons logo.png\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"second\">\n");
      out.write("        <img src=\"assets/first-page/logo final.svg\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"third\">\n");
      out.write("        <a href=\"login.jsp\">\n");
      out.write("            <button><img src=\"assets/first-page/LOGIN.png\"></button>\n");
      out.write("        </a>\n");
      out.write("        <a href=\"signuppg.jsp\">\n");
      out.write("            <button class=\"signup\"><img src=\"assets/first-page/SIGN-UP.png\"></button>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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
