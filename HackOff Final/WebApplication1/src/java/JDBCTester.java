import java.sql.*;

public class JDBCTester {
    public static void main(String[] args) {
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
        try {
            // get connection to db
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection(url, "system", "kirit");
            
            Statement st = con.createStatement();
            //Statement st2 = con.createStatement();
            String sql = "select * from a1";
            ResultSet rs = st.executeQuery(sql);
            while (rs.next())
            {
                System.out.println(rs.getString(1) + " " + rs.getString(2));
            }
            rs.close();
            con.close();
        }

        catch (ClassNotFoundException exc) {
            System.out.println("Driver not loaded");
        }

        catch (SQLException e) {
            System.out.println("Connection not established");
        }

    }

}