

package com.hasnain.travelagency.controller;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.CustomerService;
import com.hasnain.travelagency.dao.PackageBookingService;
import com.hasnain.travelagency.dao.PackagesService;
import com.hasnain.travelagency.dao.PaymentService;
import com.hasnain.travelagency.model.Payment;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InvoiceController {
    @Autowired
    PackageBookingService pbs;
    @Autowired
    CustomerService cs;
    @Autowired
    PaymentService ps;
    
     @RequestMapping("/generatinginvoice")
    public ModelAndView showingReceipt(@RequestParam("getpayid") int payid, HttpSession httpSession) {
        Payment pm=(Payment) ps.viewOnePayment(payid);
  
   
        
        String currentDateTimeString = DateFormat.getDateTimeInstance().format(new Date());
        System.out.println("this is date  " + currentDateTimeString);

        ModelAndView mv = new ModelAndView("invoice");
        mv.addObject("addressobject", pm);
        httpSession.setAttribute("payid", payid);
        httpSession.setAttribute("Date", currentDateTimeString);

        return mv;
    }
    
      @RequestMapping("/thanksmessage")
    public ModelAndView billingaddressPage(HttpSession httpSession) {
        
        ModelAndView mv = new ModelAndView("thanks");
        return mv;
    }
    
    
    
    
    
}
