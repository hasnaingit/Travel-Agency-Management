/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.PackagesService;
import com.hasnain.travelagency.model.Packages;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PackagesServiceImpl implements PackagesService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertPackages(Packages p) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(p);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String updatePackages(int packid, Packages p) {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Packages onepackages = (Packages) s.get(Packages.class, packid);

        onepackages.setPackid(p.getPackid());
        onepackages.setPackcatid(p.getPackcatid());
        onepackages.setLocation(p.getLocation());
        onepackages.setDaynum(p.getDaynum());
        onepackages.setNightnum(p.getNightnum());
        onepackages.setAdultnum(p.getAdultnum());
        onepackages.setChildnum(p.getChildnum());
        onepackages.setAccdncost(p.getAccdncost());
        onepackages.setBuscost(p.getBuscost());
        onepackages.setAircost(p.getAircost());
        onepackages.setGuidecost(p.getGuidecost());
        onepackages.setDepdate(p.getDepdate());
        onepackages.setReturndate(p.getReturndate());
        onepackages.setStatus(p.getStatus());
        onepackages.setDescription(p.getDescription());
        onepackages.setTotalcost(p.getTotalcost());

        s.update(onepackages);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String deletePackages(int packid) {

Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
       Packages p = (Packages) s.get(Packages.class, packid);
        s.delete(p);
        t.commit();
        s.close();
        return null;


    }

    @Override
    public String viewPackages() {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Packages> packagelist = s.createQuery("from Packages").list();
        Gson g = new Gson();
        String packageslistgson = g.toJson(packagelist);
        t.commit();
        s.close();
        return packageslistgson;



    }

    @Override
    public Packages viewOnePackages(int packid) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
         Packages p = (Packages) s.get(Packages.class, packid);
        t.commit();
        s.close();
        return p;



    }

}
