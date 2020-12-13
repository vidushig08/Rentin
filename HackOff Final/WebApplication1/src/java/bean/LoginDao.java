package bean;

import java.sql.*;

public class LoginDao {

    public static boolean validate(LoginBean bean) {
        boolean status = false;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "kirit");

            PreparedStatement ps = conn.prepareStatement("select name, regno, password, email from hacklogin where regno=? and pass=?");

            ps.setString(1, bean.getName());
            ps.setString(2, bean.getReg());
            ps.setString(3, bean.getPass());
            ps.setString(4, bean.getEmail());
            System.out.println(bean.getName() + " " + bean.getReg());
            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
        return status;
    }
}
