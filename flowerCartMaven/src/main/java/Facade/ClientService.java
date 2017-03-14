/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Client;
import dao.ClientDao;
import java.util.ArrayList;

/**
 *
 * @author Sheko
 */
public class ClientService {

    static ArrayList<String> loginEmails = new ArrayList<>();

    private boolean isloggedIn(String email) {
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
        if (!clientDao.existMail(client)) {
            return clientDao.insertClient(client);
        }
        return false;
    }
}
