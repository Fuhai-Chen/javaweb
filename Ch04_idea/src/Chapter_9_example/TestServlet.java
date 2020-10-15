package Chapter_9_example;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TestServlet extends HttpServlet {
    /**init方法
     * 初始化，整个生命周期仅执行一次
     */

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("init方法....");
        System.out.println(config.getInitParameter("username"));
    }

    /**service方法
     * 请求一次执行一次
     */
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("service方法");
    }

    /**destroy方法
     * 销毁，结束服务时调用，整个声明周期仅执行一次
     */
    @Override
    public void destroy() {
        System.out.println("destroy方法...");
    }
}
