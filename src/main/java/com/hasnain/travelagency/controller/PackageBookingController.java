
package com.hasnain.travelagency.controller;

import com.hasnain.travelagency.dao.CustomerService;
import com.hasnain.travelagency.dao.PackageBookingService;
import com.hasnain.travelagency.dao.PackagesService;
import com.hasnain.travelagency.dao.Userservice;
import com.hasnain.travelagency.model.BusBooking;
import com.hasnain.travelagency.model.PackageBooking;
import com.hasnain.travelagency.model.Packages;
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
public class PackageBookingController {
    
    @Autowired
    PackageBookingService pbs; 
    
    @Autowired 
    PackagesService ps;
    
    @Autowired
    CustomerService cs;
  
    @Autowired
    Userservice us;
       @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        binder.registerCustomEditor(Date.class, "bookingdate", new CustomDateEditor(format, false));
    }


    @RequestMapping("/showbookingpage")
    public ModelAndView BookingPage(HttpSession httpSession) {

        String email = (String) httpSession.getAttribute("UserId");
        int pid = (int) httpSession.getAttribute("packid");
        String packagebookingjson=pbs.viewPackageBooking(email);
        System.out.println(packagebookingjson);
 
        //User urm = us.viewUser(email);
        PackageBooking bm = new PackageBooking();
        bm.setEmailid(email);
        ModelAndView mv = new ModelAndView("bookingpage", "billingAddressObj", bm);
        mv.addObject("packagebookingjson", packagebookingjson);
        mv.addObject("pid", pid);

        httpSession.setAttribute("newobj", "true");
        return mv;
    }

    
    
    @RequestMapping(value = "/addbooking", params = "addnew")
    public String addnewaddress(@ModelAttribute("billingAddressObj") PackageBooking pb, HttpSession httpSession) {
        String email = (String) httpSession.getAttribute("UserId");
        pb.setEmailid(email);
        pbs.insertPackageBooking(pb);
      
        httpSession.setAttribute("newobj", "false");
        return "redirect:/showcustomerpaymentpage";
    }

    
        @RequestMapping(value = "/addbooking", params = "Edit")
    public String editingaddress(@ModelAttribute("billingAddressObj")  PackageBooking pb, HttpSession httpSession) {
        String email = (String) httpSession.getAttribute("UserId");
        //User urm = us.viewUser(email);
        pb.setEmailid(email);
        int bookingid = pb.getPackbookingid();
        pbs.updatePackageBooking(bookingid, pb);
        httpSession.setAttribute("newobj", "false");
        return "redirect:/showbookingpage";
    }
    
    
    
    
    @RequestMapping("/editaddress")
    public ModelAndView showeditaddresspage(@RequestParam("getpackbookingid") int packbookingid, HttpSession httpSession) {
        String email = (String) httpSession.getAttribute("UserId");
        String addressesjson=pbs.viewPackageBooking(email);
       
        PackageBooking bm=(PackageBooking) pbs.viewOnePackageBooking(packbookingid);
        ModelAndView mv = new ModelAndView("bookingpage");
        mv.addObject("billingAddressObj", bm);
        mv.addObject("addressesjson", addressesjson);
        httpSession.setAttribute("newobj", "false");
        return mv;
    }

    @RequestMapping("/removebooking")
    public String removeaddress(@RequestParam("getpackbookingid") int packbookingid, HttpSession httpSession) {
pbs.deletePackageBooking(packbookingid);
        httpSession.setAttribute("newobj", "false");
        return "redirect:/showbookingpage";
    }
    

   
//  
//     @RequestMapping("/showbookingpage")
//    public ModelAndView showPackagebooking() {
//        
//        String packagebookinglist=pbs.viewPackageBooking();
//        String packagelist=ps.viewPackages();
//        String customerlist=cs.viewCustomer();
//        ModelAndView mv = new ModelAndView("bookingpage", "newPackageBookingObject", new PackageBooking());
//        mv.addObject("packagebookinglist", packagebookinglist);
//        mv.addObject("packagelist", packagelist);
//        mv.addObject("customerlist", customerlist);
//        mv.addObject("check", "true");
//        return mv;
//    }
//    
//      @RequestMapping(value = "/bookingadd", params = "Add")
//    public String addbooking(@ModelAttribute("newPackageBookingObject") PackageBooking pb, HttpServletRequest request) {
//    pbs.insertPackageBooking(pb);
//     return "redirect:/showbookingpage"; 
//}
//        @RequestMapping(value = "/bookingadd", params = "Edit")
//    public String editbooking(@ModelAttribute("newPackageBookingObject")  PackageBooking pb, HttpServletRequest request) {
//    pbs.updatePackageBooking(pb.getPackbookingid(), pb);
//  return "redirect:/showbookingpage"; 
//}
//   @RequestMapping("removebooking/{busbookingid}")
//    public String removebusbooking(@PathVariable("packbookingid") int packbookingid) {
//        pbs.deletePackageBooking(packbookingid);
//     return "redirect:/showbookingpage"; 
//    }   
//    
//     @RequestMapping("/editingbooking")
//    public ModelAndView editbookingpage(@RequestParam("packbookingid") int packbookingid) {
//        
//        String packagebookinglist=pbs.viewPackageBooking();
//        String packagelist=ps.viewPackages();
//        String customerlist=cs.viewCustomer();
//        ModelAndView mv = new ModelAndView("bookingpage", "newPackageBookingObject", pbs.viewOnePackageBooking(packbookingid));
//        mv.addObject("packagebookinglist", packagebookinglist);
//        mv.addObject("packagelist", packagelist);
//        mv.addObject("customerlist", customerlist);
//        mv.addObject("check", "false");
//        return mv;
//    }
    
    
}
