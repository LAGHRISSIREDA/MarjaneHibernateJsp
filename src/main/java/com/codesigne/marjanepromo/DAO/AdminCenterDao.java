package com.codesigne.marjanepromo.DAO;

import com.codesigne.marjanepromo.model.AdminCenter;
import com.codesigne.marjanepromo.model.Center;
import com.codesigne.marjanepromo.utils.SendMail;
import jakarta.persistence.NoResultException;


import java.util.ArrayList;
import java.util.List;

import static com.codesigne.marjanepromo.utils.Security.checkPassword;
import static com.codesigne.marjanepromo.utils.Security.hashPassword;


public class AdminCenterDao extends AbstractHibernateDao<AdminCenter>{

    public AdminCenterDao(){
        tableName = "admincenter";
        setClazz(AdminCenter.class);
    }

    public List getAllAdmins() {
        return findAll();
    }

    public AdminCenter getAdminById(long id){
        return findOne(id);
    }

    //getadmin by email
    public AdminCenter  getAdminByEmail(String email){
        AdminCenter ad;
       try {
           ad =  jpaService.runInTransaction(entityManager -> {
               return  entityManager.createQuery("select a from AdminCenter a where  a.email = :email",AdminCenter.class)
                       .setParameter("email",email)
                       .getSingleResult();
           });
       }catch(NoResultException nre){
           return null;
       }
       return ad;

    }

    public void deleteAdmin(long id){
        deleteById(id);
    }


    //Verify login

    public AdminCenter validateAdminLogin(String email ,String password){
        AdminCenter admin = getAdminByEmail(email);
        if(admin == null){
            return null;
        }
        if(checkPassword(password, admin.getPassword())){
            return admin;
        }else{
            return null;
        }
    }

    //create admin center

    public boolean createAdmin(AdminCenter admin) throws Exception {
        String message = "Your password is : "+admin.getPassword();
        SendMail.sendMail(admin.getEmail(),message);
        admin.setPassword(hashPassword(admin.getPassword()));
        return create(admin);
    }


    //test functions
    public static void main(String[] args) {
//        AdminCenter ad = new AdminCenter();
//       ad.setFirstname("reda");
//        ad.setLastname("laghrissi");
//        ad.setEmail("laghrissi.reda01@gmail.com");
//        ad.setPassword("test1234");
        CenterDao center = new CenterDao();
        center.deleteById(17L);
//        ad.setCenter(center.getCenterById(3));
//        AdminGeneralDao aaa= new AdminGeneralDao();
//        ad.setAdminGeneral(aaa.getAdminById(1));
//        AdminCenterDao a = new AdminCenterDao();
//        a.createAdmin(ad);
//        List<AdminCenter> list = new ArrayList<>();

//        list = a.getAllAdmins();
//        System.out.println(list);
//        for(AdminCenter aa:list)
//            System.out.println(aa.toString());
//        a.createAdmin(ad);
//
        //===========================tester login

//        ad = a.validateAdminLogin("laghrissi.reda01@gmail.com","test1234");
//        if(ad == null){
//            System.out.println("Incorrect password ormail !");
//        }else{
//            System.out.println("Welcome :"+ad.getFirstname()+" === >You are Connected");
//        }
    }

}
