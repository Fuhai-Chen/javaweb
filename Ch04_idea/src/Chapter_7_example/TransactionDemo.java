package Chapter_7_example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TransactionDemo {

    public void TransactionAccount(double money, String OutAccountNo, String InAccountNo){
        try {

            Connection conn = ConnectionPool.getConn();

            conn.setAutoCommit(false);//开启事务 = 取消自动提交
            String sql1 = "update account set money=money-? where accountNo=?";
            String sql2 = "update account set money=money+? where accountNo=?";
            PreparedStatement pstm1 = conn.prepareStatement(sql1);
            pstm1.setDouble(1, money);
            pstm1.setString(2, OutAccountNo);

            int num1 = pstm1.executeUpdate();
            int r = 3/0;
            PreparedStatement psym2 = conn.prepareStatement(sql2);
            

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
