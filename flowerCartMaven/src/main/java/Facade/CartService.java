/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Product;
import dao.CartDao;
import dao.ProductDoa;
import dto.CartProducts;
import dto.LocalProducts;
import java.util.ArrayList;
import java.util.LinkedList;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sheko
 */
public class CartService {

    HttpSession session;

    public CartService(HttpSession session) {
        this.session = session;
    }

    private CartProducts getCart() {

        CartProducts cartProducts = (CartProducts) session.getAttribute("userCart");
        Boolean isLoggedIn = (Boolean) session.getAttribute("LoggedIn");
        if (isLoggedIn == null || !isLoggedIn) {
            return null;
        }
        if (cartProducts == null) {
            cartProducts = new CartProducts();
            session.setAttribute("userCart", cartProducts);
        }
        return cartProducts;
    }

    public boolean addProduct(Product product) {
        CartProducts cartProducts = getCart();
        cartProducts.addProduct(product);
        return true;
    }

    public boolean removeProduct(Product product) {
        CartProducts cartProducts = getCart();
        cartProducts.removeProduct(product);
        return true;
    }

    public boolean removeProduct(int id) {
        CartProducts cartProducts = getCart();
        cartProducts.removeProduct(id);
        return true;
    }

    public boolean setQuantity(Product product, int quantity) {
        CartProducts cartProducts = getCart();
        LinkedList<Product> products = cartProducts.getProducts();
        for (Product p : products) {
            if (p.getId() == product.getId()) {
                p.setQuantity(quantity);
                break;
            }
        }
        return true;
    }

    public void updateDbQuantity(ArrayList<Product>updateDb)
    {
        CartDao cartDao=new CartDao();
        
    }
    public ArrayList<LocalProducts> syncCart(ArrayList<LocalProducts> localProducts) {
        CartProducts cartProducts = getCart();
        if (cartProducts == null) {
            return localProducts;
        }
        LinkedList<Product> savedProducts=cartProducts.getProducts();
        boolean notexist=true;
        ArrayList<LocalProducts> insertIntoDb=new ArrayList<>();
        ArrayList<Product>updateDb=new ArrayList<>();
        for(LocalProducts local:localProducts)
        {
            for(Product saved:savedProducts)
            {
                if(local.getId()==saved.getId())
                {
                    local.setValue(local.getValue()+saved.getQuantity());
                    saved.setQuantity(local.getValue());
                    updateDb.add(saved);
                    notexist=false;
                }
            }
            if(notexist)
                insertIntoDb.add(local);
        }
        return localProducts;
    }
}

