package Chapter_7;

import java.sql.*;

public class ConnectionPool {

    //static : 不需要实例化一个对象，就能调用这个方法
//    ConnectionPool。getConn()
//    ConnectionPool c1 = new ConnectionPool();
    public static Connection getConn(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/runobb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC", "root", "1234");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(Statement stmt, Connection conn){
        try {
            if (stmt != null){
                stmt.close();
                //为什么这里没有令stmt = null；
            }
            if (conn != null){
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void close(Statement stmt, ResultSet rs, Connection conn){
        try {
            if (rs != null){
                rs.close();
            }
            if (stmt != null){
                stmt.close();
                stmt = null;
            }
            if (conn != null){
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
