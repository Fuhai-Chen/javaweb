package Chapter_7;

import Chapter_7_example.PareparedStatementDemo;

import java.sql.*;

public class jsp07 {

    static Connection conn = null;
    static PreparedStatement stmt = null;
    static ResultSet rst = null;


    /**
     * 添加员工信息到表中
     * @param empId
     * @param empName
     * @param job
     * @param salary
     * @param dept
     */
    public static void useradd(int empId, String empName, String job, double salary, int dept){
        try {


            conn = ConnectionPool.getConn();
            String sql = "INSERT INTO `runobb`.`employee` (`EMP_ID`, `EMP_NAME`, `JOB`, `SALARY`, `DEPT`) VALUES (?, ?, ?, ?, ?);";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, empId);
            stmt.setString(2, empName);
            stmt.setString(3, job);
            stmt.setDouble(4, salary);
            stmt.setInt(5, dept);

            int a = stmt.executeUpdate();
            //判断一下是否添加成功
            if (a > 0) {
                System.out.println("员工信息添加成功");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //关闭资源
            ConnectionPool.close(stmt, conn);
        }


    }

    /** 修改员工的基本信息（根据主键empId去查找，然后修改相关信息）
     * 这里的第一个参数是用来作为索引值查找的empID，第二个参数是用来设置新的empID
     * @param empId
     * @param empId2
     * @param empName
     * @param job
     * @param salary
     * @param dept
     */
    public static void useralt(int empId, int empId2, String empName, String job, double salary, int dept){
        try {
            conn = ConnectionPool.getConn();
            String sql = "UPDATE `runobb`.`employee` SET `EMP_ID` = ?, `EMP_NAME` = ?, `JOB` = ?, `SALARY` = ?, `DEPT` = ? WHERE (`EMP_ID` = ?);";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, empId2);
            stmt.setString(2, empName);
            stmt.setString(3, job);
            stmt.setDouble(4, salary);
            stmt.setInt(5, dept);
            stmt.setInt(6, empId);

            int a = stmt.executeUpdate();

            //判断一下是否修改成功
            if (a > 0) {
                System.out.println("员工信息修改成功");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //关闭资源
            ConnectionPool.close(stmt, conn);
        }
    }

    /**
     * 根据编号删除指定员工
     * @param empId
     */
    public static void userdel(int empId){
        try {
            conn = ConnectionPool.getConn();
            String sql = "DELETE FROM `runobb`.`employee` WHERE (`EMP_ID` = ?);";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, empId);

            int a = stmt.executeUpdate();

            //判断一下是否删除成功
            if (a > 0) {
                System.out.println("指定员工信息删除成功");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //关闭资源
            ConnectionPool.close(stmt, conn);
        }

    }


    /**
     * 按照员工工作种类进行员工信息查询（题目有异议，两种情况）
     * @param job
     */

    //1、查询指定职业的员工信息
    public static void userquery(String job){
        try {
            conn = ConnectionPool.getConn();
            String sql = "SELECT * FROM runobb.employee where JOB= ?;";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, job);

            rst =  stmt.executeQuery();

            //遍历结果集并输出相应信息
            System.out.println("EMP_ID: "+ "EMP_NAME:" + " \t" + "JOB:" + "\t\t"+ "SALARY:" + "\t\t"+  "DEPT:");
            while (rst.next()){
                System.out.println(rst.getString("EMP_ID") + " \t\t" + rst.getString("EMP_NAME") + "\t\t"  + rst.getString("JOB") + "\t\t" + rst.getString("SALARY") + "\t\t" + rst.getString("DEPT"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //关闭资源
            ConnectionPool.close(stmt, conn);
        }
    }

    //2、将所有员工信息展示出来，按员工信息(无参)
    public static void usershow(){
        try {
            conn = ConnectionPool.getConn();
            //这里使用Statement也是可以的，但是需要在class中声明新的Statement对象。
            String sql = "SELECT * FROM runobb.employee order by job";
            stmt = conn.prepareStatement(sql);
            rst =  stmt.executeQuery();

            //遍历结果集并输出相应信息
            System.out.println("EMP_ID: "+ "EMP_NAME:" + " \t" + "JOB:" + "\t\t"+ "SALARY:" + "\t\t"+  "DEPT:");
            while (rst.next()){
                System.out.println(rst.getString("EMP_ID") + "\t\t" + rst.getString("EMP_NAME") + "\t\t"  + rst.getString("JOB") + "\t\t" + rst.getString("SALARY") + "\t\t" + rst.getString("DEPT"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //关闭资源
            ConnectionPool.close(stmt, conn);
        }
    }




    public static void main(String[] args) {
//        jsp07.useradd(6,"王皓皓","manager", 5000, 20);
//        jsp07.useralt(6, 6,"王皓皓","manager", 5000, 20);
//        jsp07.userdel(6);
//        jsp07.userquery("derk");
        jsp07.usershow();

    }
}
