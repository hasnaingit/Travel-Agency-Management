
package com.hasnain.travelagency.controller;

import com.hasnain.travelagency.dao.CustomerService;
import com.hasnain.travelagency.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomerController {
    @Autowired
    CustomerService cs;
    
    
     @RequestMapping("/showingcustomerpage")
    public ModelAndView showcustomerpage() {
        String custgsonlist = cs.viewCustomer();
        ModelAndView mv = new ModelAndView("addcustomer", "addcustobject1", new Customer());
        mv.addObject("custmodelobject", custgsonlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    
     @RequestMapping(value = "/addingcustomer", params = "Addcustomer")
    public String addCustomer(@ModelAttribute("addcustobject1") Customer cr) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
     
        cs.insertCustomer(cr);
        
        //mv.addObject("categorymodelobject", categorygsonlist);
       return "redirect:/showingcustomerpage";
    
    }
    
     @RequestMapping(value = "/addingcustomer", params = "Editcustomer")
    public String editCustomer(@ModelAttribute("addcustobject1") Customer cr) {

        //ModelAndView mv =new ModelAndView("AddCategory");
    
        cs.updateCustomer(cr);
        return "redirect:/showingcustomerpage";
    }
    
     @RequestMapping("removecustomer/{custid}")
    public String removeCustomer(@PathVariable("custid") int custid) {
       cs.deleteCustomer(custid);
      
       
        return "redirect:/showingcustomerpage";
    } 
    
     @RequestMapping("/editcustomerbutton")
    public ModelAndView passingonecustomer(@RequestParam("custid") int custid) {

Customer cr=cs.viewOneCustomer(custid);
     
        String customergsonlist = cs.viewCustomer();
        ModelAndView mv = new ModelAndView("addcustomer", "addcustobject1", cr);
        mv.addObject("custmodelobject", customergsonlist);
        mv.addObject("check", "false");
        return mv;
    }
}
