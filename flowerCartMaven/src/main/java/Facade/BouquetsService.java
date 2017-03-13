/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Product;
import dao.ProductDoa;
import java.util.ArrayList;
/**
 *
 * @author alaa
 */
public class BouquetsService {
    
    public ArrayList<Product> getBouquetsFormFlower(int id )
    {
        ProductDoa pDao = new ProductDoa();
        return pDao.selectProductsByFlower(id);
    }  
    
    public ArrayList<Product> getBouquetsFormCategory(int id )
    {
        ProductDoa pDao = new ProductDoa();
        return pDao.selectProductsByCategory(id);
    }  

    public Product getBouquetById(int id) {
        ProductDoa pDao = new ProductDoa();
        return pDao.selectOneProduct(id);
    }
}
