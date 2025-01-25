package org.example.demo2.DAO.custom.impl;


import org.example.demo2.Entity.Category;
import org.example.demo2.config.SessionFactoryConfig;
import org.example.demo2.DAO.custom.CategoryDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class CategaryDAOImpl implements CategoryDAO {

    @Override
    public boolean save(Category category) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()){
            Transaction transaction = session.beginTransaction();
            session.persist(category);
            transaction.commit();
        }
        return false;
    }

    @Override
    public Category findById(String id) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()){

            return session.get(Category.class,id);

        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Category> getAll() {
        try (Session session = SessionFactoryConfig.getInstance().getSession()){
            Query<Category> query = session.createQuery("FROM Category ",Category.class);
            return query.list();
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void update(Category category) {

        try (Session session = SessionFactoryConfig.getInstance().getSession()){
            Transaction transaction = session.beginTransaction();
            session.merge(category);
            transaction.commit();

        }

    }

    @Override
    public void delete(String id) {

        try (Session session = SessionFactoryConfig.getInstance().getSession()){
            Transaction transaction = session.beginTransaction();
            Category category = session.get(Category.class,id);
            if (category != null){
                session.remove(category);
            }
            transaction.commit();
        }
    }

    @Override
    public Category findByName(String name) {
        try (Session session = SessionFactoryConfig.getInstance().getSession()){
            Query<Category> query = session.createQuery("from Category where name = ?", Category.class);
            query.setParameter(1,name);
            return query.uniqueResult();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }
    }

