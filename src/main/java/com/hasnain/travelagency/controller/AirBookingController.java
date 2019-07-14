
package com.hasnain.travelagency.controller;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.AirBookingService;
import com.hasnain.travelagency.dao.AirService;
import com.hasnain.travelagency.dao.CustomerService;
import com.hasnain.travelagency.model.AirBooking;
import com.hasnain.travelagency.model.HotelBooking;
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
public class AirBookingController {
    @Autowired
    AirBookingService abs;
    @Autowired
    AirService as; 
    @Autowired
    CustomerService cs;
    
    
        @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        binder.registerCustomEditor(Date.class, "bookingdate", new CustomDateEditor(format, false));
      
    }
    
    @RequestMapping("/showairbookingpage")
    public ModelAndView showAirbooking() {

        String airbookinglist = abs.viewAirBooking();
        String airlist=as.viewAir();
        String customerlist = cs.viewCustomer();
        
        ModelAndView mv = new ModelAndView("addairbooking", "newAirBookingObject", new AirBooking());
        mv.addObject("airbookinglist", airbookinglist);
        mv.addObject("airlist", airlist);
        mv.addObject("customerlist", customerlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    
     @RequestMapping(value = "/airbookingadd", params = "Add")
    public String addAirbooking(@ModelAttribute("newHotelBookingObject") AirBooking ab, HttpServletRequest request) {
      abs.insertAirBooking(ab);
      
        return "redirect:/showairbookingpage";
    }
     @RequestMapping(value = "/airbookingadd", params = "Edit")
    public String editairbooking(@ModelAttribute("newHotelBookingObject") AirBooking ab, HttpServletRequest request) {
       abs.updateAirBooking(ab.getAirbookingid(),ab);
   
        return "redirect:/showairbookingpage";
    }
  
      @RequestMapping("removeairbooking/{airbookingid}")
    public String removeAirebooking(@PathVariable("airbookingid") int airbookingid) {
        abs.deleteAirBooking(airbookingid);
       
        return "redirect:/showairbookingpage";
    }
    
    
       @RequestMapping("/viewairbooking")
    public ModelAndView viewhotelbookingdata(@RequestParam("getId") int airbookingid, HttpSession session) {
        Gson g = new Gson();
        String hotelbookingdata = g.toJson(abs.viewOneHotelBooking(airbookingid));
        ModelAndView mv = new ModelAndView("airbookingdescription");
        mv.addObject("pro", airbookingid);
        return mv;
    }

    
    @RequestMapping("/editingairbooking")
    public ModelAndView editairbookingpage(@RequestParam("airbookingid") int airbookingid) {

       String airbookinglist = abs.viewAirBooking();
        String airlist=as.viewAir();
        String customerlist = cs.viewCustomer();
        
        ModelAndView mv = new ModelAndView("addairbooking", "newAirBookingObject", abs.viewOneHotelBooking(airbookingid));
        mv.addObject("airbookinglist", airbookinglist);
        mv.addObject("airlist", airlist);
        mv.addObject("customerlist", customerlist);
        mv.addObject("check", "false");
        return mv;
    }
    
}
