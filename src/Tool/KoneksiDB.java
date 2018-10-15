package Tool;
import java.sql.*;
import javax.swing.JOptionPane;

public class KoneksiDB {
    public Connection getConnection() throws SQLException{
        Connection cnn;
        try{
            String server = "jdbc:mysql://localhost/dbsiakad_171530029";
            String drever = "com.mysql.jdbc.Driver";
            Class.forName(drever);
            cnn = DriverManager.getConnection(server, "root", "");
            return cnn;
        }catch(SQLException | ClassNotFoundException se){
            System.out.println(se);
            JOptionPane.showMessageDialog(null, "Gagal Terhubung ke database, cek koneksi database anda!!");
            return null;
        }
    }
}