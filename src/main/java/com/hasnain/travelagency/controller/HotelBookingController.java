package com.hasnain.travelagency.controller;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.CustomerService;
import com.hasnain.travelagency.dao.HotelBookingService;
import com.hasnain.travelagency.dao.HotelService;
import com.hasnain.travelagency.dao.Userservice;
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
public class HotelBookingController {

    @Autowired
    HotelBookingService hbs;
    @Autowired
    HotelService hs;
    @Autowired
    CustomerService cs;
    @Autowired
    Userservice us;

    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        binder.registerCustomEditor(Date.class, "bookingdate", new CustomDateEditor(format, false));
        binder.registerCustomEditor(Date.class, "startdate", new CustomDateEditor(format, false));
        binder.registerCustomEditor(Date.class, "enddate", new CustomDateEditor(format, false));
    }
    
    
    
    
     @RequestMapping("/showhotelbookingpage")
    public ModelAndView BookingPage(HttpSession httpSession) {

        String email = (String) httpSession.getAttribute("UserId");
        int pid = (int) httpSession.getAttribute("hotelid");
        
        String packagebookingjson=hbs.viewHotelBooking(email);
        System.out.println(packagebookingjson);
 
        //User urm = us.viewUser(email);
        
        HotelBooking bm = new HotelBooking();
        bm.setEmail(email);
        ModelAndView mv = new ModelAndView("hotelbookingpage", "billingAddressObj", bm);
        mv.addObject("packagebookingjson", packagebookingjson);
        mv.addObject("pid", pid);

        httpSession.setAttribute("newobj", "true");
        return mv;
    }

    
    
    @RequestMapping(value = "/addhotelbooking", params = "addnew")
    public String addnewhotelbookinga(@ModelAttribute("billingAddressObj") HotelBooking hb, HttpSession httpSession) {
        String email = (String) httpSession.getAttribute("UserId");
        hb.setEmail(email);
        hbs.insertHotelBooking(hb);
      
        httpSession.setAttribute("newobj", "false");
        return "redirect:/showcustomerpaymentpage";
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

//    @RequestMapping("/showhotelbookingpage")
//    public ModelAndView showhotelbooking() {
//
//        String hotelbookinglist = hbs.viewHotelBooking();
//        String hotellist = hs.viewHotel();
//        String customerlist = cs.viewCustomer();
//        ModelAndView mv = new ModelAndView("addhotelbooking", "newHotelBookingObject", new HotelBooking());
//        mv.addObject("hotelbookinglist", hotelbookinglist);
//        mv.addObject("hotellist", hotellist);
//        mv.addObject("customerlist", customerlist);
//        mv.addObject("check", "true");
//        return mv;
//    }
//
//    @RequestMapping(value = "/hotelbookingadd", params = "Add")
//    public String addhotelbooking(@ModelAttribute("newHotelBookingObject") HotelBooking hb, HttpServletRequest request) {
//        hbs.insertHotelBooking(hb);
//        return "redirect:/showhotelbookingpage";
//    }
//
//    @RequestMapping(value = "/hotelbookingadd", params = "Edit")
//    public String edithotelbooking(@ModelAttribute("newHotelBookingObject") HotelBooking hb, HttpServletRequest request) {
//        hbs.updateHotelBooking(hb.getHotelbookingid(), hb);
//        return "redirect:/showhotelbookingpage";
//    }
//
//    @RequestMapping("removehotelbooking/{hotelbookingid}")
//    public String removehotlebooking(@PathVariable("hotelbookingid") int hotelbookingid) {
//        hbs.deleteHotelBooking(hotelbookingid);
//        return "redirect:/showhotelbookingpage";
//    }
//
//    @RequestMapping("/viewhotelbooking")
//    public ModelAndView viewhotelbookingdata(@RequestParam("getId") int hotelbookingid, HttpSession session) {
//        Gson g = new Gson();
//        String hotelbookingdata = g.toJson(hbs.viewOneHotelBooking(hotelbookingid));
//        ModelAndView mv = new ModelAndView("hotelbookingdescription");
//        mv.addObject("pro", hotelbookingdata);
//        return mv;
//    }
//
//    @RequestMapping("/editinghotelbooking")
//    public ModelAndView edithotelbookingpage(@RequestParam("hotelbookingid") int hotelbookingid) {
//
//        String hotelbookinglist = hbs.viewHotelBooking();
//        String hotellist = hs.viewHotel();
//        String customerlist = cs.viewCustomer();
//        ModelAndView mv = new ModelAndView("addhotelbooking", "newHotelBookingObject", hbs.viewOneHotelBooking(hotelbookingid));
//        mv.addObject("hotelbookinglist", hotelbookinglist);
//        mv.addObject("hotellist", hotellist);
//        mv.addObject("customerlist", customerlist);
//        mv.addObject("check", "false");
//        return mv;
//    }

}
