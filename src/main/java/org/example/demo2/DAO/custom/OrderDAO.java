package org.example.demo2.DAO.custom;

import org.example.demo2.DAO.CrudDAO;
import org.example.demo2.Entity.Order;

import java.util.List;

public interface OrderDAO extends CrudDAO<Order,String> {
    boolean save(Order order);

    Order findById(String id);

    List<Order> getAll();

    void update(Order order);

    void delete(String id);

    List<Order> findByCustomer(String customerId);
}
