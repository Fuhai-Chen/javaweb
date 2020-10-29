package Chapter_9_example;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;

public class Login extends HttpServlet {
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html;charest=utf-8");
        PrintWriter out = res.getWriter();

        out.print("<html>");
        out.print("<head><title>用户登录界面</head></title>");
        out.println("<body>");
        out.println("<form action = '/loginControl'>");

        out.println("</body>");



        out.print("</html>");
    }
}
