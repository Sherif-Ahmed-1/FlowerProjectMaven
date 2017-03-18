/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Flower;
import java.io.IOException;
import java.util.logging.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Entities.Product;
import adminFacade.ProductService;
import java.io.File;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.annotation.MultipartConfig;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Adel Zaid
 */
@WebServlet(name = "UpdateProductServlet", urlPatterns = {"/UpdateProductServlet"})
@MultipartConfig
public class UpdateProductServlet extends HttpServlet {

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
        updateProduct(request, response);

        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }

    List<String> imgPaths = new ArrayList<>();

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, IOException {

        Product product = new Product();
        String[] flowers = request.getParameter("flowers").split(",");
        ArrayList<String> listOfFlowers = new ArrayList<>(Arrays.asList(flowers));
        Flower flower = null;
        ArrayList<Flower> listFlowers = new ArrayList<>();
        for (String listFlower : listOfFlowers) {
            flower = new Flower();
            if (!listFlower.equals("")) {
                flower.setName(listFlower);
                listFlowers.add(flower);
            }
        }
        product.setId(Integer.parseInt(request.getParameter("id")));
        product.setName(request.getParameter("name"));
        product.setPrice(Float.parseFloat(request.getParameter("price")));
        product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        product.setRating(Integer.parseInt(request.getParameter("rating")));
        product.setDescription(request.getParameter("description"));
        product.setFlowers(listFlowers);
        ProductService productService = new ProductService();
        if (productService.updateProduct(product, imgPaths)) {

            try {

                response.sendRedirect("/FlowersCart1/AdminView/ProductDetails.jsp");

            } catch (Exception ex) {
                Logger.getLogger(UpdateProductServlet.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
            }
        } else {
            try {
                response.sendRedirect("/FlowersCart1/AdminView/ProductDetails.jsp");

            } catch (Exception ex) {
                Logger.getLogger(UpdateProductServlet.class
                        .getName()).log(Level.SEVERE, null, ex);

            }
        }

    }
}
