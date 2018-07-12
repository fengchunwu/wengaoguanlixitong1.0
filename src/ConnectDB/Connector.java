package ConnectDB;
import java.sql.*;
public class Connector {
    public Connector(){};
    public boolean Register(String UN,String PW)
    {
        try {
            //加载数据库驱动，注册到去送管理器  
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/test1";
            String username = "root";
            String password = "123456";
            Connection conn = DriverManager.getConnection(url, username, password);
            if (conn != null)
            {
                String sql = "INSERT INTO Table_users1(username,password,status,privilege)values(?,?,?,?)";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, UN);
                ps.setString(2, PW);
                ps.setInt(3,1);
                ps.setInt(4,2);
                ps.executeUpdate();
            }
            else
            {
                return false;
            }
            //完成后记得关闭数据库连接   
            conn.close();
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean Info(String Username,String Name,String Sex,String Birthday,String Address,String Phone,String Referrer,String Branch,String Community)
    {
        try {
            //加载数据库驱动，注册到去送管理器  
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/test1";
            String username = "root";
            String password = "123456";
            Connection conn = DriverManager.getConnection(url, username, password);
            if (conn != null)
            {
                String sql = "INSERT INTO Table_usersinfo(username,name,sex,birthday,address,phone,referrer,branch,community)values(?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, Username);
                ps.setString(2,Name);
                ps.setString(3,Sex);
                ps.setString(4,Birthday);
                ps.setString(5,Address);
                ps.setString(6,Phone);
                ps.setString(7,Referrer);
                ps.setString(8,Branch);
                ps.setString(9,Community);
                ps.executeUpdate();
            }
            else
            {
                return false;
            }
            //完成后记得关闭数据库连接   
            conn.close();
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public String Select(String UN ,String type)
    {
        try {
            //加载数据库驱动，注册到去送管理器  
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/test1";
            String username = "root";
            String password = "123456";
            Connection conn = DriverManager.getConnection(url, username, password);
            if (conn != null)
            {
                Statement stmt=conn.createStatement();
                String sql="select "+type+" from Table_usersinfo where username = "+"'"+UN+"'" ;
                ResultSet rs=stmt.executeQuery(sql);
                rs.next();
                return rs.getString(type);
            }
            else
            {
            }
            //完成后记得关闭数据库连接   
            conn.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "NULL";
    }
}
