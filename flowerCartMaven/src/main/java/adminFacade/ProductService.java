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
import java.util.List;

/**
 *
 * @author Adel Zaid
 */
public class ProductService {

    public boolean addProduct(Product product, List<String> imgPaths) {
        ProductDoa productDoa = new ProductDoa();
        ProductImageDao productImageDao = new ProductImageDao();
        ImageEntity imageEntity =null;
        if (productDoa.insertProduct(product)) {
            for (String imgPath : imgPaths) {
                imageEntity=new ImageEntity();
                imageEntity.setUrl(imgPath);
                imageEntity.setProductID( productDoa.selectProductId(product.getName()));
                productImageDao.insertProductImage(imageEntity);
            }

            return true;
        } else {
            return false;
        }
    }
}
