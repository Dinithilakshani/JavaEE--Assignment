package org.example.demo2.DAO.custom.impl;



import org.example.demo2.Entity.Order;
import org.example.demo2.config.SessionFactoryConfig;
import org.example.demo2.DAO.custom.OrderDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class OrderDAOImpl implements OrderDAO {

    @Override
    public boolean save(Order order) {

        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.persist(order);
            transaction.commit();
        }
        return false;
    }

    @Override
    public Order findById(String id) {

        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            return session.get(Order.class, id);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Order> getAll() {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Query<Order> query = session.createQuery("FROM Order ", Order.class);
            return query.list();
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void update(Order order) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.merge(order);
            transaction.commit();
        }

    }

    @Override
    public void delete(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            Order order = session.get(Order.class, id);
            if (order != null) {
                session.remove(order);
            }
            transaction.commit();
        }
    }

    @Override
    public List<Order> findByCustomer(String customerId) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Query<Order> query = session.createQuery("FROM Order WHERE user_id = :userId", Order.class);
            query.setParameter("userId", customerId);
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }
    }

