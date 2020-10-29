package Chapter_11_example;

import javax.servlet.*;
import java.io.IOException;

public class MyFilter2 implements Filter {

    /**
     *
     * @param filterConfig 这里作为形参被传进来了
     * @throws ServletException
     */
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("-----------init------------");
        //初始化调用init（）方法时，通过FilterConfig对象获取预先定义好的初始化参数
        String para1 = filterConfig.getInitParameter("para1");
        System.out.println("-----------init------------" + para1);

        //获得ServletContext对象
        ServletContext application = filterConfig.getServletContext();
        application.setAttribute("attr1", "val1");
    }

    /**
     *
     * @param servletRequest
     * @param servletResponse
     * @param filterChain 过滤器链
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("-----------doFilter_begin------------");
        filterChain.doFilter(servletRequest, servletResponse);  //要使请求通过过滤器，需要使用filterChain的doFilter方法,通过后会进入下一个过滤器或者servlet
        //如果想要拦截，可以将doFilter注释掉（不使用），同时也可以将信息直接返回给浏览器
//        servletResponse.getWriter().write("access deny");
        System.out.println("-----------doFilter_end------------");

    }

    @Override
    public void destroy() {
        System.out.println("-----------destroy------------");

    }
}
