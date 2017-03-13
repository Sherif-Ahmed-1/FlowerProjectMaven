/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Entities.Product;
import adminFacade.ProductService;
import java.io.File;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Random;
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
@WebServlet(name = "AddProductServlet", urlPatterns = {"/AddProductServlet"})
@MultipartConfig
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

        //************* startAllaa **************/
        //************** EndAllaa **************/
        //************* startAdel ************
        uploadImage(request, response);
        insertProduct(request, response);

        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }
    File savedFile = null;
    Map<String, String> paramaters = new HashMap<String, String>();

    private void uploadImage(HttpServletRequest request, HttpServletResponse response) {
        PrintWriter out = null;
        try {

            out = response.getWriter();
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> items = upload.parseRequest(request);
            Iterator<FileItem> iter = items.iterator();

            while (iter.hasNext()) {

                FileItem item = (FileItem) iter.next();

                if (item.isFormField()) {
                    String name = item.getFieldName();
                    String value = item.getString();
                    paramaters.put(name, value);

                    out.println(name + " : " + value);
                
                } else // processUploadedFile(item);
                {
                    String itemName = item.getName();
                    Random generator = new Random();
                    int r = Math.abs(generator.nextInt());

                    String reg = "[.*]";
                    String replacingtext = "";

                    Pattern pattern = Pattern.compile(reg);
                    Matcher matcher = pattern.matcher(itemName);
                    StringBuffer buffer = new StringBuffer();

                    while (matcher.find()) {
                        matcher.appendReplacement(buffer, replacingtext);
                    }
                    int IndexOf = itemName.indexOf(".");
                    String domainName = itemName.substring(IndexOf);

                    String finalimage = buffer.toString() + "_" + r + domainName;

                    savedFile = new File(getServletContext().getRealPath("/") + "assets\\img\\bouques\\" + finalimage);

                    try {
                        item.write(savedFile);
                    } catch (Exception ex) {
                        Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }

                }
            }
        } catch (IOException ex) {
            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (FileUploadException ex) {
            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }

    }

    private void insertProduct(HttpServletRequest request, HttpServletResponse response) {

        try {
            Product product = new Product();
            String name = request.getParameter("name");
            BeanUtils.populate(product, paramaters);
            ProductService productService = new ProductService();
            if (productService.addProduct(product, savedFile.getAbsolutePath())) {

                try {
                    response.sendRedirect("/FlowersCart1/AdminView/ProductAddition.jsp");
                } catch (IOException ex) {
                    Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                }
            } else {
                try {
                    response.sendRedirect("/FlowersCart1/AdminView/ProductAddition.jsp");
                } catch (IOException ex) {
                    Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        } catch (IllegalAccessException | InvocationTargetException ex) {
            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
