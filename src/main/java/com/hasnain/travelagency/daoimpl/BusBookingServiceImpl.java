
package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.BusBookingService;
import com.hasnain.travelagency.model.BusBooking;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BusBookingServiceImpl  implements BusBookingService{

      @Autowired
    SessionFactory sessionFactory;
    
    
    @Override
    public String insertBusBooking(BusBooking bb) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(bb);
        t.commit();
        s.close();
        return null;
    }
    @Override
    public String updateBusBooking(int busbookingid, BusBooking bb) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        BusBooking onebbobject=(BusBooking) s.get(BusBooking.class, busbookingid);
        onebbobject.setBusbookingid(bb.getBusbookingid());
        onebbobject.setBusid(bb.getBusid());
        onebbobject.setCustid(bb.getCustid());
        onebbobject.setBookingdate(bb.getBookingdate());
        onebbobject.setStatus(bb.getStatus());
        onebbobject.setPayment(bb.getPayment());
        s.update(onebbobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteBusBooking(int busbookingid) {

 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
       BusBooking bb=(BusBooking) s.get(BusBooking.class, busbookingid);
        s.delete(bb);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewBusBooking(String email) {

 Session s = sessionFactory.openSession();
        Transaction tr = s.getTransaction();
        tr.begin();
        ArrayList<BusBooking> addressarray = new ArrayList<BusBooking>();
        List<BusBooking> addresslist = s.createQuery("from BusBooking").list();
        Iterator<BusBooking> iterator = addresslist.iterator();
        while (iterator.hasNext()) {
            BusBooking bam = iterator.next();
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
    public BusBooking viewOneBusBooking(int busbookingid) {

 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        BusBooking bb=(BusBooking) s.get(BusBooking.class, busbookingid);
//        Criteria criteria = s.createCriteria(Product.class).add(Restrictions.eq("productname", "A"));
//        Product p = null;
//        Object result = criteria.uniqueResult();
//            if (result != null) {
//                p = (Product) criteria.uniqueResult();
//                System.out.println("Genre = " + p.getProductname());
//            }
        t.commit();
        s.close();
        return bb;



    }
    
}
