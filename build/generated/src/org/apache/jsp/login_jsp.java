package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta\n");
      out.write("            name=\"viewport\"\n");
      out.write("            content=\"width=device-width, initial-scale=1, shrink-to-fit=no\"\n");
      out.write("            />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"author\" content=\"\" />\n");
      out.write("        <title>Shop Bedding - Login</title>\n");
      out.write("        <!-- Favicon-->\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />\n");
      out.write("        <!-- Bootstrap icons-->\n");
      out.write("        <link\n");
      out.write("            href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\"\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            />\n");
      out.write("        <!-- Core theme CSS (includes Bootstrap)-->\n");
      out.write("        <link href=\"css/styles.css\" rel=\"stylesheet\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section class=\"vh-100\"  style=\"background-image: url('image/in.jpg');\">\n");
      out.write("            <div class=\"container py-5 h-100\">\n");
      out.write("                <div class=\"row d-flex justify-content-center align-items-center h-100\">\n");
      out.write("                    <div class=\"col col-xl-10\">\n");
      out.write("                        <div class=\"card\" style=\"border-radius: 1rem;\">\n");
      out.write("                            <div class=\"row g-0\">\n");
      out.write("                                <div class=\"col-md-6 col-lg-5 d-none d-md-block\">\n");
      out.write("                                    <img\n");
      out.write("                                        src=\"image/car_logo.jpg\"\n");
      out.write("                                        alt=\"login form\"\n");
      out.write("                                        class=\"img-fluid\" style=\"border-radius: 1rem 0 0 1rem;\"\n");
      out.write("                                        />\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-6 col-lg-7 d-flex align-items-center\">\n");
      out.write("                                    <div class=\"card-body p-4 p-lg-5 text-black\">\n");
      out.write("\n");
      out.write("                                        <form action=\"login\" method=\"POST\">\n");
      out.write("\n");
      out.write("                                            <div class=\"d-flex align-items-center mb-3 pb-1\">\n");
      out.write("                                                <i class=\"fas fa-cubes fa-2x me-3\" style=\"color: #ff6219;\"></i>\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <h5 class=\"fw-normal mb-3 pb-3\" style=\"letter-spacing: 1px;\">Sign into your account</h5>\n");
      out.write("\n");
      out.write("                                            <div class=\"form-outline mb-4\">\n");
      out.write("                                                <input name=\"username\" type=\"text\" id=\"username\" class=\"form-control form-control-lg \" />\n");
      out.write("                                                <label class=\"form-label\" for=\"username\">Username</label>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"form-outline mb-4\">\n");
      out.write("                                                <input name=\"password\" type=\"password\" id=\"password\" class=\"form-control form-control-lg\" />\n");
      out.write("                                                <label class=\"form-label\" for=\"password\">Password</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"mb-3 form-check\">\n");
      out.write("                                                <input type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck1\" name=\"remember\">\n");
      out.write("                                                <label class=\"form-check-label\" for=\"exampleCheck1\">Remember me</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"pt-1 mb-4\">\n");
      out.write("                                                <h3 class=\"text-danger\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${error}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\n");
      out.write("                                                <button class=\"btn btn-dark btn-lg btn-block\" type=\"submit\">Login</button>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <!--                  <a class=\"small text-muted\" href=\"#!\">Forgot password?</a>\n");
      out.write("                                                              <p class=\"mb-5 pb-lg-2\" style=\"color: #393f81;\">Don't have an account? <a href=\"#!\" style=\"color: #393f81;\">Register here</a></p>\n");
      out.write("                                                              <a href=\"#!\" class=\"small text-muted\">Terms of use.</a>\n");
      out.write("                                                              <a href=\"#!\" class=\"small text-muted\">Privacy policy</a>-->\n");
      out.write("                                        </form>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core JS-->\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <!-- Core theme JS-->\n");
      out.write("        <script src=\"js/scripts.js\"></script>\n");
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
