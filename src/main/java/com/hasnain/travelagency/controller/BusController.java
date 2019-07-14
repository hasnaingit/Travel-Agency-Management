
package com.hasnain.travelagency.controller;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.BusService;
import com.hasnain.travelagency.model.Bus;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.ServletContext;
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
public class BusController {
     @Autowired
     BusService cat;
     
      @Autowired
    private ServletContext servletContext;
    
     
      @RequestMapping("/showingcategorypage")
    public ModelAndView showcatpage() {
        String categorygsonlist = cat.viewBus();
        ModelAndView mv = new ModelAndView("addcategory", "addCategoryObject1", new Bus());
        mv.addObject("categorymodelobject", categorygsonlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    
     @RequestMapping(value = "/addingcategory", params = "Addcategory")
    public String addcategory(@ModelAttribute("addCategoryObject1") Bus bs) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        cat.insertBus(bs);
       String path = servletContext.getRealPath("/");
        System.out.println(path);
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut2 = targetcut.substring(0, targetcut.lastIndexOf("\\"));
        //System.out.println(targetcut2+".......");
        //System.out.println(request.getSession().getServletContext());
        //String p = servletContext.getContextPath();
        String pq = targetcut2 + "\\src\\main\\webapp\\resources\\image\\" + String.valueOf(bs.getBusid()) + "" + ".jpg";
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        System.out.println(pq);
        MultipartFile filedet = bs.getPhotourl();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                FileOutputStream fos = new FileOutputStream(new File(pq));
                BufferedOutputStream  b= new BufferedOutputStream(fos);
                b.write(bytes);
                b.close();
                fos.close();
                Thread.sleep(10000);
                System.out.println("File Uploaded Successfully");
            } catch (Exception e) {
                System.out.println("Exception Arised" + e);
            }
        } else {
            System.out.println("File is Empty not Uploaded");
        }
    
        
        
        
       return "redirect:/showingcategorypage";
    
    }
    
    
    @RequestMapping(value = "/addingcategory", params = "EditCategory")
    public String editcategory(@ModelAttribute("addCategoryObject1") Bus bs) {
        cat.updateBus(bs);
         String path = servletContext.getRealPath("/");
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut2 = targetcut.substring(0, targetcut.lastIndexOf("\\"));
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        String pq = targetcut2 + "\\src\\main\\webapp\\resources\\image\\" + String.valueOf(bs.getBusid()) + "" + ".jpg";
        MultipartFile filedet =bs.getPhotourl();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                File f = new File(pq);
                if (f.exists()) {
                    f.delete();
                    FileOutputStream fos = new FileOutputStream(f);
                    BufferedOutputStream b = new BufferedOutputStream(fos);
                    b.write(bytes);
                    b.close();
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
        
        
        
        
        return "redirect:/showingcategorypage";
    }
    
    @RequestMapping("removecategory/{busid}")
    public String removecategory(@PathVariable("busid") int busid) {
       
        cat.deleteBus(busid);
        return "redirect:/showingcategorypage";
    } 
    
    
      @RequestMapping("/displaybus")
    public ModelAndView viewAllbuses() {
        String buslist=cat.viewBus();

        ModelAndView mv = new ModelAndView("viewbuses");
        mv.addObject("buslist", buslist);
        return mv;
    }
    
    
    
@RequestMapping("/busdescription")
    public ModelAndView DescriptionOfOnebus(@RequestParam("getId") int busid,  HttpSession session) {
        Gson g = new Gson();
        String busdata=g.toJson(cat.viewOneBus(busid));
       Bus bs=new Bus();
      
       String startplace= bs.getStartplace();
       String endplace=bs.getEndplace();
       String busname=bs.getBusname();
       String fare =bs.getFare();
       
        session.setAttribute("busid", busid);
        session.setAttribute("startplace", startplace);
        session.setAttribute("endplace", endplace);
        session.setAttribute("busname", busname);
        session.setAttribute("fare", fare);
        session.setAttribute("busdata", busdata);
        ModelAndView mv = new ModelAndView("busdescription");
        mv.addObject("busdata", busdata);
        return mv;
    }
    
    
    
    
    
    
    
    
    
    
     @RequestMapping("/editcategorybutton")
    public ModelAndView passingonecategory(@RequestParam("busid") int busid) {
Bus bs=cat.viewOneBus(busid);
     
        String categorygsonlist = cat.viewBus();
        ModelAndView mv = new ModelAndView("addcategory", "addCategoryObject1", bs);
        mv.addObject("categorymodelobject", categorygsonlist);
        mv.addObject("check", "false");
        return mv;
    }
}
