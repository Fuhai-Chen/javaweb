package Chapter_12_example;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取数据，并封装在模型层的bean中
        String num1 = request.getParameter("num1");
        String num2 = request.getParameter("num2");
        String operator = request.getParameter("operator");

        //调用模型层，根据模型层返回的结果，进行相应
        Calculator cal = new Calculator();
        cal.setNum1(num1);
        cal.setNum2(num2);
        cal.setOperator(operator);
        cal.computer();

        //把结果响应给JSP页面
        request.setAttribute("calculator", cal);
        request.getRequestDispatcher("Chapter_12_example/calculator.jsp").forward(request,response);

    }
}
