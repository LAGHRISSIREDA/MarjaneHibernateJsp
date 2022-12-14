package com.codesigne.marjanepromo.DAO;

import com.codesigne.marjanepromo.model.SubCategory;


import java.util.ArrayList;
import java.util.List;

public class SubCategoryDao extends AbstractHibernateDao<SubCategory>{

    public SubCategoryDao(){
        tableName="subcategory";
        setClazz(SubCategory.class);
    }

    public List getAllCategories(){
        return findAll();
    }

    public SubCategory getCategoryById(long id){
        return findOne(id);
    }


    public boolean createCategory(SubCategory cat){
        return create(cat);
    }


    public static void main(String[] args) {
        SubCategory s = new SubCategory();
        List<SubCategory> list = new ArrayList<>();
//        s.setName("Alimentation");
//        s.setDispo(true);
        SubCategoryDao sub = new SubCategoryDao();
//        sub.create(s);
        list = sub.getAllCategories();
        for (SubCategory ss:list){
            System.out.println(ss.getName());
        }
    }
}
