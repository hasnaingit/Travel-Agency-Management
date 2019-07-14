/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.controller;

import com.hasnain.travelagency.dao.BusService;
import com.hasnain.travelagency.model.Bus;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchBusController {
    
    @Autowired
    BusService bs;
    
    @RequestMapping("/showsearchbuspage")
    public ModelAndView SearchbusPage(@ModelAttribute("forsearchingtrain") Bus b) {
        String businfolist=bs.viewBus();      
        ModelAndView mv = new ModelAndView("searchtrain");
        mv.addObject("businfolist", businfolist);      
       
        return mv;

    }

   

    @RequestMapping("/viewsearchbuspage")
    public ModelAndView SearchForgettrainViewPage(@ModelAttribute("forsearchingtrain") Bus b, HttpSession session) {   
        System.out.println("dddddddddd" + b);
        String a= bs.searchBus(b);
      
        session.setAttribute("fare", b.getFare());
        session.setAttribute("endplace", b.getEndplace());
        session.setAttribute("startplace", b.getStartplace());
        session.setAttribute("busname", b.getBusname());
        session.setAttribute("busid", b.getBusid());
      
        ModelAndView mv = new ModelAndView("gettrain", "forsearchingtrain", new Bus());      
        mv.addObject("businflist",a);
         System.out.println(" the list of bus---"+ a);
        return mv;
    }
    
  
    
    
    
    
    
    
}
