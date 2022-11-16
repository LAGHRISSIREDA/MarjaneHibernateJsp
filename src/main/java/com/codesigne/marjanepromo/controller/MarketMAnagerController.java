package com.codesigne.marjanepromo.controller;

import com.codesigne.marjanepromo.DAO.MarketManagerDao;
import com.codesigne.marjanepromo.DAO.PromotionDao;
import com.codesigne.marjanepromo.DAO.SubCategoryDao;
import com.codesigne.marjanepromo.helpers.StatusEnum;
import com.codesigne.marjanepromo.model.MarketManager;
import com.codesigne.marjanepromo.model.Promotion;
import com.codesigne.marjanepromo.model.SubCategory;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "MarketMAnagerController", value = "/MarketMAnagerController")
public class MarketMAnagerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        SubCategory subCategory = new SubCategory();
        SubCategoryDao subCategoryDao = new SubCategoryDao();
        Promotion promotion = new Promotion();
        List<Promotion> promotions = new ArrayList<>();
        PromotionDao promo = new PromotionDao();
        MarketManagerDao marketManagerDao = new MarketManagerDao();
        MarketManager marketManager = new MarketManager();


        if (path.equals("/login.manager")) {
            Cookie[] cookies = request.getCookies();
            String log = "0";
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("idManager")) {
                    log = cookie.getValue();
                }
            }
            if (log.equals("0")) {
                request.getRequestDispatcher("views/marketmanager/login.jsp").forward(request, response);
            } else {
//                request.setAttribute("log",log);
//            request.getRequestDispatcher("/views/client/login.jsp").forward(request, response);
//                request.getRequestDispatcher("views/admingeneral/dashboard.jsp").forward(request, response);

                response.sendRedirect("dashboard.general");
            }
        }else if(path.equals("/dashboard.manager")){
            Cookie[] cookies = request.getCookies();
            String log = "0";
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("idManager")) {
                    log = cookie.getValue();
                }
            }
            if(log.equals("0")){
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }else{

//                marketManager = marketManagerDao.getMarketManagerById(Long.valueOf(log));
//                subCategory = subCategoryDao.getCategoryById(marketManager.getId());
//                promotions = promo.getAllPromotionByIdCategory(subCategory.getId());
                  marketManager = marketManagerDao.getMarketManagerById(Long.valueOf(log));
                  Long idSubcategory = marketManager.getSubCategory().getId();
                  subCategory = subCategoryDao.getCategoryById(idSubcategory);
                  promotions = promo.getAllPromotionByIdCategory(idSubcategory);

                request.setAttribute("subcategory",subCategory);
                request.setAttribute("listPromotions",promotions);
                request.setAttribute("admin",marketManager);
                request.getRequestDispatcher("views/marketmanager/dashboard.jsp").forward(request,response);
            }
        }else if(path.equals("/logout.manager")){
            Cookie cookie = new Cookie("idManager", "0");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
            request.setAttribute("log", "0");
            request.getRequestDispatcher("views/marketmanager/login.jsp").forward(request, response);

        }else if(path.equals("/accepter.manager")){
            long idToAccept =  Long.parseLong(request.getParameter("id"));

            promotion = promo.getOnePromotion(idToAccept);
            promotion.setStatus(StatusEnum.ACCEPTED.toString());
            promo.update(promotion);
            response.sendRedirect("dashboard.manager");

        }else if(path.equals("/rejecter.manager")){
            long idToReject = Long.parseLong(request.getParameter("id"));

            promotion = promo.getOnePromotion(idToReject);
            promotion.setStatus(StatusEnum.REJECTED.toString());
            promo.update(promotion);
            response.sendRedirect("dashboard.manager");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String path = request.getServletPath();
            MarketManager marketManager = new MarketManager();
            MarketManagerDao marketManagerDao = new MarketManagerDao();

            if(path.equals("/verify.manager")){
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                marketManager = marketManagerDao.validateMarketManagerLogin(email,password);

                if(marketManager != null){
                    Cookie ck = new Cookie("idManager", String.valueOf(marketManager.getId()));//creating cookie object
                    ck.setMaxAge(24 * 60 * 60);//setting cookie to expiry in 1 day
                    response.addCookie(ck);//adding cookie in the response
                    response.sendRedirect("dashboard.manager");
                }else{
                    String message = "Incorrect Email or Password !";
                    request.setAttribute("message",message);
                    request.getRequestDispatcher("views/marketmanager/login.jsp").forward(request,response);
                }
            }
    }
}
