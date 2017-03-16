/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Product;
import Facade.ProductDetail;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sheko
 */
@WebServlet(name = "GetProductsDetail", urlPatterns = {"/GetProductsDetail"})
public class GetProductsDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gson gson=new Gson();
        
        Integer [] ids=gson.fromJson(req.getParameter("productsId"), Integer[].class);
        ProductDetail detail=new ProductDetail();
        ArrayList<Product> products=detail.getProductsDetails(ids);
        resp.setContentType("application/json");
        resp.getWriter().write(gson.toJson(products));
    }


}
