/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Category;
import Entities.Product;
import Entities.Flower;
import dao.CategoryDao;
import dao.FlowerDao;
import dao.ProductDoa;
import java.util.ArrayList;

/**
 *
 * @author alaa
 */
public class HomeService {

    public ArrayList<Category> getCategories() {
        CategoryDao cDao = new CategoryDao();
        return new ArrayList<Category>(cDao.selectAll());
    }

    public ArrayList<Product> getProducts() {
        ProductDoa pDao = new ProductDoa();
        return pDao.selectAllProducts();
    }

    public ArrayList<Flower> getFlowers() {
        FlowerDao fDao = new FlowerDao();
        return fDao.selectAllFlowers();
    }

}
