package Chapter_11_example;

import javax.servlet.*;
import java.io.IOException;

public class MyFilter1 implements Filter {

    /**
     *
     * @param filterConfig 这里作为形参被传进来了
     * @throws ServletException
     */
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("-----------init1------------");


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
        System.out.println("-----------doFilter1_begin------------");
        filterChain.doFilter(servletRequest, servletResponse);  //要使请求通过过滤器，需要使用filterChain的doFilter方法
        System.out.println("-----------doFilter1_end------------");

    }

    @Override
    public void destroy() {
        System.out.println("-----------destroy1------------");

    }
}
