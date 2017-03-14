/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Client;
import Entities.Order;
import adminFacade.ClientService;
import dao.OrderDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Moamenovic
 */
@WebServlet(name = "ViewClientServlet", urlPatterns = {"/ViewClientServlet"})
public class ViewClientServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String str = request.getParameter("ClientID");
        System.out.println(str);
        str = str.replaceAll("\\s+", "");
        ClientService cs = new ClientService();
        Client c = cs.getClientById(Integer.parseInt(str));
        OrderDao orderDao = new OrderDao();
        List<Order> o = orderDao.selectOrdersByClientID(Integer.parseInt(str));
        request.setAttribute("orders", o);
        request.setAttribute("client", c);

//        RequestDispatcher rd = request.getRequestDispatcher("/AdminView/ViewClient.jsp");
//        rd.include(request, response);
//        response.sendRedirect("/FlowerCart/AdminView/ViewClient.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
