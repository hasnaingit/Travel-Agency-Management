

package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.HotelService;
import com.hasnain.travelagency.model.Hotel;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HotelServiceImpl implements HotelService{

     @Autowired
    SessionFactory sessionFactory;
    
    
    
    
    @Override
    public String insertHotel(Hotel hl) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(hl);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateHotel(Hotel hl) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(hl);
        t.commit();
        s.close();
        return null;




    }

    @Override
    public String deleteHotel(int hotelid) {

Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Hotel hl = (Hotel) s.get(Hotel.class, hotelid);
        s.delete(hl);
        t.commit();
        s.close();

        return null;


    }

    @Override
    public String viewHotel() {

 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Hotel> hotellist = s.createQuery("from Hotel").list();
        Gson g = new Gson();
        String hotellistgson = g.toJson(hotellist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return hotellistgson;   


    }

    @Override
    public Hotel viewOneHotel(int hotelid) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
           Hotel hl = (Hotel) s.get(Hotel.class, hotelid);          
        t.commit();
        s.close();
        Gson g = new Gson();
        String hotelgson = g.toJson(hl);
        return hl;


    }
    
}
