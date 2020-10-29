package Chapter_10_example;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

public class ServletResponseDemo02 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //使用servlet下载附件
        response.setContentType("application/octet-stream");    //设置内容类型
        String fileName = "下载";  //提前定义好下载文件的文件名
        fileName = URLEncoder.encode(fileName,"UTF-8"); //中文文件名是需要进行编码转换
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName +".png");   //定义浏览器下载时的文件名，注意要加后缀哦

        //开始向浏览器传输字节流
        ServletOutputStream os = response.getOutputStream();

//        引入文件（回去复习恶补文件输入输出）
        File file = new File("G:\\jpg1.jpg");
        FileInputStream fileIn = new FileInputStream(file);
        byte[] outputByte = new byte[4096];
        int size = fileIn.read(outputByte,0,4096);
        while (size != -1){
            os.write(outputByte,0,size);
            size = fileIn.read(outputByte,0,4096);
        }
        fileIn.close();
        os.flush();
        os.close();;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
