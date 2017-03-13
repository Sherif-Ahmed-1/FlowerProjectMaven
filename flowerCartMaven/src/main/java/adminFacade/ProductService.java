/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminFacade;

import Entities.Product;
import dao.ProductDoa;

/**
 *
 * @author Adel Zaid
 */
public class ProductService {
    public boolean addProduct(Product product){
        ProductDoa productDoa=new ProductDoa();
        return productDoa.insertProduct(product);
    } 
}
