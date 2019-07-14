
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.Customer;
import org.springframework.stereotype.Service;

@Service
public interface CustomerService {
     public String insertCustomer(Customer cr);

    public String updateCustomer(Customer cr);

    public String deleteCustomer(int custid);

    public String viewCustomer();

    public Customer viewOneCustomer(int custid);
}
