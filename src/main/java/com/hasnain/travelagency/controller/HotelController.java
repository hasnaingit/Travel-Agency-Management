
package com.hasnain.travelagency.controller;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.HotelService;
import com.hasnain.travelagency.model.Hotel;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelController {
    @Autowired
    HotelService hs;
    
     @Autowired
    private ServletContext servletContext;
    
    
     @RequestMapping("/showhotelpage")
    public ModelAndView showhotelpage() {
        String hotelist=hs.viewHotel();
        ModelAndView mv = new ModelAndView("addhotel", "newhotelobject", new Hotel());
        mv.addObject("hotellist",hotelist);
        mv.addObject("check", "true");
        return mv;
    }
    
    
          @RequestMapping(value = "/hoteladd", params = "Add")
    public String addhotel(@ModelAttribute("newhotelobject") Hotel hl, HttpServletRequest request) {
        hs.insertHotel(hl);
    
        String path = servletContext.getRealPath("/");
        System.out.println(path);
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut2 = targetcut.substring(0, targetcut.lastIndexOf("\\"));
        //System.out.println(targetcut2+".......");
        //System.out.println(request.getSession().getServletContext());
        //String p = servletContext.getContextPath();
        String p = targetcut2 + "\\src\\main\\webapp\\resources\\image\\" + String.valueOf(hl.getHotelid()) + "" + ".jpg";
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        System.out.println(p);
        MultipartFile filedet = hl.getPhotourl();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                FileOutputStream fos = new FileOutputStream(new File(p));
                BufferedOutputStream bs = new BufferedOutputStream(fos);
                bs.write(bytes);
                bs.close();
                fos.close();
                Thread.sleep(10000);
                System.out.println("File Uploaded Successfully");
            } catch (Exception e) {
                System.out.println("Exception Arised" + e);
            }
        } else {
            System.out.println("File is Empty not Uploaded");
        }
        return "redirect:/showhotelpage";
    }
    
     @RequestMapping(value = "/addingproduct", params = "Addinghotel")
    public String addinghotel(@ModelAttribute("newhotelobject") Hotel hl) {
      
        hs.insertHotel(hl);
        return "redirect:/showhotelpage";

    }
    
    
        @RequestMapping(value = "/hoteladd", params = "Edit")
    public String editProduct(@ModelAttribute("newhotelobject") Hotel hl, HttpServletRequest request) {
        hs.updateHotel(hl);
     
        String path = servletContext.getRealPath("/");
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut2 = targetcut.substring(0, targetcut.lastIndexOf("\\"));
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        String p = targetcut2 + "\\src\\main\\webapp\\resources\\image\\" + String.valueOf(hl.getHotelid()) + "" + ".jpg";
        MultipartFile filedet =hl.getPhotourl();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                File f = new File(p);
                if (f.exists()) {
                    f.delete();
                    FileOutputStream fos = new FileOutputStream(f);
                    BufferedOutputStream bs = new BufferedOutputStream(fos);
                    bs.write(bytes);
                    bs.close();
                    fos.close();
                    Thread.sleep(10000);
                    System.out.println("File Uploaded Successfully");
                }
            } catch (Exception e) {
                System.out.println("Exception Arised" + e);
            }
        } else {
            System.out.println("File is Empty not Uploaded");
        }
        return "redirect:/showhotelpage";
    }
    
     @RequestMapping("removehotel/{hid}")
    public String removehotel(@PathVariable("hid") int hotelid) {
        hs.deleteHotel(hotelid);
        
        return "redirect:/showhotelpage";
    } 
     
     @RequestMapping("/viewhotelpage")
    public ModelAndView viewhotel() {
        String hotellist= hs.viewHotel();
        ModelAndView mv = new ModelAndView("viewhotel");
        mv.addObject("hotellist", hotellist);
        return mv;
    }
    
    
    
      @RequestMapping("/displayhotel")
    public ModelAndView viewAllHotels() {
        String hotellist=hs.viewHotel();
     

        ModelAndView mv = new ModelAndView("viewhotels");
        mv.addObject("hotellist", hotellist);
        return mv;
    }
    
    
    
@RequestMapping("/hoteldescription")
    public ModelAndView DescriptionOfOnebus(@RequestParam("getId") int hotelid, HttpSession session) {
        Gson g = new Gson();
        String hoteldata=g.toJson(hs.viewOneHotel(hotelid));
       
       
        //session.setAttribute("productid", productid);
        ModelAndView mv = new ModelAndView("hoteldescription");
        mv.addObject("hoteldata", hoteldata);
        return mv;
    }
    
 
     @RequestMapping("/editinghotel")
    public ModelAndView edithotel(@RequestParam("gethid") int hotelid) {
        Hotel onehotel= hs.viewOneHotel(hotelid);
        ModelAndView mv = new ModelAndView("addhotel", "newhotelobject", onehotel);
        
        String hotelgsonlist = hs.viewHotel();
        mv.addObject("hotelgsonlist", hotelgsonlist);
        mv.addObject("check", "false");
        return mv;
    }
    
}
