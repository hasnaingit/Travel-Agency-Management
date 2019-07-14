
package com.hasnain.travelagency.controller;

import com.hasnain.travelagency.dao.CustomerService;
import com.hasnain.travelagency.dao.FeedbackService;
import com.hasnain.travelagency.model.AirBooking;
import com.hasnain.travelagency.model.Feedback;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
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
public class FeedbackController  {   
    @Autowired
    FeedbackService fs;
    @Autowired
    CustomerService cs;
      @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        binder.registerCustomEditor(Date.class, "feedbackdate", new CustomDateEditor(format, false));
      
    }
       @RequestMapping("/showfeedbackpage")
    public ModelAndView showfeedBack() {
        String feedbacklist = fs.viewFeedback();     
        String customerlist = cs.viewCustomer();       
        ModelAndView mv = new ModelAndView("addfeedback", "newFeedbackObject", new Feedback());
        mv.addObject("feedbacklist", feedbacklist);     
        mv.addObject("customerlist", customerlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    
           @RequestMapping("/showadminfeedbackpage")
    public ModelAndView showadminfeedBack() {
        String feedbacklist = fs.viewFeedback();     
        String customerlist = cs.viewCustomer();       
        ModelAndView mv = new ModelAndView("adminfeedback", "newFeedbackObject", new Feedback());
        mv.addObject("feedbacklist", feedbacklist);     
        mv.addObject("customerlist", customerlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    
    
    
    
    
     @RequestMapping(value = "/feedbackadd", params = "Add")
    public String addFeedback(@ModelAttribute("newFeedbackObject") Feedback fb, HttpServletRequest request) {
 fs.insertFeedback(fb);
        return "redirect:/showfeedbackpage";
    }
    
 @RequestMapping(value = "/feedbackadd", params = "Edit")
    public String EditFeedbacks(@ModelAttribute("newFeedbackObject") Feedback fb, HttpServletRequest request) {
 fs.updateFeedback(fb.getFeedbackid(),fb);
        return "redirect:/showfeedbackpage";
    }  
    
   @RequestMapping("removefeedback/{feedbackid}")
    public String removefeedback(@PathVariable("feedbackid") int feedbackid) {
        fs.deleteFeedback(feedbackid);
        return "redirect:/showfeedbackpage";
    }
   
    
     @RequestMapping("/editingfeedback")
    public ModelAndView editFeedback(@RequestParam("feedbackid") int feedbackid) {
 
       String feedbacklist = fs.viewFeedback();     
        String customerlist = cs.viewCustomer();       
        ModelAndView mv = new ModelAndView("addfeedback", "newFeedbackObject", new Feedback());
        mv.addObject("feedbacklist", feedbacklist);     
        mv.addObject("customerlist", customerlist);
        mv.addObject("check", "false");
        return mv;
    }
    
    
}
