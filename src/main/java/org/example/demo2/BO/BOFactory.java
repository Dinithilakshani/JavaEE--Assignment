package org.example.demo2.BO;


import org.example.demo2.BO.custom.impl.UserBOImpl;

import static org.example.demo2.DAO.DAOFactory.DAOTypes.USER;

public class BOFactory {
    private static BOFactory boFactory;
    private BOFactory(){}

    public static BOFactory getBoFactory(){return (boFactory==null)?boFactory=new BOFactory():boFactory;}

    public enum BOTypes{
        CATEGORY, USER
    }
    public SuperBO getBO(BOTypes types){
        switch (types){
            case USER:
                return new UserBOImpl();
            default:
                return null;
        }
    }
}
