package org.example.demo2.custom;


import org.example.demo2.Entity.Cart;

public interface CartDAO extends CrudDAO<Cart,String> {
    boolean save(Cart cart);

    Cart findById(String id);

    void update(Cart cart);

    void delete(String id);
}
