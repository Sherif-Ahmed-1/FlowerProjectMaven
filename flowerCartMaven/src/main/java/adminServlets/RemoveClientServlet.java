/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Client;
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
import adminFacade.ClientService;
import adminFacade.ProductService;
import java.io.PrintWriter;
import java.util.Map;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author Moamenovic
 */
@WebServlet(name = "RemoveClientServlet", urlPatterns = {"/RemoveClientServlet"})
public class RemoveClientServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //************* startAllaa **************/
        Enumeration<String>  names= request.getParameterNames();
        while(names.hasMoreElements())
        {
            System.out.println(names.nextElement());
        }
        //************** EndAllaa **************/
        //************* startAdel ************
        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        String str = request.getParameter("id");
        System.out.println(str);
        
        int id = Integer.parseInt(str.trim());
        System.out.println(id);
        ClientService clientService = new ClientService();
       if(clientService.removeClient(id))
            System.out.println(id);
        //************** EndMoamen **************/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
