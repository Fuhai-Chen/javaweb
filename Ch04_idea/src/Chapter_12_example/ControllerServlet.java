package Chapter_12_example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ControllerServlet")
public class ControllerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /**
         * 接受用户登录请求信息，调用JavaBean组件对其进行验证，并根据结果调用JSP页面返回客户端
         */
        String username = request.getParameter("username");
        String paaaword = request.getParameter("password");
        UserBean user = new UserBean();
        user.setUsername(username);
        user.setPassword(paaaword);
        //利用JavaBean组件对其进行验证
        UserCheckBean userCheckBean = new UserCheckBean();
        boolean flag = userCheckBean.checkUser(user);
        if (flag) {
            //校验通过
            request.getRequestDispatcher("Chapter_12_example/welcome.jsp").forward(request,response);
        } else {
            //校验未通过
            request.getRequestDispatcher("Chapter_12_example/error.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
