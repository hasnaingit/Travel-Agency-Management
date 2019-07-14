/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.PackageBookingService;
import com.hasnain.travelagency.model.BusBooking;
import com.hasnain.travelagency.model.PackageBooking;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PackageBookingServiceImpl  implements PackageBookingService{
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertPackageBooking(PackageBooking pb) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(pb);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updatePackageBooking(int packbookingid, PackageBooking pb) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        PackageBooking pbo=(PackageBooking) s.get(PackageBooking.class, packbookingid);
      pbo.setPackbookingid(pb.getPackbookingid());
        pbo.setPackid(pb.getPackid());
        pbo.setEmailid(pb.getEmailid());
      
        pbo.setBookingdate(pb.getBookingdate());
        pbo.setBookingstatus(pb.getBookingstatus());
        s.update(pbo);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deletePackageBooking(int packbookingid) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
     PackageBooking pbo=(PackageBooking) s.get(PackageBooking.class, packbookingid);
        s.delete(pbo);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewPackageBooking(String emailid) {
 Session s = sessionFactory.openSession();
        Transaction tr = s.getTransaction();
        tr.begin();
        ArrayList<PackageBooking> addressarray = new ArrayList<PackageBooking>();
        List<PackageBooking> addresslist = s.createQuery("from PackageBooking").list();
        Iterator<PackageBooking> iterator = addresslist.iterator();
        while (iterator.hasNext()) {
            PackageBooking bam = iterator.next();
            if (bam.getEmailid().equals(emailid)) {
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
    public PackageBooking viewOnePackageBooking(int packbookingid) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
       PackageBooking pbo=(PackageBooking) s.get(PackageBooking.class, packbookingid);
        t.commit();
        s.close();
        return pbo;


    }
    
}
