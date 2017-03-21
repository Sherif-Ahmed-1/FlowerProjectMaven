/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import java.util.Date;

/**
 *
 * @author alaa
 */
public class OrderServicee {
    
    public boolean isBirthdayToday(String date){
     
//        String dob="02/27/2013";
//    Date today = new Date();
//
//    try {
//        Date dobDate = new SimpleDateFormat("MM/dd/yyyy").parse(dob);
//
//        if (dobDate.compareTo(today) <= 0) {
//            //before or equals today
//            System.out.println("before");
//        }
//    } catch (ParseException e) {
//        //handle exception
//    }
        
        
        if (date.equals(new Date())){
            return true;
        }else {
            return false;
        }         
    }
    
}
