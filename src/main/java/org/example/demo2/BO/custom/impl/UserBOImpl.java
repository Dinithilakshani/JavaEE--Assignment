package org.example.demo2.BO.custom.impl;


import org.example.demo2.BO.custom.UserBO;
import org.example.demo2.DAO.DAOFactory;
import org.example.demo2.DAO.custom.UserDAO;
import org.example.demo2.Entity.User;
public class UserBOImpl implements UserBO {

    UserDAO userDAO = (UserDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DAOTypes.USER);
    @Override
    public boolean savUser(User user) {
        return userDAO.save(user);
    }

    @Override
    public User findByUserName(String userName) {
        return userDAO.findByUserName(userName);
    }
}
