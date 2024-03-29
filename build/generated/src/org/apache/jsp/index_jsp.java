package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/components/navBarComponent.jsp");
    _jspx_dependants.add("/components/footerComponent.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_end_begin;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_var_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_forEach_var_end_begin.release();
    _jspx_tagPool_c_when_test.release();
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
      out.write("\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta\n");
      out.write("            name=\"viewport\"\n");
      out.write("            content=\"width=device-width, initial-scale=1, shrink-to-fit=no\"\n");
      out.write("            />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"author\" content=\"\" />\n");
      out.write("        <title>Shop Car</title>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\n");
      out.write("        <!-- Font Awesome 5 CSS -->\n");
      out.write("        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>\n");
      out.write("        <!-- Favicon-->\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />\n");
      out.write("        <!-- Bootstrap icons-->\n");
      out.write("        <link\n");
      out.write("            href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\"\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            />\n");
      out.write("        <!-- Core theme CSS (includes Bootstrap)-->\n");
      out.write("        <link href=\"css/styles.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bg-image p-5 text-center shadow-1-strong rounded mb-5 text-white\"\n");
      out.write("          style=\"background-image: url('image/ab.jpg');\">\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Navigation-->\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("    <div class=\"container px-4 px-lg-5\">\n");
      out.write("\n");
      out.write("        <button\n");
      out.write("            class=\"navbar-toggler\"\n");
      out.write("            type=\"button\"\n");
      out.write("            data-bs-toggle=\"collapse\"\n");
      out.write("            data-bs-target=\"#navbarSupportedContent\"\n");
      out.write("            aria-controls=\"navbarSupportedContent\"\n");
      out.write("            aria-expanded=\"false\"\n");
      out.write("            aria-label=\"Toggle navigation\"\n");
      out.write("            >\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                    <img  src=\"image/car_logo.jpg\" width=\"60\" />\n");
      out.write("                </a>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link active\" aria-current=\"page\" href=\"home\">Home</a>\n");
      out.write("                </li>\n");
      out.write("               \n");
      out.write("                <li class=\"nav-item dropdown\">\n");
      out.write("                    <a\n");
      out.write("                        class=\"nav-link dropdown-toggle\"\n");
      out.write("                        id=\"navbarDropdown\"\n");
      out.write("                        href=\"#\"\n");
      out.write("                        role=\"button\"\n");
      out.write("                        data-bs-toggle=\"dropdown\"\n");
      out.write("                        aria-expanded=\"false\"\n");
      out.write("                        >Shop</a\n");
      out.write("                    >\n");
      out.write("                    <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                        <li><a class=\"dropdown-item\" href=\"listall\">All Products</a></li>\n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("            <form action=\"search\" class=\"d-flex mx-auto\">\n");
      out.write("                <input\n");
      out.write("                    class=\"form-control me-2\"\n");
      out.write("                    type=\"search\"\n");
      out.write("                    placeholder=\"Search\"\n");
      out.write("                    aria-label=\"Search\"\n");
      out.write("                    name=\"keyword\"\n");
      out.write("                    />\n");
      out.write("                <button class=\"btn btn-outline-success\" type=\"submit\">\n");
      out.write("                    Search\n");
      out.write("                </button>\n");
      out.write("            </form>\n");
      out.write("            <div class=\"d-flex my-2\">\n");
      out.write("                <a class=\"btn btn-outline-dark\" href=\"carts\">\n");
      out.write("                    <i class=\"bi-cart-fill me-1\"></i>\n");
      out.write("                    Cart\n");
      out.write("                    <span id=\"cart_number\" class=\"badge bg-info text-white ms-1 rounded-pill\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.carts.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("            ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("        <!-- Header-->\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <header class=\"bg-dark py-5\">\n");
      out.write("                <div id=\"carouselExampleControls\" class=\"carousel slide\" data-bs-ride=\"carousel\">\n");
      out.write("                    <div class=\"carousel-inner\">\n");
      out.write("                        <div class=\"carousel-item active\">\n");
      out.write("\n");
      out.write("                            <img src=\"image/xe.jpg\" class=\"d-block w-100\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"carousel-item\">\n");
      out.write("                            <img src=\"image/mazda2.jpg\" class=\"d-block w-100\" >\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"carousel-item\">\n");
      out.write("                            <img src=\"image\\ford.jpg\" class=\"d-block w-100\" >\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"prev\">\n");
      out.write("                        <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                        <span class=\"visually-hidden\">Previous</span>\n");
      out.write("                    </button>\n");
      out.write("                    <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"next\">\n");
      out.write("                        <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                        <span class=\"visually-hidden\">Next</span>\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Section-->\n");
      out.write("        <section class=\"py-5\">\n");
      out.write("            <div class=\"container px-4 px-lg-5 mt-5\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-3 mb-5\">\n");
      out.write("                        <h3>List Categories</h3>\n");
      out.write("                        <ul class=\"list-group\">\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-9\">\n");
      out.write("                        <h3>List Products</h3>\n");
      out.write("                        ");
      if (_jspx_meth_c_choose_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"container bg-white\">\n");
      out.write("                            <nav class=\"navbar navbar-expand-md navbar-light bg-white\">\n");
      out.write("                                <div class=\"container-fluid p-0\"> <a class=\"navbar-brand text-uppercase fw-800\" href=\"#\"><span class=\"border-red pe-2\">New</span>Product</a> <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#myNav\" aria-controls=\"myNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"> <span class=\"fas fa-bars\"></span> </button>\n");
      out.write("                                    <div class=\"collapse navbar-collapse\" id=\"myNav\">\n");
      out.write("                                        <div class=\"navbar-nav ms-auto\"> <a class=\"nav-link active\" aria-current=\"page\" href=\"#\">All</a> <a class=\"nav-link\" href=\"#\">Women's</a> <a class=\"nav-link\" href=\"#\">Men's</a> <a class=\"nav-link\" href=\"#\">Kid's</a> <a class=\"nav-link\" href=\"#\">Accessories</a> <a class=\"nav-link\" href=\"#\">Cosmetics</a> </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </nav>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3\">\n");
      out.write("                                    <div class=\"product\"> <img src=\"https://images.pexels.com/photos/54203/pexels-photo-54203.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" alt=\"\">\n");
      out.write("                                        <ul class=\"d-flex align-items-center justify-content-center list-unstyled icons\">\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-expand-arrows-alt\"></span></li>\n");
      out.write("                                            <li class=\"icon mx-3\"><span class=\"far fa-heart\"></span></li>\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-shopping-bag\"></span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tag bg-red\">sale</div>\n");
      out.write("                                    <div class=\"title pt-4 pb-1\">Winter Sweater</div>\n");
      out.write("                                    <div class=\"d-flex align-content-center justify-content-center\"> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> </div>\n");
      out.write("                                    <div class=\"price\">$ 60.0</div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3\">\n");
      out.write("                                    <div class=\"product\"> <img src=\"https://images.pexels.com/photos/6764040/pexels-photo-6764040.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" alt=\"\">\n");
      out.write("                                        <ul class=\"d-flex align-items-center justify-content-center list-unstyled icons\">\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-expand-arrows-alt\"></span></li>\n");
      out.write("                                            <li class=\"icon mx-3\"><span class=\"far fa-heart\"></span></li>\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-shopping-bag\"></span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tag bg-black\">out of stock</div>\n");
      out.write("                                    <div class=\"title pt-4 pb-1\">Denim Dresses</div>\n");
      out.write("                                    <div class=\"d-flex align-content-center justify-content-center\"> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> </div>\n");
      out.write("                                    <div class=\"price\">$ 55.0</div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3\">\n");
      out.write("                                    <div class=\"product\"> <img src=\"https://images.pexels.com/photos/914668/pexels-photo-914668.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" alt=\"\">\n");
      out.write("                                        <ul class=\"d-flex align-items-center justify-content-center list-unstyled icons\">\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-expand-arrows-alt\"></span></li>\n");
      out.write("                                            <li class=\"icon mx-3\"><span class=\"far fa-heart\"></span></li>\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-shopping-bag\"></span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tag bg-green\">new</div>\n");
      out.write("                                    <div class=\"title pt-4 pb-1\"> Empire Waist Dresses</div>\n");
      out.write("                                    <div class=\"d-flex align-content-center justify-content-center\"> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> </div>\n");
      out.write("                                    <div class=\"price\">$ 70.0</div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3\">\n");
      out.write("                                    <div class=\"product\"> <img src=\"https://images.pexels.com/photos/6311392/pexels-photo-6311392.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" alt=\"\">\n");
      out.write("                                        <ul class=\"d-flex align-items-center justify-content-center list-unstyled icons\">\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-expand-arrows-alt\"></span></li>\n");
      out.write("                                            <li class=\"icon mx-3\"><span class=\"far fa-heart\"></span></li>\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-shopping-bag\"></span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"title pt-4 pb-1\">Pinafore Dresses</div>\n");
      out.write("                                    <div class=\"d-flex align-content-center justify-content-center\"> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> </div>\n");
      out.write("                                    <div class=\"price\">$ 60.0</div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3\">\n");
      out.write("                                    <div class=\"product\"> <img src=\"https://images.pexels.com/photos/54203/pexels-photo-54203.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" alt=\"\">\n");
      out.write("                                        <ul class=\"d-flex align-items-center justify-content-center list-unstyled icons\">\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-expand-arrows-alt\"></span></li>\n");
      out.write("                                            <li class=\"icon mx-3\"><span class=\"far fa-heart\"></span></li>\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-shopping-bag\"></span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tag bg-red\">sale</div>\n");
      out.write("                                    <div class=\"title pt-4 pb-1\">Winter Sweater</div>\n");
      out.write("                                    <div class=\"d-flex align-content-center justify-content-center\"> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> </div>\n");
      out.write("                                    <div class=\"price\">$ 60.0</div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3\">\n");
      out.write("                                    <div class=\"product\"> <img src=\"https://images.pexels.com/photos/6764040/pexels-photo-6764040.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" alt=\"\">\n");
      out.write("                                        <ul class=\"d-flex align-items-center justify-content-center list-unstyled icons\">\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-expand-arrows-alt\"></span></li>\n");
      out.write("                                            <li class=\"icon mx-3\"><span class=\"far fa-heart\"></span></li>\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-shopping-bag\"></span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tag bg-black\">out of stock</div>\n");
      out.write("                                    <div class=\"title pt-4 pb-1\">Denim Dresses</div>\n");
      out.write("                                    <div class=\"d-flex align-content-center justify-content-center\"> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> </div>\n");
      out.write("                                    <div class=\"price\">$ 55.0</div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3\">\n");
      out.write("                                    <div class=\"product\"> <img src=\"https://images.pexels.com/photos/914668/pexels-photo-914668.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" alt=\"\">\n");
      out.write("                                        <ul class=\"d-flex align-items-center justify-content-center list-unstyled icons\">\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-expand-arrows-alt\"></span></li>\n");
      out.write("                                            <li class=\"icon mx-3\"><span class=\"far fa-heart\"></span></li>\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-shopping-bag\"></span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"title pt-4 pb-1\"> Empire Waist Dresses</div>\n");
      out.write("                                    <div class=\"d-flex align-content-center justify-content-center\"> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> </div>\n");
      out.write("                                    <div class=\"price\">$ 70.0</div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-lg-3 col-sm-6 d-flex flex-column align-items-center justify-content-center product-item my-3\">\n");
      out.write("                                    <div class=\"product\"> <img src=\"https://images.pexels.com/photos/6311392/pexels-photo-6311392.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500\" alt=\"\">\n");
      out.write("                                        <ul class=\"d-flex align-items-center justify-content-center list-unstyled icons\">\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-expand-arrows-alt\"></span></li>\n");
      out.write("                                            <li class=\"icon mx-3\"><span class=\"far fa-heart\"></span></li>\n");
      out.write("                                            <li class=\"icon\"><span class=\"fas fa-shopping-bag\"></span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tag bg-green\">new</div>\n");
      out.write("                                    <div class=\"title pt-4 pb-1\">Pinafore Dresses</div>\n");
      out.write("                                    <div class=\"d-flex align-content-center justify-content-center\"> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> <span class=\"fas fa-star\"></span> </div>\n");
      out.write("                                    <div class=\"price\">$ 60.0</div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div\n");
      out.write("                            class=\"row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center\"\n");
      out.write("                            >\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Footer-->\n");
      out.write("<footer class=\"py-5 bg-dark\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <p class=\"m-0 text-center text-white\">\n");
      out.write("            Phạm văn Trọng \n");
      out.write("            HE151489\n");
      out.write("        </p>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("<!-- Bootstrap core JS-->\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("<!-- Core theme JS-->\n");
      out.write("<script src=\"js/scripts.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js\"></script>\n");
      out.write("        <!-- Bootstrap 5 JS -->\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <!--         <script>\n");
      out.write("                                                            function addToCartAsync(productId) {\n");
      out.write("                                                                axios.get('add-to-cart-async', {\n");
      out.write("                                                                    params: {\n");
      out.write("                                                                        productId: productId\n");
      out.write("                                                                    }\n");
      out.write("                                                                }).then((response) => {\n");
      out.write("                                                                    //lấy data thanh công\n");
      out.write("                                                                    document.getElementById(\"cart_number\").innerHTML = response.data;\n");
      out.write("        \n");
      out.write("                                                                    //Cập nhật view\n");
      out.write("                                                                })\n");
      out.write("                                                            }\n");
      out.write("                </script>-->\n");
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

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    <button class=\"btn btn-outline-primary ms-lg-2\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.displayName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</button>\n");
        out.write("                     <a href=\"Logout\" class=\"btn btn-success-primary ms-lg-2\">Logout</a>\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    <a href=\"Login\" class=\"btn btn-success ms-lg-2\">Login</a>\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.listCategories}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("C");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                <li class=\"list-group-item\"><a href=\"filter-category?categoryId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${C.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_choose_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_1 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_1.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_1.setParent(null);
    int _jspx_eval_c_choose_1 = _jspx_th_c_choose_1.doStartTag();
    if (_jspx_eval_c_choose_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            ");
        if (_jspx_meth_c_when_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_1, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                            ");
        if (_jspx_meth_c_otherwise_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_1, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_choose_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_1);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_1);
    return false;
  }

  private boolean _jspx_meth_c_when_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_1 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_1.setPageContext(_jspx_page_context);
    _jspx_th_c_when_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_1);
    _jspx_th_c_when_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listProducts==null || listProducts.size()==0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_1 = _jspx_th_c_when_1.doStartTag();
    if (_jspx_eval_c_when_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                Not founds\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_when_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_1);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_1 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_1.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_1);
    int _jspx_eval_c_otherwise_1 = _jspx_th_c_otherwise_1.doStartTag();
    if (_jspx_eval_c_otherwise_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                <nav aria-label=\"Page navigation example\" class=\"d-flex justify-content-center\">\n");
        out.write("                                    <ul class=\"pagination\">\n");
        out.write("                                        <li class=\"page-item\"><a class=\"page-link\" href=\"home?page=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page-1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">Previous</a></li>\n");
        out.write("                                            ");
        if (_jspx_meth_c_forEach_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_otherwise_1, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                        <li class=\"page-item\"><a class=\"page-link\" href=\"home?page=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page+1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">Next</a></li>\n");
        out.write("                                    </ul>\n");
        out.write("                                </nav>\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_otherwise_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_1);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_otherwise_1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_otherwise_1);
    _jspx_th_c_forEach_1.setBegin(1);
    _jspx_th_c_forEach_1.setEnd(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${totalPage}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    _jspx_th_c_forEach_1.setVar("i");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <li class=\"page-item ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i == page?\"active\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"><a class=\"page-link\" href=\"home?page=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_end_begin.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listProducts}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("P");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                <div class=\"col mb-5\">\n");
          out.write("                                    ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${P.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                    <div class=\"card h-100\">\n");
          out.write("                                        <!-- Sale badge-->\n");
          out.write("                                        <div\n");
          out.write("                                            class=\"badge bg-dark text-white position-absolute\"\n");
          out.write("                                            style=\"top: 0.5rem; right: 0.5rem\"\n");
          out.write("                                            >\n");
          out.write("                                            Sale\n");
          out.write("                                        </div>\n");
          out.write("                                        <!-- Product image-->\n");
          out.write("                                        <a href=\"detail?productId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${P.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">\n");
          out.write("                                            <img\n");
          out.write("                                                class=\"card-img-top\"\n");
          out.write("                                                src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${P.imageUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"\n");
          out.write("                                                alt=\"...\"\n");
          out.write("                                                />\n");
          out.write("                                        </a>\n");
          out.write("                                        <!-- Product details-->\n");
          out.write("                                        <div class=\"card-body p-4\">\n");
          out.write("                                            <div class=\"text-center\">\n");
          out.write("                                                <!-- Product name-->\n");
          out.write("                                                <h5  class=\"text-dark\" class=\"fw-bolder\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${P.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h5>\n");
          out.write("                                                <!-- Product reviews-->\n");
          out.write("                                                <div\n");
          out.write("                                                    class=\"d-flex justify-content-center small text-warning mb-2\"\n");
          out.write("                                                    >\n");
          out.write("                                                    <div class=\"bi-star-fill\"></div>\n");
          out.write("                                                    <div class=\"bi-star-fill\"></div>\n");
          out.write("                                                    <div class=\"bi-star-fill\"></div>\n");
          out.write("                                                    <div class=\"bi-star-fill\"></div>\n");
          out.write("                                                    <div class=\"bi-star-fill\"></div>\n");
          out.write("                                                </div>\n");
          out.write("                                                <!-- Product price-->\n");
          out.write("                                                <span class=\"text-muted text-decoration-line-through\"\n");
          out.write("                                                      >$25.00</span\n");
          out.write("                                                >\n");
          out.write("                                                <div class=\"text-dark\" >$");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${P.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</div>\n");
          out.write("                                            </div>\n");
          out.write("                                        </div>\n");
          out.write("                                        <!-- Product actions-->\n");
          out.write("                                        <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
          out.write("                                            <div class=\"text-center\">\n");
          out.write("                                                <a class=\"btn btn-outline-dark mt-auto\" \n");
          out.write("                                                   >Add to cart</a\n");
          out.write("                                                >\n");
          out.write("                                            </div>\n");
          out.write("                                        </div>\n");
          out.write("                                    </div>\n");
          out.write("                                </div>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }
}
