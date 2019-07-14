
package com.hasnain.travelagency.controller;

import com.hasnain.travelagency.dao.CustomerService;
import com.hasnain.travelagency.dao.PaymentService;
import com.hasnain.travelagency.model.Payment;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaymentController {
    @Autowired
    PaymentService ps; 
    @Autowired
    CustomerService cs;
    
    
         @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        binder.registerCustomEditor(Date.class, "paydate", new CustomDateEditor(format, false));
    }
    
    
     @RequestMapping("/showpaymentpage")
    public ModelAndView showPayment() {
        String paymentlist=ps.viewPayment();
        String customerlist = cs.viewCustomer();  
        ModelAndView mv = new ModelAndView("addpayment", "newPaymentObject", new Payment());
        mv.addObject("paymentlist", paymentlist);     
        mv.addObject("customerlist", customerlist);
        mv.addObject("check", "true");
        return mv;
    }
    
     @RequestMapping(value = "/paymentadd", params = "Add")
    public String addPayment(@ModelAttribute("newPaymentObject") Payment p, HttpServletRequest request) {
        ps.insertPayment(p);
        return "redirect:/showpaymentpage";
    }
    

    
        @RequestMapping(value = "/paymentadd", params = "Edit")
    public String EditPayment(@ModelAttribute("newPaymentObject") Payment p, HttpServletRequest request) {
        ps.updatePayment(p.getPayid(), p);
        return "redirect:/showpaymentpage";
    }
    
    @RequestMapping("removepayment/{payid}")
    public String removePayment(@PathVariable("payid") int payid) {
       ps.deletePayment(payid);
        return "redirect:/showpaymentpage";
    }
    
   
     @RequestMapping("/editingpayment")
    public ModelAndView editPayments(@RequestParam("payid") int payid) {
      String paymentlist=ps.viewPayment();
        String customerlist = cs.viewCustomer();  
        ModelAndView mv = new ModelAndView("addpayment", "newPaymentObject", ps.viewOnePayment(payid));
        mv.addObject("paymentlist", paymentlist);     
        mv.addObject("customerlist", customerlist);
        mv.addObject("check", "false");
        return mv;
    }
    
    
    
//  for   customer
    
    
    
     @RequestMapping("/showcustomerpaymentpage")
    public ModelAndView showcustomerPayment() {
        String paymentlist=ps.viewPayment();
        String customerlist = cs.viewCustomer();  
        ModelAndView mv = new ModelAndView("customerPayment", "newPaymentObject", new Payment());
        mv.addObject("paymentlist", paymentlist);     
        mv.addObject("customerlist", customerlist);
        mv.addObject("check", "true");
        return mv;
    }
    
     @RequestMapping(value = "/cuspaymentadd", params = "Add")
    public String addcustomerPayment(@ModelAttribute("newPaymentObject") Payment p, HttpServletRequest request, HttpSession session) {
        ps.insertPayment(p);
     int pid= p.getPayid();
     int bid=p.getBookingid();
     String cid=p.getCustid();
     int aid= p.getAmount();
       session.setAttribute("pid", pid);
       session.setAttribute("bid", bid);
       session.setAttribute("cid", cid);
       session.setAttribute("aid", aid);
    
     
        return "redirect:/thanksmessage";
    }
    
    
    
    
    
    
    
}
