package Chapter_7_example;

import java.sql.*;

public class StatementDemo01 {
    private Connection conn = null;
    private Statement stmt = null;
    private ResultSet result = null;

    /**
     * 查询所有员工的编号、姓名、工作
     */
    public void queryEmp(){
        //1、加载驱动
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            //2、创建数据库连接
            String url = "jdbc:mysql://localhost:3306/runobb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
            String username = "root";
            String password = "1234";
            conn = DriverManager.getConnection(url, username, password);

            //3、创建statement
            stmt = conn.createStatement();
            //从emp表中查询信息
            String selecStr = "select * from emp";
            result = stmt.executeQuery(selecStr);

            //对结果集result进行处理
            System.out.println("员工编号：\t 员工姓名：\t 工作： ");
//            遍历
            while (result.next()){
                System.out.println(result.getString("EMPNO") + "\t\t" + result.getString("ENAME") + "\t\t" + result.getString("JOB"));
            }



        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }finally {
            //5、及时关闭资源
            try {
                if (result != null){
                    result.close();
                    result = null;
                }
                if (stmt != null){
                    stmt.close();
                    stmt = null;
                }if (conn != null){
                    conn.close();
                    conn = null;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    /**
     * 修改员工信息方法
     */
    public void updateEMP(){
        //1、加载驱动
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            //2、创建数据库连接
            String url = "jdbc:mysql://localhost:3306/runobb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
            String username = "root";
            String password = "1234";
            conn = DriverManager.getConnection(url, username, password);

            //3、创建statement
            stmt = conn.createStatement();

            //4、修改emp表的信息
            String updateStr = "update emp set sal=1500 where empno='7499'";
            int result1 = stmt.executeUpdate(updateStr);
            if (result1 > 0 ){
                System.out.println("更新成功！");
            }else {
                System.out.println("更新失败！");
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            //5、关闭资源
            /*
            注意这里没使用ResultSet对象，只是返回了一个修改行数数字，故不需要closeResultSet资源
             */
            try {
                if (stmt != null){
                    stmt.close();
                    stmt = null;
                }
                if (conn != null){
                    conn.close();
                    conn = null;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    /**
     * 主方法
     * @param args
     */
    public static void main(String[] args) {
        StatementDemo01 demo01 = new StatementDemo01();

        demo01.queryEmp();

        demo01.updateEMP();
    }
}
