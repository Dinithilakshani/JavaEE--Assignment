package org.example.demo2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo2.BO.BOFactory;
import org.example.demo2.BO.custom.UserBO;
import org.example.demo2.Entity.User;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    UserBO userBO = (UserBO) BOFactory.getBoFactory().getBO(BOFactory.BOTypes.USER);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("Username");
        String password = req.getParameter("Password");

        User user = userBO.findByUserName(username);
        if (user!=null){
            if (password.equals(user.getPassword())){
                if (user.getRole()== User.Role.ADMIN){
                    resp.sendRedirect(req.getContextPath()+"/Dashboard.jsp");
                } else {
                    resp.sendRedirect(req.getContextPath()+"/index.jsp");
                }
            } else {
                req.getSession().setAttribute("error","Password is incorrect!");
                resp.sendRedirect("loginform.jsp?");
            }
        } else {
            req.getSession().setAttribute("error","User Name is does not Exist!");
            resp.sendRedirect("loginform.jsp?");
        }
        System.out.println(username);

    }
}
