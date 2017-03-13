package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Entities.OrderDetails;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.OracleDriver;

/**
 *
 * @author Moamenovic
 */
public class OrderDetailsDao {

    ArrayList<OrderDetails> OrderList;

    public ArrayList<OrderDetails> selectOrdersByClientID(int id) {
        OrderList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try  {
            PreparedStatement ps = con.prepareStatement("select * from OrderDetailss where CLIENT_ID = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                OrderDetails OrderDetails = new OrderDetails();
                OrderDetails.setQuantity(rs.getInt(1));
                OrderList.add(OrderDetails);
                System.out.println(OrderDetails.toString());
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(OrderDetailsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return OrderList;
    }

    public boolean insertOrderDetails(OrderDetails od) { /// hint orderDetails object contains only order_id, product_id not an object of anyof them 
       Connection con = new ConnectionManager().getConnection();
       boolean flag=false;
        try  {
            PreparedStatement ps = con.prepareStatement("INSERT INTO ORDER_DETAILS (order_ID, product_id , quantity) VALUES (?,?,?)");
            ps.setInt(1, od.getOrderId());
            ps.setInt(2, od.getProductId());
            ps.setInt(3, od.getQuantity());
            ResultSet rs = ps.executeQuery();
            flag= true;
        } catch (SQLException ex) {
            ex.printStackTrace();
          }
        finally
        {
           try {
               con.close();
           } catch (SQLException ex) {
               Logger.getLogger(OrderDetailsDao.class.getName()).log(Level.SEVERE, null, ex);
           }
        }
        return  flag;
    }
}
