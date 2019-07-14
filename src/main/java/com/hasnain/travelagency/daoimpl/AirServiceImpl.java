/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.AirService;
import com.hasnain.travelagency.model.Air;
import com.hasnain.travelagency.model.Bus;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AirServiceImpl implements AirService{
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertAir(Air ar) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(ar);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String updateAir(Air ar) {

Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(ar);
        t.commit();
        s.close();
        return null;


    }

    @Override
    public String deleteAir(int airid) {

Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Air ar = (Air) s.get(Air.class, airid);
        s.delete(ar);
        t.commit();
        s.close();

        return null;


    }

    @Override
    public String viewAir() {

  Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Air> airlist = s.createQuery("from Air").list();
        Gson g = new Gson();
        String airlistgeson = g.toJson(airlist);
        t.commit();
        s.close();
        System.out.println(airlistgeson);
        return airlistgeson;   
        



    }

    @Override
    public Air viewOneAir(int airid) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
      
           Air ar = (Air) s.get(Air.class, airid);
        t.commit();
        s.close();
        Gson g = new Gson();
        String categorygson = g.toJson(ar);
        return ar;


    }
    
    
}
