package Chapter_11_example;

import com.sun.deploy.net.HttpResponse;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Myfilter3 implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //1、获取请求信息（获取请求的IP地址）
        String ipString = req.getRemoteAddr();//获取客户端的IP地址信息
        System.out.println(ipString);
        //2、判断IP地址是否符合要求
        if ("127.0.0.1".equals(ipString)) {
            //若不合法，则拦截请求，跳转到error界面，不再执行filterChain的doFilter方法传递
            HttpServletResponse httpServletResponse = (HttpServletResponse)resp;
            httpServletResponse.sendRedirect("/Chapter_11_example/error.jsp");
        }else {
            chain.doFilter(req, resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
