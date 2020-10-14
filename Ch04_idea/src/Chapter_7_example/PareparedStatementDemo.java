package Chapter_7_example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * 添加学生信息
 */
public class PareparedStatementDemo {
    Connection conn  = null;
    PreparedStatement pstm = null;

    public void insertStudent(Student student){

        try {
            //获取连接对象，直接调用工具类即可
            conn = ConnectionPool.getConn();

            //发送sql文
            String sql = "insert into student(stuNo,stuName,stuAge,stuSex) values (?,?,?,?)";
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, student.getStuNo());
            pstm.setString(2, student.getStuName());
            pstm.setInt(3, student.getStuAge());
            pstm.setString(4, student.getStuSex());


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        Student stu = new Student();
        stu.setStuNo(4);
        stu.setStuName("小龙");
        stu.setStuAge(24);
        stu.setStuSex("男");
        PareparedStatementDemo pareparedStatementDemo = new PareparedStatementDemo();
        pareparedStatementDemo.insertStudent(stu);
    }

}
