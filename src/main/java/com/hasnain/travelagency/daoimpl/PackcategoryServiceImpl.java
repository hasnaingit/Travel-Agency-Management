
package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.PackcategoryService;
import com.hasnain.travelagency.model.Packcategory;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PackcategoryServiceImpl  implements PackcategoryService{

     @Autowired
    SessionFactory sessionFactory;
    
    
    @Override
    public String insertPackcategory(Packcategory pc) {

Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(pc);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String updatePackcategory(Packcategory pc) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(pc);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deletePackcategory(int packcatid) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Packcategory pc = (Packcategory) s.get(Packcategory.class, packcatid);
        s.delete(pc);
        t.commit();
        s.close();

        return null;


    }

    @Override
    public String viewPackcategory() {

 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Packcategory> packcategorieslist = s.createQuery("from Packcategory").list();
        Gson g = new Gson();
        String categorylistgson = g.toJson(packcategorieslist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return categorylistgson;   
        



    }

    @Override
    public Packcategory viewOnePackcategory(int packcatid) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
      Packcategory pc = (Packcategory) s.get(Packcategory.class, packcatid);
        t.commit();
        s.close();
        Gson g = new Gson();
        String categorygson = g.toJson(pc);
        return pc;



    }
    
    
    
    
}
