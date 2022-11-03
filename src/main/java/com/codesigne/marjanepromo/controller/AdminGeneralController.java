package com.codesigne.marjanepromo.controller;

import com.codesigne.marjanepromo.DAO.AdminGeneralDao;
import com.codesigne.marjanepromo.model.AdminGeneral;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Objects;

//@WebServlet(name = "AdminGeneralController", value = "/AdminGeneralController")
public class AdminGeneralController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if(path.equals("/loginForm.general")){
            request.getRequestDispatcher("views/admingeneral/loginGeneral.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String path = request.getServletPath();


    //verify login
//        if(path.equals("/login.general")){
//            AdminGeneralDao ad = new AdminGeneralDao();
//            AdminGeneral a = new AdminGeneral();
//            String email = request.getParameter("email");
//            String password = request.getParameter("password");
//
//            a = ad.validateAdminLogin(email,password);
//
//            if(Objects.isNull(a)){
//                String alert = "Incorrect Email Or Password !";
//                request.setAttribute("alert",alert);
//                request.getRequestDispatcher("/views/admingeneral/loginGeneral.jsp").forward(request,response);
//             }else{
//
////                    int id = (int) a.getId();
//                request.getRequestDispatcher("/views/admingeneral/dashboardGeneral.jsp").forward(request,response)   ;
//
//            }
//        }
        String path = request.getServletPath();
        if(path.equals("/login.general")){
            AdminGeneralDao a = new AdminGeneralDao();
            AdminGeneral admin = new AdminGeneral();

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            admin = a.validateAdminLogin(email,password);

            if(Objects.isNull(admin)){
                String alert = "Your Password or Email is Incorrect";
                request.setAttribute("alert",alert);
                request.getRequestDispatcher("/views/admingeneral/loginGeneral.jsp").forward(request,response);
            }else{
//                a.setIdAdmin(admin.getIdAdmin());
//                a.setEmailAdmin(admin.getEmailAdmin());
//                a.setMotCle(admin.getEmailAdmin());
                request.setAttribute("result",admin);
                request.getRequestDispatcher("/views/admingeneral/dashboardGeneral.jsp").forward(request,response);
            }
        }
    }
}
