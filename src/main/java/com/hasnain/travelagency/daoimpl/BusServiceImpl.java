
package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.BusService;
import com.hasnain.travelagency.model.Bus;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class BusServiceImpl  implements BusService{

     @Autowired
    SessionFactory sessionFactory;
    
    
    @Override
    public String insertBus(Bus bs) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(bs);
        t.commit();
        s.close();
        return null;



    }

    @Override
    public String updateBus(Bus bs) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(bs);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String deleteBus(int busid) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Bus bs = (Bus) s.get(Bus.class, busid);
        s.delete(bs);
        t.commit();
        s.close();

        return null;

    }

    @Override
    public String viewBus() {

       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Bus> categorieslist = s.createQuery("from Bus").list();
        Gson g = new Gson();
        String categorylistgson = g.toJson(categorieslist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return categorylistgson;   
        
        

    }

    @Override
    public Bus viewOneBus(int busid) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Bus bs = (Bus) s.get(Bus.class, busid);
        t.commit();
        s.close();
        Gson g = new Gson();
        String categorygson = g.toJson(bs);
        return bs;





    }

    @Override
    public String searchBus(Bus b) {

String startplace=b.getStartplace();
String endplace= b.getEndplace();

        System.out.println(startplace);

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();     
            List<Bus> bus = s.createQuery("select t from Bus t where  startplace=? and endplace=?").setParameter(0, startplace).setParameter(1, endplace).list();
            Gson g = new Gson();
            String businfgson = g.toJson(bus);
            t.commit();
            s.close();
            return businfgson;
        }


    


    }
    
    
    

