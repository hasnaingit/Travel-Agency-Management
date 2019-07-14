
package com.hasnain.travelagency.controller;

import com.hasnain.travelagency.dao.AirService;
import com.hasnain.travelagency.model.Air;
import com.hasnain.travelagency.model.Bus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AirController {
    @Autowired
    AirService as;
    
    
     @RequestMapping("/showairpage")
    public ModelAndView showairpage() {
        String categorygsonlist = as.viewAir();
        ModelAndView mv = new ModelAndView("addair", "addairobject1", new Air());
        mv.addObject("airmodelobject", categorygsonlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    
     @RequestMapping(value = "/addingAir", params = "AddAir")
    public String addair(@ModelAttribute("addairobject1") Air a) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        as.insertAir(a);
        //mv.addObject("categorymodelobject", categorygsonlist);
       return "redirect:/showairpage";
    
    }
    
    
    @RequestMapping(value = "/addingAir", params = "EditAir")
    public String editair(@ModelAttribute("addairobject1") Air a) {

        //ModelAndView mv =new ModelAndView("AddCategory");
     
        
        as.updateAir(a);
        return "redirect:/showairpage";
    }
    
    @RequestMapping("removeAir/{airid}")
    public String removeair(@PathVariable("airid") int airid) {
       as.deleteAir(airid);
        
       
        return "redirect:/showairpage";
    } 
    
    
    
     @RequestMapping("/editAirButton")
    public ModelAndView passingoneair(@RequestParam("airid") int airid) {
        
        Air ar=as.viewOneAir(airid);

     
        String categorygsonlist = as.viewAir();
        ModelAndView mv = new ModelAndView("addair", "addairobject1", as);
        mv.addObject("airmodelobject", categorygsonlist);
        mv.addObject("check", "false");
        return mv;
    } 
    
    
    
}
