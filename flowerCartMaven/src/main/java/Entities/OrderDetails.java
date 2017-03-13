package Entities;
/**
 *
 * @author Moamenovic
 */
public class OrderDetails {

    private int productId;
    private int orderId;
    private int quantity;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "OrderDetails{" + "productId=" + productId + ", orderId=" + orderId + ", quantity=" + quantity + '}';
    }

}
