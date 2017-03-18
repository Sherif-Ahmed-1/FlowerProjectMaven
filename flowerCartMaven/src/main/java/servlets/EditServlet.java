/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Client;
import Facade.ClientService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alaa
 */
@WebServlet(name = "EditServlet", urlPatterns = {"/EditServlet"})
public class EditServlet extends HttpServlet {

    ClientService clientService;
    String newpassword;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        clientService = new ClientService();
        Client user = (Client) request.getSession().getAttribute("user");
        String mail = user.getMail();
        System.out.println("mailll " + mail);

        String oldpassword = request.getParameter("password");
        newpassword = request.getParameter("newpassword");
        System.out.println("password " + request.getParameter("password"));
        System.out.println("newpassword " + request.getParameter("newpassword"));

        request.setAttribute("PasswordWrong", false);
        request.getSession().setAttribute("PasswordDiv", true);

        if (clientService.CheckPassword(mail, oldpassword)) {
            System.out.println("find user");
            request.getSession().setAttribute("PasswordDiv", false);
            RequestDispatcher dis = request.getRequestDispatcher("EditAccount.jsp");
            dis.include(request, response);
           request.getSession().setAttribute("PasswordDiv", true);

        } else {
            System.out.println("not found user");
            request.setAttribute("PasswordWrong", true);
            RequestDispatcher dis = request.getRequestDispatcher("EditAccount.jsp");
            dis.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
