/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Cart;
import Entities.Client;
import dao.CartDao;
import dao.ClientDao;
import java.util.ArrayList;

/**
 *
 * @author Sheko
 */
public class ClientService {

    static ArrayList<String> loginEmails = new ArrayList<>();

synchronized private boolean isloggedIn(String email) {
       for(String userMail:loginEmails)
           if(userMail.equalsIgnoreCase(email))
               return true;
       loginEmails.add(email);
       return false;
    }

    public boolean Login(String email, String password) {
        if(isloggedIn(email))
            return false;
        Client client = new Client();
        client.setMail(email);
        client.setPassword(password);
        ClientDao clientDao = new ClientDao();
        return clientDao.validclient(client);
    }

    public boolean signUp(Client client) {

        ClientDao clientDao = new ClientDao();
        
        Client clientInfo;
        if (!clientDao.existMail(client)) {
            
             clientDao.insertClient(client);
             clientInfo = clientDao.selectByEmail(client.getMail());
             CartDao cartDao=new CartDao();
             Cart cart=new Cart();
             cart.setCustomerId(clientInfo.getId());
             cartDao.insertCart(cart);
        }
        return false;
    }
    
    public Client getUser(String mail){
        ClientDao clientDao = new ClientDao();
        return clientDao.selectByEmail(mail);
    }
}
