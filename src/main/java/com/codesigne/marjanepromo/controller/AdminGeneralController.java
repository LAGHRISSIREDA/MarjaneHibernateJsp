package com.codesigne.marjanepromo.controller;

import com.codesigne.marjanepromo.DAO.AdminCenterDao;
import com.codesigne.marjanepromo.DAO.AdminGeneralDao;
import com.codesigne.marjanepromo.DAO.CenterDao;
import com.codesigne.marjanepromo.DAO.PromotionDao;
import com.codesigne.marjanepromo.helpers.HashPassword;
import com.codesigne.marjanepromo.helpers.RandomPassword;
import com.codesigne.marjanepromo.helpers.StatusEnum;
import com.codesigne.marjanepromo.model.AdminCenter;
import com.codesigne.marjanepromo.model.AdminGeneral;
import com.codesigne.marjanepromo.model.Center;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AdminGeneralController", value = "/AdminGeneralController")
public class AdminGeneralController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        String newLog = request.getParameter("log");
        AdminCenterDao adCenter = new AdminCenterDao();
        PromotionDao promo = new PromotionDao();
        CenterDao c = new CenterDao();
        AdminCenter ad = new AdminCenter();
        List<Center> listCenter = new ArrayList<>();
        List<AdminCenter> listAdmin = new ArrayList<>();
        Center oneCenter = new Center();
        AdminGeneral a = new AdminGeneral();
        AdminGeneralDao adminGeneralDao = new AdminGeneralDao();
        int numberPrendingPromotion,numberRejectedPromotion,numberAcceptedPromotion;

        if (path.equals("/loginForm.general")) {
            Cookie[] cookies = request.getCookies();
            String log = "0";
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("idGeneral")) {
                    log = cookie.getValue();
                }
            }
            if(log.equals("0")){
                request.getRequestDispatcher("views/admingeneral/login.jsp").forward(request, response);
            }else{
//                request.setAttribute("log",log);
//            request.getRequestDispatcher("/views/client/login.jsp").forward(request, response);
//                request.getRequestDispatcher("views/admingeneral/dashboard.jsp").forward(request, response);
                response.sendRedirect("dashboard.general");
            }
             } else if (path.equals("/logout.general")) {
            Cookie cookie = new Cookie("idGeneral", "0");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
            request.setAttribute("log", "0");
            request.getRequestDispatcher("views/admingeneral/login.jsp").forward(request, response);

        }else if(path.equals("/delete.general")){
            int idToDelete = Integer.parseInt(request.getParameter("id"));
            ad = adCenter.getAdminById(idToDelete);
            oneCenter = ad.getCenter();
            oneCenter.setDispo(true);
            c.updateCenter(oneCenter);
            adCenter.deleteAdmin(idToDelete);
            response.sendRedirect("dashboard.general");
        }else if(path.equals("/dashboard.general")){
            Cookie[] cookies = request.getCookies();
            String log = "0";
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("idGeneral")) {
                    log = cookie.getValue();
                }
            }
            if(log.equals("0")){
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }else{
                numberAcceptedPromotion = promo.getNumberPromotionByStatus(StatusEnum.ACCEPTED.toString()).size();
                numberPrendingPromotion = promo.getNumberPromotionByStatus(StatusEnum.PENDING.toString()).size();
                numberRejectedPromotion = promo.getNumberPromotionByStatus(StatusEnum.REJECTED.toString()).size();
                a = adminGeneralDao.getAdminById(Long.parseLong(log));
                listCenter = c.getAllCenter();
                listAdmin = adCenter.getAllAdmins();

                request.setAttribute("accepted",numberAcceptedPromotion);
                request.setAttribute("rejected",numberRejectedPromotion);
                request.setAttribute("pending",numberPrendingPromotion);
                request.setAttribute("admin",a);
                request.setAttribute("center",listCenter);
                request.setAttribute("admins",listAdmin);
                request.getRequestDispatcher("views/admingeneral/dashboard.jsp").forward(request,response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        List<Center> listCenter = new ArrayList<>();
        CenterDao c = new CenterDao();
        List<AdminCenter> listAdmin = new ArrayList<>();
        Center oneCenter = new Center();
        AdminCenterDao adCenter = new AdminCenterDao();
        AdminGeneralDao ad = new AdminGeneralDao();
        AdminGeneral a = new AdminGeneral();


        if(path.equals("/verify.general")){
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            a = ad.validateAdminLogin(email,password);


            if(a!=null){

                    Cookie ck = new Cookie("idGeneral", String.valueOf(a.getId()));//creating cookie object
                    ck.setMaxAge(24 * 60 * 60);//setting cookie to expiry in 1 day
                    response.addCookie(ck);//adding cookie in the response
//                    request.setAttribute("log",String.valueOf(a.getId()));
                    response.sendRedirect("dashboard.general");
//                    request.getRequestDispatcher("views/admingeneral/dashboard.jsp").forward(request,response);
            }else{
                String message = "Incorrect Email or Password !";
                request.setAttribute("message",message);
                request.getRequestDispatcher("views/admingeneral/login.jsp").forward(request,response);
            }

        }else if(path.equals("/create.general")){
                Cookie[] cookies = request.getCookies();
                String log = "0";
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("idGeneral")) {
                        log = cookie.getValue();
                    }
                }

                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String email = request.getParameter("email");
                String password = RandomPassword.generateCode();
                int idCenter = Integer.parseInt(request.getParameter("center"));
                int idGeneral = Integer.parseInt(log);

                AdminCenter ac = new AdminCenter();
                    ac.setFirstname(firstname);
                    ac.setLastname(lastname);
                    ac.setEmail(email);
                    ac.setEmail(email);
                    ac.setPassword(password);
                    oneCenter = c.getCenterById(idCenter);
                    ac.setCenter(oneCenter);
                    oneCenter.setDispo(false);
                    c.updateCenter( oneCenter);
                    ac.setAdminGeneral(ad.getAdminById(idGeneral));

                //add new center admin
            try {
                adCenter.createAdmin(ac);
                response.sendRedirect("dashboard.general");
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }
}
