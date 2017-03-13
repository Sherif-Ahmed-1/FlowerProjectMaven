package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Entities.Extra;
import java.util.logging.Level;
import java.util.logging.Logger;

import oracle.jdbc.OracleDriver;

/**
 *
 * @author Moamenovic
 */
public class ExtraDao {

    Extra oneExtra;
    Connection con;
    ArrayList<Extra> extratList;

    public boolean insertExtra(Extra extra)  {
       Connection con = new ConnectionManager().getConnection();
        try  {
            PreparedStatement ps = con.prepareStatement("INSERT INTO EXTRAS (NAME, PRICE, QUANTITY) VALUES (?,?,?)");
            ps.setString(1, extra.getName());
            ps.setFloat(2, extra.getPrice());
            ps.setInt(3, extra.getQuantity());
            int count = ps.executeUpdate();
            if(count!=0)
                return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ExtraDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
         return false;
    }

    public boolean updateExtra(Extra extra)  {
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("UPDATE EXTRAS SET NAME = ? , price = ? , QUANTITY = ?  WHERE  id = ?");
            ps.setString(1, extra.getName());
            ps.setFloat(2, extra.getPrice());
            ps.setInt(3, extra.getQuantity());
            ps.setInt(4, extra.getID());
           int count = ps.executeUpdate();
            if(count!=0)
                return true;
        } catch (SQLException ex) {
            ex.printStackTrace(); 
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ExtraDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
         return false;
    }

    public ArrayList<Extra> selectAllExtras() {
        extratList = new ArrayList<>();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from EXTRAS");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Extra extra = new Extra();
                extra.setID(rs.getInt(1));
                extra.setName(rs.getString(2));
                extra.setPrice(rs.getFloat(3));
                extra.setQuantity(rs.getInt(4));
                extratList.add(extra);
                System.out.println(extra.toString());
            }
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();  
        }

        return extratList;
    }

    public Extra selectOneExtra(int f)  {
        Extra extra = new Extra();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from EXTRAS where id = ?");
            ps.setInt(1, f);
            ResultSet rs = ps.executeQuery();
            rs.next();
            extra.setID(rs.getInt(1));
            extra.setName(rs.getString(2));
            extra.setPrice(rs.getFloat(3));
            extra.setQuantity(rs.getInt(4));
            System.out.println(extra.toString());
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
           
        }

        return extra;
    }

}
