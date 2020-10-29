package Chapter_10_example;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URL;

public class ServletContextDemo03 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        //获取servletContext对象
        ServletContext application = this.getServletContext();
        //根据传递过来的的虚拟路径获取该路径再服务器本地文件系统中的真实路径信息
        // 这里“/“对应的是web的根目录，即web文件夹
        System.out.println(application.getRealPath("/"));
        // /index.jsp即为根目录（web）下的index.jsp文件
        System.out.println(application.getRealPath("/index.jsp"));
        // 这里参数以”/“开始，代表SrevletContext对象上下文环境的根目录。
        //如果没有找到相匹配的url,返回值为null
        URL u = application.getResource("/index.jsp");
        //getpath()返回全路径方法，返回完整url，localhost起。
        //这里未部署到服务器，故url返回的是文件路径，但格式仍为URL
        System.out.println(u.getPath());

        //利用ServletContext打开项目内的一些文件，获取他的内容
        URL u2 = application.getResource("/a.txt");

        //读取文件，并转换为输入流
        InputStream inputStream = u2.openStream();
        //以文本的格式按行读取
        BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));

        String line = reader.readLine();    //每次读一行文本
        while (line != null){
            out.println(line + "<br>");
            line = reader.readLine();
        }
        //文件流使用完毕后及时关闭资源（读取器和输入流）
        reader.close();
        inputStream.close();


/*
        //输出个jsp文件内容试试
        URL u3 = application.getResource("/index.jsp");

        //读取文件，并转换为输入流
        InputStream inputStream1 = u3.openStream();
        //以文本的格式按行读取
        BufferedReader reader1 = new BufferedReader(new InputStreamReader(inputStream1));

        String line1 = reader1.readLine();    //每次读一行文本
        while (line1 != null){
            out.println(line1 + "<br>");
            line1 = reader.readLine();
            if (line1 != null){
                //这里需要导入转译工具，jar文件。 转义后原有html文件输出时不会被浏览器识别为html语句，而是直接作为文本进行输出
                line1 = StringEscapeUtils.escapeHtml4(line);
            }
        }
        //文件流使用完毕后及时关闭资源
        reader1.close();
        inputStream1.close();

 */


    }
}
