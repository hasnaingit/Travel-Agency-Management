
package com.hasnain.travelagency.daoimpl;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.CustomerService;
import com.hasnain.travelagency.model.Customer;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    SessionFactory sessionFactory;
    
    
    
    @Override
    public String insertCustomer(Customer cr) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(cr);
        t.commit();
        s.close();
        return null;


    }

    @Override
    public String updateCustomer(Customer cr) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(cr);
        t.commit();
        s.close();
        return null;



    }

    @Override
    public String deleteCustomer(int custid) {
Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Customer cr = (Customer) s.get(Customer.class, custid);
        s.delete(cr);
        t.commit();
        s.close();

        return null;


    }

    @Override
    public String viewCustomer() {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Customer> customerlist = s.createQuery("from Customer").list();
        Gson g = new Gson();
        String customerlistgson = g.toJson(customerlist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return customerlistgson;   



    }

    @Override
    public Customer viewOneCustomer(int custid) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
           Customer cr = (Customer) s.get(Customer.class, custid);          
        t.commit();
        s.close();
        Gson g = new Gson();
        String customergson = g.toJson(cr);
        return cr;



    }
    
}
