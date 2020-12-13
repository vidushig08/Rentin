package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class landing_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"navbar.css\" />\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"landing.css\" />\n");
      out.write("\n");
      out.write("        <!--Google Fonts-->\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!--Title and Logo-->\n");
      out.write("        <title>Rentin'</title>\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"assets/first-page/logo.svg\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <!--NAVBAR Starts-->\n");
      out.write("            <nav class=\"nav-active\" id=\"navbar\">\n");
      out.write("                <!-- Logo in Navbar -->\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <a href=\"index.html\" style=\"text-decoration: none; color: #F3EAC2\">\n");
      out.write("                        <h4><img src=\"assets/navbar/rupee.png\" class=\"rupee-logo\">entin'</h4>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <!--Search Tab in Navbar-->\n");
      out.write("                <form autocomplete=\"off\" onsubmit=\"return getCity(event);\">\n");
      out.write("                    <input class=\"search-tab\" placeholder=\"Search ...\" type=\"text\" id=\"\">\n");
      out.write("                </form>\n");
      out.write("                <!-- Nav Links -->\n");
      out.write("                <ul class=\"navlinks\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"index.html\" class=\"home nav-link nav-link-grow-up\" id=\"active\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"categories.html\" class=\"categories nav-link nav-link-grow-up\">Categories</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"profile.html\" class=\"myprofile nav-link nav-link-grow-up\"><img class=\"user\" src=\"assets/navbar/profile.svg\"> My Profile</a>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                    <!--Add Buttons-->\n");
      out.write("                    <a href=\"upload.html\"><button class=\"rent-sell\" >&nbsp; + RENT/SELL &nbsp;</button></a> \n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("            <!--NAVBAR Ends-->\n");
      out.write("\n");
      out.write("            <!--Landing Page-->\n");
      out.write("\n");
      out.write("            <div class=\"homepage\">\n");
      out.write("                <img class=\"circle\" src=\"assets/landing page/Ellipse 1.png\">\n");
      out.write("                <img class=\"coins\" src=\"assets/landing page/coins.gif\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"about\">\n");
      out.write("                <img class=\"about-info\" src=\"assets/landing page/about info.png\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"categories\">\n");
      out.write("                <h2 style=\"color: #303960; font-size: 60px; padding-bottom: 40px;\">CATEGORIES</h2>\n");
      out.write("                <div class=\"flip-card\">\n");
      out.write("                    <div class=\"flip-card-inner\">\n");
      out.write("\n");
      out.write("                        <div class=\"flip-card-front\">\n");
      out.write("                            <img src=\"assets/landing page/education.png\" style=\"width:250px; height:290px;\">\n");
      out.write("                            <h2 class=\"category-heading\">EDUCATION</h2>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"flip-card-back\">\n");
      out.write("                            <br><br><br><br>\n");
      out.write("                            <p class=\"category-info\">Books, Stationery, Labcoats and more...</p>\n");
      out.write("                            <br>\n");
      out.write("                            <button class=\"interested\">Interested</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"flip-card\">\n");
      out.write("                    <div class=\"flip-card-inner\">\n");
      out.write("\n");
      out.write("                        <div class=\"flip-card-front\">\n");
      out.write("                            <img src=\"assets/landing page/appliances.png\" style=\"width:250px; height:290px;\">\n");
      out.write("                            <h2 class=\"category-heading\">APPLIANCES</h2>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"flip-card-back\">\n");
      out.write("                            <br><br><br><br>\n");
      out.write("                            <p class=\"category-info\">Kettles, Irons, Hair Driers and more...</p>\n");
      out.write("                            <br>\n");
      out.write("                            <button class=\"interested\">Interested</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"flip-card\">\n");
      out.write("                    <div class=\"flip-card-inner\">\n");
      out.write("\n");
      out.write("                        <div class=\"flip-card-front\">\n");
      out.write("                            <img src=\"assets/landing page/entertainment.png\" style=\"width:250px; height:290px;\">\n");
      out.write("                            <h2 class=\"category-heading\">ENTERTAINMENT</h2>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"flip-card-back\">\n");
      out.write("                            <br><br><br><br>\n");
      out.write("                            <p class=\"category-info\">Cameras, Speakers, Cards and more...</p>\n");
      out.write("                            <br>\n");
      out.write("                            <button class=\"interested\">Interested</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"flip-card\">\n");
      out.write("                    <div class=\"flip-card-inner\">\n");
      out.write("\n");
      out.write("                        <div class=\"flip-card-front\">\n");
      out.write("                            <img src=\"assets/landing page/personal.png\" style=\"width:250px; height:290px;\">\n");
      out.write("                            <h2 class=\"category-heading\">PERSONAL</h2>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"flip-card-back\">\n");
      out.write("                            <br><br><br><br>\n");
      out.write("                            <p class=\"category-info\">Bicycles, Accessories, Football and more...</p>\n");
      out.write("                            <br>\n");
      out.write("                            <button class=\"interested\">Interested</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("    </body>\n");
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
