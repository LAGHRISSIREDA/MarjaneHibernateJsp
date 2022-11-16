package com.codesigne.marjanepromo.DAO;

import com.codesigne.marjanepromo.model.AdminCenter;
import com.codesigne.marjanepromo.model.MarketManager;
import com.codesigne.marjanepromo.utils.SendMail;
import jakarta.persistence.NoResultException;
import static com.codesigne.marjanepromo.utils.Security.checkPassword;
import static com.codesigne.marjanepromo.utils.Security.hashPassword;

import java.util.ArrayList;
import java.util.List;

public class MarketManagerDao extends AbstractHibernateDao<MarketManager> {

    public MarketManagerDao(){
        tableName ="marketmanager";
        setClazz(MarketManager.class);
    }

    public List getAllMarketManager(){
        return findAll();
    }

    public MarketManager getMarketManagerById(Long id){
        return findOne(id);
    }

    public boolean createMarketManager(MarketManager marketManager) throws Exception {
        String message = "Your password is : "+marketManager.getPassword();
        SendMail.sendMail(marketManager.getEmail(),message);
        marketManager.setPassword(hashPassword(marketManager.getPassword()));
        return create(marketManager);
    }

    public MarketManager getMarketManagerByEmail(String email){
        MarketManager mm;
        try{
            mm = jpaService.runInTransaction(entityManager -> {
                return entityManager.createQuery("select m from MarketManager m where m.email = :email",MarketManager.class)
                        .setParameter("email",email)
                        .getSingleResult();
            });
        }catch(NoResultException ers){
            return null;
        }
        return mm;
    }

    public void deleteMarketManagerById(Long id){
        deleteById(id);
    }

    public MarketManager validateMarketManagerLogin(String email,String password){
        MarketManager mm = getMarketManagerByEmail(email);
        if(mm == null){
            return null;
        }
        if(checkPassword(password,mm.getPassword())){
            return mm;
        }else{
            return null;
        }
    }



    public List getMarketMAnagerByIdAdmin(Long id){
        List<MarketManager> mm = new ArrayList<>();
        try{
            mm = jpaService.runInTransaction(entityManager -> {
                return entityManager.createQuery("select m from MarketManager m where m.adminCenter = :id",MarketManager.class)
                        .setParameter("id",id)
                        .getResultList();
            });
        }catch(NullPointerException ers){
            return null;
        }
        return mm;
    }

    public static void main(String[] args) {
       MarketManagerDao m = new MarketManagerDao();
       List<MarketManager> t = m.getAllMarketManager();
       for(MarketManager k :t){
           System.out.println(k.getLastname());
       }
    }

}
