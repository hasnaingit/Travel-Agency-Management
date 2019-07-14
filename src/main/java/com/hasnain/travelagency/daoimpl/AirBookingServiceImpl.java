package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.AirBookingService;
import com.hasnain.travelagency.model.AirBooking;
import com.hasnain.travelagency.model.HotelBooking;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AirBookingServiceImpl implements AirBookingService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertAirBooking(AirBooking ab) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(ab);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String updateAirBooking(int airbookingid, AirBooking ab) {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();

        AirBooking oneaAbObject = (AirBooking) s.get(AirBooking.class, airbookingid);
        oneaAbObject.setAirbookingid(ab.getAirbookingid());
        oneaAbObject.setAirid(ab.getAirid());
        oneaAbObject.setCustid(ab.getCustid());
        oneaAbObject.setNumofadult(ab.getNumofadult());
        oneaAbObject.setNumofchild(ab.getNumofchild());
        oneaAbObject.setPassportno(ab.getPassportno());
        oneaAbObject.setBookingdate(ab.getBookingdate());
        oneaAbObject.setTotalprice(ab.getTotalprice());

        s.update(oneaAbObject);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String deleteAirBooking(int airbookingid) {
  Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
      AirBooking ab = (AirBooking) s.get(AirBooking.class, airbookingid);
        s.delete(ab);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String viewAirBooking() {

  Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<AirBooking> bookinglist = s.createQuery("from AirBooking").list();
        Gson g = new Gson();
        String airbookinglistgson = g.toJson(bookinglist);
        t.commit();
        s.close();
        return airbookinglistgson;
    }

    @Override
    public AirBooking viewOneHotelBooking(int airbookingid) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
      AirBooking ab = (AirBooking) s.get(AirBooking.class, airbookingid);
        t.commit();
        s.close();
        return ab;


    }

}
