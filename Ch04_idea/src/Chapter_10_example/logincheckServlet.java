package Chapter_10_example;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class logincheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        if (userName.equals("admin") && password.equals("123")){
            response.sendRedirect("index.jsp"); //重定向
        }else {
            request.setAttribute("message","username or password invalid");
            request.getRequestDispatcher("/Ch04_idea_war_exploded/loginsuccess.jsp").forward(request,response);
//            getRequestDispatcher()是获得请求的一个转发器，参数是路径
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
