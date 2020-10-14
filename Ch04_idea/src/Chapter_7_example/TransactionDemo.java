package Chapter_7_example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TransactionDemo {

    Connection conn = null;

    public void TransactionAccount(double money, String OutAccountNo, String InAccountNo){
        try {

            conn = ConnectionPool.getConn();

            conn.setAutoCommit(false);//开启事务 = 取消自动提交
            String sql1 = "update account set money=money-? where accountNo=?";
            String sql2 = "update account set money=money+? where accountNo=?";
            PreparedStatement pstm1 = conn.prepareStatement(sql1);
            pstm1.setDouble(1, money);
            pstm1.setString(2, OutAccountNo);

            int num1 = pstm1.executeUpdate();
            int r = 3/0;

            PreparedStatement pstm2 = conn.prepareStatement(sql2);
            pstm2.setDouble(1, money);
            pstm2.setString(2, OutAccountNo);

            int num2 = pstm2.executeUpdate();

            conn.commit();  //事务提交
            if (num1 > 0 && num2 > 0){
                System.out.println("转账成功！");
            } else {
                System.out.println("转账失败");
            }

            

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e){
            e.printStackTrace();
            try {
                conn.rollback(); //出现其他异常时，进行事务回滚，撤回对数据库的所有操作
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            System.out.println("转账失败！");
        }



    }

    public static void main(String[] args) {
        TransactionDemo t = new TransactionDemo();
        t.TransactionAccount(200, "123456", "789123");
    }
}
