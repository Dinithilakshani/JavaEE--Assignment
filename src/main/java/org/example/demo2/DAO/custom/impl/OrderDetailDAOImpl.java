package org.example.demo2.DAO.custom.impl;



import org.example.demo2.Entity.OrderDetail;
import org.example.demo2.config.SessionFactoryConfig;
import org.example.demo2.DAO.custom.OrderDetailDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class OrderDetailDAOImpl implements OrderDetailDAO {

    @Override
    public void update(OrderDetail entity) {

    }

    @Override
    public OrderDetail findById(String s) {
        return null;
    }

    @Override
    public List<OrderDetail> getAll() {
        return null;
    }

    @Override
    public boolean save(OrderDetail orderDetail) {

        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.persist(orderDetail);
            transaction.commit();
        }
        return false;
    }

    @Override
    public List<OrderDetail> findByOrderId(String orderId) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Query<OrderDetail> query = session.createQuery("FROM OrderDetail WHERE order.id = :orderId", OrderDetail.class);
            query.setParameter("orderId", orderId);
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void delete(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            OrderDetail orderDetail = session.get(OrderDetail.class, id);
            if (orderDetail != null) {
                session.remove(orderDetail);
            }
            transaction.commit();
        }
    }
    }

