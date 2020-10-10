package Chapter_7_example;

import java.sql.*;

public class StatementDemo01_1 {

    private Connection conn = null;
    private Statement stmt = null;
    private ResultSet result = null;

    /**
     * 查询所有员工的编号、姓名、工作。
     */
    public void queryEmp(){
        //1、加载驱动
        try {
            conn = ConnectionPool.getConn();
            stmt = conn.createStatement();

            //2、从emp表中查询信息
            String selectStr = "select * from emp";
            result = stmt.executeQuery(selectStr);

            //3、处理结果集
            System.out.println("员工编号：\t 员工姓名：\t 工作： ");
            //遍历
            while (result.next()){
                System.out.println(result.getString("EMPNO") + "\t\t" + result.getString("ENAME") + "\t\t" + result.getString("JOB"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //4、释放资源
            ConnectionPool.close(stmt, result, conn);
        }
    }


    /**
     * 修改员工信息
     */
    public void updateEmp(){
        //1、加载驱动
        try {
            conn = ConnectionPool.getConn();

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

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //5、关闭资源
            ConnectionPool.close(stmt, conn);
        }
    }


    /**
     * main method
     * @param args
     */
    public static void main(String[] args) {
        StatementDemo01 demo01 = new StatementDemo01();
        demo01.queryEmp();
        demo01.updateEMP();
    }
}
