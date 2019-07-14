
package com.hasnain.travelagency.controller;

import com.google.gson.Gson;
import com.hasnain.travelagency.dao.PackagesService;
import com.hasnain.travelagency.dao.PackcategoryService;

import com.hasnain.travelagency.model.Packages;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PackagesController {
    @Autowired
    PackagesService ps;
    @Autowired 
    PackcategoryService pcs;
    
      @Autowired
    private ServletContext servletContext;
    
     @InitBinder
    public void myInitBinder(WebDataBinder binder) {      
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        binder.registerCustomEditor(Date.class, "depdate", new CustomDateEditor(format, false));
        binder.registerCustomEditor(Date.class, "returndate", new CustomDateEditor(format, false));
    }
  
    @RequestMapping("/showpackagespage")
    public ModelAndView showPackages() {
        String packageslist=ps.viewPackages();
        String packcatlist= pcs.viewPackcategory();
        ModelAndView mv = new ModelAndView("packages", "newPackagesObject", new Packages());
        mv.addObject("packageslist", packageslist);
        mv.addObject("packcatlist", packcatlist);
        mv.addObject("check", "true");
        return mv;
    }
    
         @RequestMapping(value = "/packagesadd", params = "Add")
    public String addpackages(@ModelAttribute("newPackagesObject") Packages p , HttpServletRequest request) {
    ps.insertPackages(p);
    
    
      String path = servletContext.getRealPath("/");
        System.out.println(path);
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut2 = targetcut.substring(0, targetcut.lastIndexOf("\\"));
        //System.out.println(targetcut2+".......");
        //System.out.println(request.getSession().getServletContext());
        //String p = servletContext.getContextPath();
        String pq = targetcut2 + "\\src\\main\\webapp\\resources\\image\\" + String.valueOf(p.getPackid()) + "" + ".jpg";
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        System.out.println(pq);
        MultipartFile filedet = p.getPhotourl();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                FileOutputStream fos = new FileOutputStream(new File(pq));
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
    
     return "redirect:/showpackagespage"; 
}
    
      @RequestMapping(value = "/packagesadd", params = "Edit")
    public String Editpackages(@ModelAttribute("newPackagesObject") Packages p , HttpServletRequest request) {
  ps.updatePackages(p.getPackid(), p);
  
  
   String path = servletContext.getRealPath("/");
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut2 = targetcut.substring(0, targetcut.lastIndexOf("\\"));
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        String pq = targetcut2 + "\\src\\main\\webapp\\resources\\image\\" + String.valueOf(p.getPackid()) + "" + ".jpg";
        MultipartFile filedet =p.getPhotourl();
        if (!filedet.isEmpty()) {
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                File f = new File(pq);
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
     return "redirect:/showpackagespage"; 
}    
      @RequestMapping("removepackages/{packid}")
    public String removepackages(@PathVariable("packid") int packid) {
        ps.deletePackages(packid);
        return "redirect:/showpackagespage";
    } 

    
    
    
    
    
    @RequestMapping("/displaypackagepage")
    public ModelAndView viewAllPackagespage() {
        String packagelist=ps.viewPackages();
      
        ModelAndView mv = new ModelAndView("viewpackages");
        mv.addObject("packagelist", packagelist);
        return mv;
    }
    
    
@RequestMapping("/packagedescription")
    public ModelAndView DescriptionOfOnePackage(@RequestParam("getId") int packid, HttpSession session) {
        Gson g = new Gson();
        String packagedata=g.toJson(ps.viewOnePackages(packid));
       
        session.setAttribute("packid", packid);
        ModelAndView mv = new ModelAndView("packagedescription");
        mv.addObject("packagedata", packagedata);
        return mv;
    }
    
    

    
    
     @RequestMapping("/editinpackages")
    public ModelAndView editingpackages(@RequestParam("packid") int packid) {
        String packageslist=ps.viewPackages();
        String packcatlist= pcs.viewPackcategory();
        ModelAndView mv = new ModelAndView("packages", "newPackagesObject",ps.viewOnePackages(packid));
        mv.addObject("packageslist", packageslist);
        mv.addObject("packcatlist", packcatlist);
        mv.addObject("check", "false");
        return mv;
    }
    
    
}
