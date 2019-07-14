
package com.hasnain.travelagency.controller;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.BusBookingService;
import com.hasnain.travelagency.dao.BusService;
import com.hasnain.travelagency.dao.CustomerService;
import com.hasnain.travelagency.dao.Userservice;
import com.hasnain.travelagency.model.BusBooking;
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
public class BusBookingController {
    @Autowired
    BusBookingService bbs;
    @Autowired
    BusService bs;
    @Autowired
    CustomerService cs;
    
     @Autowired
    Userservice us;
    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        binder.registerCustomEditor(Date.class, "bookingdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    
    
    @RequestMapping("/showbusbookingpage")
    public ModelAndView BookingPage(HttpSession httpSession) {
        String email = (String) httpSession.getAttribute("UserId");
        int bid = (int) httpSession.getAttribute("busid");
        String startplace = (String) httpSession.getAttribute("startplace");
        String endplace = (String) httpSession.getAttribute("endplace");
        String busname = (String) httpSession.getAttribute("busname");
        String busdata = (String) httpSession.getAttribute("busdata");       
        String busbookingjson=bbs.viewBusBooking(email);
        //User urm = us.viewUser(email);
        BusBooking bm = new BusBooking();
        bm.setEmail(email);
        ModelAndView mv = new ModelAndView("busbookingpage", "busbookingObject", bm);
        mv.addObject("busbookingjson", busbookingjson);
        mv.addObject("bid", bid);
        mv.addObject("startplace", startplace);
        mv.addObject("endplace", endplace);
        mv.addObject("pibusnamed", busname);
        mv.addObject("busdata", busdata);
        httpSession.setAttribute("newobj", "true");
        return mv;
    }
    
    
  
    
    
    
      
    @RequestMapping(value = "/addbusbooking", params = "addnew")
    public String addnewbusbooking(@ModelAttribute("busbookingObject") BusBooking bb, HttpSession httpSession) {
        String email = (String) httpSession.getAttribute("UserId");
        bb.setEmail(email);
        bbs.insertBusBooking(bb);
  
        httpSession.setAttribute("newobj", "false");
        return "redirect:/showcustomerpaymentpage";
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    @RequestMapping("/showbusbookingpage")
//    public ModelAndView showbusbooking() {
//        String busbookinglist=bbs.viewBusBooking();
//        String buslist=bs.viewBus();
//        String customerlist=cs.viewCustomer();
//        ModelAndView mv = new ModelAndView("addbusbooking", "newBusBookingObject", new BusBooking());
//        mv.addObject("busbookinglist", busbookinglist);
//        mv.addObject("buslist", buslist);
//        mv.addObject("customerlist", customerlist);
//        mv.addObject("check", "true");
//        return mv;
//    }
//     @RequestMapping(value = "/busbookingadd", params = "Add")
//    public String addbusbooking(@ModelAttribute("newBusBookingObject") BusBooking bb, HttpServletRequest request) {
//    
//    bbs.insertBusBooking(bb);
//    
//     return "redirect:/showbusbookingpage"; 
//}
//    @RequestMapping(value = "/busbookingadd", params = "Edit")
//    public String editbusbooking(@ModelAttribute("newBusBookingObject") BusBooking bb, HttpServletRequest request) {
//    
//    bbs.updateBusBooking(bb.getBusbookingid(), bb);  
//     return "redirect:/showbusbookingpage";  
//}
//    @RequestMapping("removebusbooking/{busbookingid}")
//    public String removebusbooking(@PathVariable("busbookingid") int busbookingid) {
//        bbs.deleteBusBooking(busbookingid);   
//        return "redirect:/showbusbookingpage";
//    } 
//    
//    @RequestMapping("/viewbusbooking")
//    public ModelAndView viewbusbookingdata(@RequestParam("getId") int busbookingid, HttpSession session) {
//        Gson g = new Gson();
//        String busbookingdata = g.toJson(bbs.viewOneBusBooking(busbookingid));
//        //session.setAttribute("productid", productid);
//        ModelAndView mv = new ModelAndView("prodescription");
//        mv.addObject("pro", busbookingdata);
//        return mv;
//    }
//
//    
//     @RequestMapping("/buyproductpage")
//    public ModelAndView viewbusbookingpage() {
//        String busbookinglist=bbs.viewBusBooking();
//        ModelAndView mv = new ModelAndView("viewbusbooking");
//        mv.addObject("busbookinglist", busbookinglist);
//        return mv;
//    }
//   
//    
//     @RequestMapping("/editingbusbooking")
//    public ModelAndView editbusbookingpage(@RequestParam("getpid") int pid) {
//        String busbookinglist=bbs.viewBusBooking();
//        String buslist=bs.viewBus();
//        String customerlist=cs.viewCustomer();
//        ModelAndView mv = new ModelAndView("addbusbooking", "newBusBookingObject", bbs.viewOneBusBooking(pid));
//        mv.addObject("busbookinglist", busbookinglist);
//        mv.addObject("buslist", buslist);
//        mv.addObject("customerlist", customerlist);
//        mv.addObject("check", "false");
//        return mv;
//    }
//    
//    
//    
}