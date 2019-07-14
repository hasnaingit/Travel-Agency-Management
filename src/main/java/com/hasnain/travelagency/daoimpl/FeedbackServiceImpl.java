/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.FeedbackService;
import com.hasnain.travelagency.model.Feedback;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FeedbackServiceImpl implements FeedbackService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertFeedback(Feedback f) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(f);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String updateFeedback(int feedbackid, Feedback f) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Feedback oneFeedbackObject = (Feedback) s.get(Feedback.class, feedbackid);
        oneFeedbackObject.setFeedbackid(f.getFeedbackid());
        oneFeedbackObject.setCustid(f.getCustid());
        oneFeedbackObject.setComment(f.getComment());
        oneFeedbackObject.setFeedbackdate(f.getFeedbackdate());
        oneFeedbackObject.setFeedbackfor(f.getFeedbackfor());
        s.update(oneFeedbackObject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteFeedback(int feedbackid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Feedback f = (Feedback) s.get(Feedback.class, feedbackid);
        s.delete(f);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewFeedback() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Feedback> bookinglist = s.createQuery("from Feedback").list();
        Gson g = new Gson();
        String feebacklistgson = g.toJson(bookinglist);
        t.commit();
        s.close();
        return feebacklistgson;

    }

    @Override
    public Feedback viewOneFeedback(int feedbackid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Feedback f = (Feedback) s.get(Feedback.class, feedbackid);
        t.commit();
        s.close();
        return f;

    }

}
