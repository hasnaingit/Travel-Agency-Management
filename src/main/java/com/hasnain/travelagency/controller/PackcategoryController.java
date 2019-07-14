
package com.hasnain.travelagency.controller;
import com.hasnain.travelagency.dao.PackcategoryService;
import com.hasnain.travelagency.model.Packcategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PackcategoryController {
    @Autowired
    PackcategoryService pcs;
    
    
     @RequestMapping("/showpackcategorypage")
    public ModelAndView showpackCategory() {
        String packcategorygsonlist = pcs.viewPackcategory();
        ModelAndView mv = new ModelAndView("addpackcategorypage", "PackCategoryObject1", new Packcategory());
        mv.addObject("packcategorymodelobject", packcategorygsonlist);
        mv.addObject("check", "true");
        return mv;
}
    
      @RequestMapping(value = "/addingpackcategory", params = "Add")
    public String addPackcategory(@ModelAttribute("PackCategoryObject1") Packcategory pc) {     
        pcs.insertPackcategory(pc);
       return "redirect:/showpackcategorypage";
    } 
    
     @RequestMapping(value = "/addingpackcategory", params = "Edit")
    public String editPackcategory(@ModelAttribute("PackCategoryObject1")Packcategory pc) {
        pcs.updatePackcategory(pc);      
        return "redirect:/showpackcategorypage";
    }
    
    @RequestMapping("removepackcategory/{packcatid}")
    public String removepackcategory(@PathVariable("packcatid") int packcatid) {
       pcs.deletePackcategory(packcatid);
    
        return "redirect:/showpackcategorypage";
    } 
     
    @RequestMapping("/editpackcategorybutton")
    public ModelAndView passingonecategory(@RequestParam("packcatid") int packcatid) {
Packcategory pc =pcs.viewOnePackcategory(packcatid);

String packcategorygsonlist= pcs.viewPackcategory();
   
        ModelAndView mv = new ModelAndView("addpackcategorypage", "PackCategoryObject1", pc);
        mv.addObject("packcategorygsonlist", packcategorygsonlist);
        mv.addObject("check", "false");
        return mv;
    }
    
}