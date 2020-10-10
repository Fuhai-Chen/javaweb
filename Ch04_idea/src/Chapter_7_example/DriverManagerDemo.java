package Chapter_7_example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverManagerDemo {
    public static void main(String[] args) throws SQLException {
        //初始化connection
        Connection coon = null;

        //加载驱动程序并自动注册连接实例
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            //设置url
            String url = "jdbc:mysql://localhost:3306/runobb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
            //设置用户名和密码
            String username = "root";
            String password = "1234";

            //通过DriverManager向DB发出连接请求，获得连接对象
            coon = DriverManager.getConnection(url, username, password);
            if (coon != null){
                System.out.println("数据库连接成功");
            }else {
                System.out.println("数据库连接失败");
            }
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
