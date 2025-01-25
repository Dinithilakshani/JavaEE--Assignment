package org.example.demo2.DAO.custom.impl;


import org.example.demo2.Entity.Cart;
import org.example.demo2.config.SessionFactoryConfig;
import org.example.demo2.DAO.custom.CartDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CartDAOImpl implements CartDAO {

    @Override
    public boolean save(Cart cart) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.persist(cart);
            transaction.commit();
        }


        return false;
    }

    @Override
    public Cart findById(String id) {

        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            return session.get(Cart.class, id);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Cart> getAll() {
        return null;
    }

    @Override
    public void update(Cart cart) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.merge(cart);
            transaction.commit();
        }

    }

    @Override
    public void delete(String id) {

            try (Session session = SessionFactoryConfig.getInstance().getSession()) {
                Transaction transaction = session.beginTransaction();
                Cart cart = session.get(Cart.class, id);
                if (cart != null) {
                    session.remove(cart);
                }
                transaction.commit();
            }
        }

    }

