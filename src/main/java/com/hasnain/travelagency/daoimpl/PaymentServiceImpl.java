package com.hasnain.travelagency.daoimpl;
import com.google.gson.Gson;
import com.hasnain.travelagency.dao.PaymentService;
import com.hasnain.travelagency.model.Payment;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class PaymentServiceImpl implements PaymentService {
    @Autowired
    SessionFactory sessionFactory;
    @Override
    public String insertPayment(Payment p) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(p);
        t.commit();
        s.close();
        return null;
    }
    @Override
    public String updatePayment(int payid, Payment p) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Payment onePaymentObject = (Payment) s.get(Payment.class, payid);
        onePaymentObject.setPayid(p.getPayid());
        onePaymentObject.setCustid(p.getCustid());
        onePaymentObject.setPayfor(p.getPayfor());
        onePaymentObject.setBookingid(p.getBookingid());
        onePaymentObject.setPaytype(p.getPaytype());
        onePaymentObject.setPaydate(p.getPaydate());
        onePaymentObject.setAmount(p.getAmount());

        s.update(onePaymentObject);
        t.commit();
        s.close();
        return null;
    }
    @Override
    public String deletePayment(int payid) {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Payment pp = (Payment) s.get(Payment.class, payid);
        s.delete(pp);
        t.commit();
        s.close();
        return null;
    }
    @Override
    public String viewPayment() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Payment> paymentlist = s.createQuery("from Payment").list();
        Gson g = new Gson();
        String paymentlistgson = g.toJson(paymentlist);
        t.commit();
        s.close();
        return paymentlistgson;
    }
    @Override
    public Payment viewOnePayment(int payid) {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Payment pp = (Payment) s.get(Payment.class, payid);
        t.commit();
        s.close();
        return pp;
    }

}
