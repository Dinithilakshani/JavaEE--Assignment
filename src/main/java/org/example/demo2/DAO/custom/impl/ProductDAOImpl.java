package org.example.demo2.DAO.custom.impl;



import org.example.demo2.Entity.Product;
import org.example.demo2.config.SessionFactoryConfig;
import org.example.demo2.DAO.custom.ProductDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class ProductDAOImpl implements ProductDAO {

    @Override
    public boolean save(Product product) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.persist(product);
            transaction.commit();
        }

        return false;
    }

    @Override
    public Product findById(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            return session.get(Product.class, id);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Product> getAll() {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Query<Product> query = session.createQuery("FROM Product", Product.class);
            return query.list();
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void update(Product product) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            session.merge(product);
            transaction.commit();
        }
    }

    @Override
    public void delete(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();
            Product product = session.get(Product.class, id);
            if (product != null) {
                session.remove(product);
            }
            transaction.commit();
        }
    }

    @Override
    public List<Product> findByName(String name) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Query<Product> query = session.createQuery("FROM Product WHERE name = :name", Product.class);
            query.setParameter("name", name);
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public List<Product> findByCategory(String categoryId) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()) {
            Query<Product> query = session.createQuery("FROM Product WHERE category.id = :categoryId", Product.class);
            query.setParameter("categoryId", categoryId);
            return query.list();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }
    }

