package com.codesigne.marjanepromo.DAO;

import com.codesigne.marjanepromo.helpers.StatusEnum;
import com.codesigne.marjanepromo.model.AdminCenter;
import com.codesigne.marjanepromo.model.Promotion;


import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

public class PromotionDao extends AbstractHibernateDao<Promotion>{

    public PromotionDao(){
        tableName = "promotion";
        setClazz(Promotion.class);
    }

    //get all promotion enter 8 and 12

    public Promotion getPromotionByCategory(long idCat) {
        LocalTime currentTime = LocalTime.now();
        if (currentTime.isAfter(LocalTime.of(8, 0)) && currentTime.isBefore(LocalTime.of(9, 30))) {
            System.out.println("teeeeeeeeeeeest");
        return jpaService.runInTransaction(entityManager -> {
            return entityManager.createQuery("select p from Promotion p where p.subCategory.id=:id", Promotion.class)
                    .setParameter("id",idCat)
                    .getSingleResult();
        });
        }else{
            return null;
        }
    }

    //liste promotion
    public List getAllPromotionByIdAdmin(Long id){
        List<Promotion> promotions = new ArrayList<>();
        promotions = jpaService.runInTransaction(entityManager -> {
            return entityManager.createQuery("select p from Promotion p where p.adminCenter.id=:id", Promotion.class)
                    .setParameter("id", id)
                    .getResultList();
        });
        return promotions;
    }

    //getone promotion
    public Promotion getOnePromotion(long id){
        return findOne(id);
    }

    //get promotions by id category
    public List getAllPromotionByIdCategory(Long id){
        List<Promotion> promotions = new ArrayList<>();
        LocalTime currentTime = LocalTime.now();
        if (currentTime.isAfter(LocalTime.of(8, 0)) && currentTime.isBefore(LocalTime.of(12, 30))) {

                 promotions = jpaService.runInTransaction(entityManager -> {
                     return entityManager.createQuery("SELECT p FROM Promotion p WHERE p.subCategory.id=:id", Promotion.class)
                    .setParameter("id",id)
                    .getResultList();
        });
        }else{
            return null;
        }
        return promotions;
    }


    //create promotion

    public boolean createPromotion(Promotion p){
        p.setStatus(StatusEnum.PENDING.toString());
        return create(p);
    }

    public Promotion updateStatus(Promotion p,String status){
        p.setStatus(status.toUpperCase());
        return update(p);
    }

    //get number of PENDING Promotion
    public List getNumberPromotionByStatus(String status){
        return jpaService.runInTransaction(entityManager -> {
            return entityManager.createQuery("SELECT p FROM Promotion  p WHERE p.status like :status")
                    .setParameter("status",status)
                    .getResultList();
        });
    }

    public static void main(String[] args) {
//        Promotion p = new Promotion();
//        PromotionDao po = new PromotionDao();
//        AdminCenterDao ad = new AdminCenterDao();
//        SubCategoryDao sub = new SubCategoryDao();
//        p.setAdminCenter(ad.getAdminById(2L));
//        p.setSubCategory(sub.getCategoryById(1L));
//
//        p.setDate(Date.from(Instant.now()));
//
//        po.createPromotion(p);

        //========================change status
      PromotionDao p = new PromotionDao();
//        AdminCenter ac = new AdminCenter();
//        AdminCenterDao a = new AdminCenterDao();
//        ac = a.getAdminById(1L);
//        System.out.println(ac.getId());
//        List<Promotion> promotions = new ArrayList<>();
//        promotions = p.getAllPromotionByIdAdmin(ac.getId());
//        for(Promotion pp:promotions){
//            System.out.println(pp.getStatus());
//        }
//        promotion = p.findOne(3L);
//        String status = StatusEnum.ACCEPTED.toString();
//        p.updateStatus(promotion,status);

        //=============================afficher promo
//        Promotion pp = new Promotion();
//        SubCategoryDao sub = new SubCategoryDao();
//        pp = p.getPromotionByCategory(1L);
//            if(pp == null){
//                System.out.println("there is no promotions");
//            }else{
//                System.out.println("Promotion Number ===> "+pp.getId()+ " ==> Status : "+pp.getStatus()+ " , Date ===>> "+ pp.getDate()+" ----\n SubCategory : "+pp.getSubCategory().getName());
//            }
    }


}
