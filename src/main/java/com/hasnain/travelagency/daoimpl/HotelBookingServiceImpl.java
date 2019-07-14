package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.HotelBookingService;
import com.hasnain.travelagency.model.BusBooking;

import com.hasnain.travelagency.model.HotelBooking;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HotelBookingServiceImpl implements HotelBookingService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertHotelBooking(HotelBooking hb) {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(hb);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String updateHotelBooking(int hotelbookingid, HotelBooking hb) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        HotelBooking onehbobject = (HotelBooking) s.get(HotelBooking.class, hotelbookingid);
        onehbobject.setHotelbookingid(hb.getHotelbookingid());
        onehbobject.setHotelid(hb.getHotelid());
        onehbobject.setStartdate(hb.getStartdate());
        onehbobject.setEnddate(hb.getEnddate());
        onehbobject.setAdultnum(hb.getAdultnum());
        onehbobject.setChildnum(hb.getChildnum());
        onehbobject.setTotaldays(hb.getTotaldays());
        onehbobject.setEmail(hb.getEmail());
        onehbobject.setBookingdate(hb.getBookingdate());
        onehbobject.setTotalcost(hb.getTotalcost());
        s.update(onehbobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteHotelBooking(int hotelbookingid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        HotelBooking hb = (HotelBooking) s.get(HotelBooking.class, hotelbookingid);
        s.delete(hb);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String viewHotelBooking(String email) {
       
        
     Session s = sessionFactory.openSession();
        Transaction tr = s.getTransaction();
        tr.begin();
        ArrayList<HotelBooking> addressarray = new ArrayList<HotelBooking>();
        List<HotelBooking> addresslist = s.createQuery("from HotelBooking").list();
        Iterator<HotelBooking> iterator = addresslist.iterator();
        while (iterator.hasNext()) {
            HotelBooking bam = iterator.next();
            if (bam.getEmail().equals(email)) {
                addressarray.add(bam);
            }
        }
        Gson gson = new Gson();
        String addressjsonlist = gson.toJson(addressarray);
        tr.commit();
        s.close();
 return addressjsonlist;

    }

    @Override
    public HotelBooking viewOneHotelBooking(int hotelbookingid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        HotelBooking bb = (HotelBooking) s.get(HotelBooking.class, hotelbookingid);
        t.commit();
        s.close();
        return bb;
    }

}
