package Chapter_10_example;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ServletContextDemo02 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //获取servletcontext对象
       ServletContext appliaction =  getServletContext();

       //1、操作访问次数
        Integer count = (Integer) appliaction.getAttribute("count");
        if (count == null){  //第一次访问时进行初始化操作
            count = 0; //因为这里是先累加，再进行打印输出，故首次将count赋值为0.
        }
        count ++;
        appliaction.setAttribute("count", count);
        System.out.println("该页面的访问次数为" + count);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //直接调用doPost方法即可
        doPost(request, response);
    }
}
