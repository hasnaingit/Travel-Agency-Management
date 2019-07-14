
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.Payment;
import org.springframework.stereotype.Service;

@Service
public interface PaymentService {
    public String insertPayment( Payment p);

    public String updatePayment( int payid ,Payment p);

    public String deletePayment(int payid);

    public String viewPayment();

    public Payment   viewOnePayment(int payid);
    
    
}
