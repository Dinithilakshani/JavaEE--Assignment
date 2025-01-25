package org.example.demo2.BO.custom;


import org.example.demo2.BO.SuperBO;
import org.example.demo2.Entity.User;

public interface UserBO extends SuperBO {
    boolean savUser(User user);

    User findByUserName(String userName);
}
