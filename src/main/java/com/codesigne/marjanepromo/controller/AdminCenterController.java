package com.codesigne.marjanepromo.controller;

import com.codesigne.marjanepromo.DAO.*;
import com.codesigne.marjanepromo.helpers.RandomPassword;
import com.codesigne.marjanepromo.model.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AdminCenterController", value = "/AdminCenterController")
public class AdminCenterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
//        List<SubCategory> listSubCategory = new ArrayList<>();
        SubCategoryDao subCategoryDao = new SubCategoryDao();
        SubCategory subCategory = new SubCategory();
        List<MarketManager> listMarketManager = new ArrayList<>();
        MarketManager marketManager =new MarketManager();
        List<Promotion> listPromotion = new ArrayList<>();
        PromotionDao promotionDao = new PromotionDao();
        List<SubCategory> listSubcategory = new ArrayList<>();
        MarketManagerDao marketManagerDao = new MarketManagerDao();
        AdminCenter adCenter = new AdminCenter();
        AdminCenterDao ad = new AdminCenterDao();


        if (path.equals("/login.center")) {
            request.getRequestDispatcher("views/admincenter/login.jsp").forward(request, response);
        } else if (path.equals("/dashboard.center")) {
            Cookie[] cookies = request.getCookies();
            String log = "0";
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("idCenter")) {
                    log = cookie.getValue();
                }
            }
            if (log.equals("0")) {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                listSubcategory = subCategoryDao.getAllCategories();
                listMarketManager = marketManagerDao.getAllMarketManager();
                listPromotion = promotionDao.getAllPromotionByIdAdmin(Long.valueOf(log));
                adCenter = ad.getAdminById(Long.parseLong(log));
                //setattribute
//                request.setAttribute("listSubcategory",listSubcategory);
                request.setAttribute("admin", adCenter);
                request.setAttribute("listSubcategory",listSubcategory);
                request.setAttribute("listMarketManager", listMarketManager);
                request.setAttribute("listPromotion",listPromotion);
                request.getRequestDispatcher("views/admincenter/dashboard.jsp").forward(request, response);
            }
        } else if (path.equals("/logout.center")) {
            Cookie cookie = new Cookie("idCenter", "0");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
            request.setAttribute("log", "0");
            request.getRequestDispatcher("views/admincenter/login.jsp").forward(request, response);

        }else if(path.equals("/delete.center")){
            int idToDalete = Integer.parseInt(request.getParameter("id"));
            marketManager = marketManagerDao.getMarketManagerById((long) idToDalete);
            subCategory = marketManager.getSubCategory();
            subCategory.setDispo(true);
            subCategoryDao.update(subCategory);
            marketManagerDao.deleteById(idToDalete);
            response.sendRedirect("dashboard.center");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String path = request.getServletPath();
        AdminCenter adCenter = new AdminCenter();
        AdminCenterDao adCenterDao = new AdminCenterDao();
        SubCategory subCategory = new SubCategory();
        SubCategoryDao subCategoryDao = new SubCategoryDao();
        MarketManagerDao marketManagerDao = new MarketManagerDao();
        Promotion promotion = new Promotion();
        PromotionDao promotionDao = new PromotionDao();

        if (path.equals("/verify.center")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            adCenter = adCenterDao.validateAdminLogin(email,password);

            if(adCenter != null){
                Cookie ck = new Cookie("idCenter", String.valueOf(adCenter.getId()));//creating cookie object
                ck.setMaxAge(24 * 60 * 60);//setting cookie to expiry in 1 day
                response.addCookie(ck);//adding cookie in the response
                response.sendRedirect("dashboard.center");
            }else{
                String message = "Incorrect Email or Password !";
                request.setAttribute("message",message);
                request.getRequestDispatcher("views/admincenter/login.jsp").forward(request,response);
            }
        }else if(path.equals("/create.center")){
            Cookie[] cookies = request.getCookies();
            String log = "0";
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("idCenter")) {
                    log = cookie.getValue();
                }
            }

            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String password = RandomPassword.generateCode();
            int idCat = Integer.parseInt(request.getParameter("category"));
            int idCenter = Integer.parseInt(log);

            MarketManager mm = new MarketManager();
            mm.setFirstname(firstname);
            mm.setLastname(lastname);
            mm.setEmail(email);
            mm.setPassword(password);
            adCenter = adCenterDao.getAdminById(idCenter);
            subCategory = subCategoryDao.getCategoryById(idCat);
            mm.setSubCategory(subCategory);
            subCategory.setDispo(false);
            subCategoryDao.update(subCategory);
            mm.setAdminCenter(adCenter);
            try {
                marketManagerDao.createMarketManager(mm);
                response.sendRedirect("dashboard.center");
            }catch(Exception e){
                throw new RuntimeException(e);
            }
        }else if(path.equals("/promotion.center")){
            Cookie[] cookies = request.getCookies();
            String log = "0";
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("idCenter")) {
                    log = cookie.getValue();
                }
            }
            LocalDate datestart = LocalDate.parse(request.getParameter("dateend"));
            LocalDate dateend = LocalDate.parse(request.getParameter("dateend"));
            Integer pointfidelite = Integer.valueOf(request.getParameter("pointfidelite"));
            int idCenter = Integer.parseInt(log);
            int idCat = Integer.parseInt(request.getParameter("category"));
            adCenter = adCenterDao.getAdminById(idCenter);
            subCategory = subCategoryDao.getCategoryById(idCat);

            //insert value into promotion object
            promotion.setDateStart(datestart);
            promotion.setDateEnd(dateend);
            promotion.setPoint(pointfidelite);
            promotion.setAdminCenter(adCenter);
            promotion.setSubCategory(subCategory);

            //insert into database

            try {
                promotionDao.createPromotion(promotion);
                response.sendRedirect("dashboard.center");
            }catch(Exception e){
                throw new RuntimeException(e);
            }

        }
    }
}
