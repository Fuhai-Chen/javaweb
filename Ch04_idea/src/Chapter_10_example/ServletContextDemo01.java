package Chapter_10_example;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *  ServletContext实例1：获取web应用的初始化参数
 */
public class ServletContextDemo01 extends HttpServlet {

    private ServletConfig config;

    /**
     * 通过初始化函数传值获取 ServletConfig对象。
     * @param config
     * @throws ServletException
     */
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        this.config = config;
    }


    //不编写doPost方法，收到post请求时，直接将值传递并调用doGet方法
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    /**
     * doGet方法
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取web应用的初始化参数信息
        System.out.println(config.getServletContext().getInitParameter("username"));
        System.out.println(config.getServletContext().getInitParameter("password"));
    }
}
