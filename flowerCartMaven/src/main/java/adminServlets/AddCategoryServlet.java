/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Category;
import java.io.IOException;
import java.util.logging.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Entities.Product;
import adminFacade.CategoryService;
import java.util.*;
import javax.servlet.annotation.MultipartConfig;

/**
 *
 * @author Adel Zaid
 */
@WebServlet(name = "AddCategoryServlet", urlPatterns = {"/AddCategoryServlet"})
@MultipartConfig
public class AddCategoryServlet extends HttpServlet {

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

        //************* startAllaa **************/
        //************** EndAllaa **************/
        //************* startAdel ************
        insertCategory(request, response);

        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }

    List<String> imgPaths = new ArrayList<>();
    

    private void insertCategory(HttpServletRequest request, HttpServletResponse response) {

        Category category = new Category();
        String[] products = request.getParameter("products").split(",");
        ArrayList<String> listOfProdcuts = new ArrayList<>(Arrays.asList(products));
        Product product = null;
        ArrayList<Product> listProdcuts= new ArrayList<>();
        for (String p : listOfProdcuts) {
            product = new Product();
            product.setName(p);
            listProdcuts.add(product);
        }
        category.setName(request.getParameter("name"));
        category.setProductList(listProdcuts);
        CategoryService categoryService = new CategoryService();
        if (categoryService.addCategory(category)) {
            
            try {
                response.sendRedirect("/FlowersCart1/AdminView/CategoryAddition.jsp");
            } catch (IOException ex) {
                Logger.getLogger(AddCategoryServlet.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
            }
        } else {
            try {
                response.sendRedirect("/FlowersCart1/AdminView/CategoryAddition.jsp");
            } catch (IOException ex) {
                Logger.getLogger(AddCategoryServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }
}
