package org.example.demo2.DAO.custom;



import org.example.demo2.DAO.CrudDAO;
import org.example.demo2.Entity.Product;

import java.util.List;

public interface ProductDAO extends CrudDAO<Product,String> {
    boolean save(Product product);

    Product findById(String id);

    List<Product> getAll();

    void update(Product product);

    void delete(String id);

    List<Product> findByName(String name);

    List<Product> findByCategory(String categoryId);
}
