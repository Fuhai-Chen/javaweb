package Chapter_10_example;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 使用Servlet定义初始化参数的原因：实现数据与代码的分离，便于维护。
 */
public class ServletConfigDemo01 extends HttpServlet {

    private ServletConfig config;//定义成员变量

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        this.config = config;//将config传值给成员变量
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charSet=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<body>");
        out.println(config.getInitParameter("para1"));
        out.println("</body>");
        out.println("</htnl>");
    }
}
