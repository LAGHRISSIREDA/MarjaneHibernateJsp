package com.codesigne.marjanepromo.DAO;

import com.codesigne.marjanepromo.model.AdminGeneral;
import jakarta.persistence.NoResultException;


import java.util.List;

import static com.codesigne.marjanepromo.utils.Security.checkPassword;
import static com.codesigne.marjanepromo.utils.Security.hashPassword;


public class AdminGeneralDao extends AbstractHibernateDao<AdminGeneral>{

    public AdminGeneralDao(){
        tableName = "admingeneral";
        setClazz(AdminGeneral.class);
    }

    // find all admins
    public List getAllAdmins() {
        return findAll();
    }

    // find one admin by id
    public AdminGeneral getAdminById(long id) {
        return findOne(id);
    }

    // find one admin by email
    public AdminGeneral getAdminByEmail(String email) {
        AdminGeneral ad;
        try{
            ad =jpaService.runInTransaction(entityManager -> {
                return entityManager.createQuery("select a from AdminGeneral a WHERE a.email = :email", AdminGeneral.class)
                        .setParameter("email", email).getSingleResult();

            });
        }catch (NoResultException nre){
            return null;
        }

        return ad;

    }

    // find one admin by email and password
    public AdminGeneral validateAdminLogin(String email,String password){
        AdminGeneral admin =getAdminByEmail(email);
        if (admin == null){
            return null;
        }
        if (checkPassword(password, admin.getPassword())){
           return admin;
        }else {
            return null;
        }

    }

    // create admin
    public boolean createAdmin(AdminGeneral admin) {
        admin.setPassword(hashPassword(admin.getPassword()));
        return create(admin);
    }

    // update admin
    public AdminGeneral updateAdmin(AdminGeneral admin) {
        return update(admin);
    }

    // delete admin
    public void deleteAdmin(AdminGeneral admin) {
        delete(admin);
    }

    // delete admin by id
    public void deleteAdminById(long id) {
        deleteById(id);
    }

    public static void main(String[] args) {
       AdminGeneral a = new AdminGeneral();
       a.setFirstname("test");
        a.setLastname("test");
       a.setEmail("test@test.test");
        a.setPassword("test1234");

       AdminGeneralDao ad = new AdminGeneralDao();
//       a = ad.getAdminByEmail("youcode@youcode.com");
//       a = ad.validateAdminLogin("youcode@youce.com","youcode");
//       if(a == null) System.out.println("not connected");
//       else System.out.println("connectedt");
//        if(a==null) System.out.println("noooot");
        ad.createAdmin(a);
//       a=ad.validateAdminLogin("youcode@ycode.com","test");
//        if(a!=null){
//            System.out.println("Connected==========>");
//        }else{
//           System.out.println("inccorect email or password !!!");
//        }
//        System.out.println("success");
    }
}
