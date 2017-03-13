/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminFacade;

import Entities.ImageEntity;
import Entities.Product;
import dao.ProductDoa;
import dao.ProductImageDao;

/**
 *
 * @author Adel Zaid
 */
public class ProductService {

    public boolean addProduct(Product product, String imgPath) {
        ProductDoa productDoa = new ProductDoa();
        ProductImageDao productImageDao = new ProductImageDao();
        ImageEntity imageEntity = new ImageEntity();
        if (productDoa.insertProduct(product)) {
            imageEntity.setUrl(imgPath);
            int s=productDoa.selectProductId(product.getName());
            imageEntity.setProductID(s);
            productImageDao.insertProductImage(imageEntity);
            return true;
        }
        else
            return false;
    }
}
