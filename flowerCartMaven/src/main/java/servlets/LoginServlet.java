/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Facade.ClientService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alaa
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
         response.setContentType("text/html");
        PrintWriter out = response.getWriter();
         
        String email = request.getParameter("inputEmail");
        String password = request.getParameter("inputPassword");
        // check against database
        ClientService clientService=new ClientService();
        if (clientService.Login(email, password) ){
            HttpSession session = request.getSession(true);
            session.setAttribute("LoggedIn", new Boolean("true"));
            response.sendRedirect("index.jsp");
        }else {
            HttpSession session = request.getSession(true);
            session.setAttribute("LoggedIn", new Boolean("false"));
            response.sendRedirect("index.jsp");
        }
        
        
        //************** EndAllaa **************/
          //************* startAdel ************
        
        //************** EndAdel **************/
        //************* startSherif **************/
        
        //************** EndSherif **************/
        //************* startMoamen **************/
        
        //************** EndMoamen **************/
       
    }

}
