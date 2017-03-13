/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Entities.Product;
import adminFacade.ProductService;
import java.io.PrintWriter;
import java.util.Map;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author Adel Zaid
 */
@WebServlet(name = "AddProductServlet", urlPatterns = {"/AddProductServlet"})
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //************* startAllaa **************/

        //************** EndAllaa **************/
        //************* startAdel ************
        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            //************* startAllaa **************/
            //************** EndAllaa **************/
            //************* startAdel ************
            Product product = new Product();
            BeanUtils.populate(product, request.getParameterMap());
            ProductService productService = new ProductService();
            if (productService.addProduct(product)) {
                PrintWriter out = response.getWriter();
                out.println("Data has been saved");
                response.sendRedirect("/FlowersCart1/AdminView/ProductAddition.jsp");
            } else {
                PrintWriter out = response.getWriter();
                out.println("Data has not been saved");
                response.sendRedirect("/FlowersCart1/AdminView/ProductAddition.jsp");
            }

            //************** EndAdel **************/
            //************* startSherif **************/
            //************** EndSherif **************/
            //************* startMoamen **************/
            //************** EndMoamen **************/
        } catch (IllegalAccessException ex) {
            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
