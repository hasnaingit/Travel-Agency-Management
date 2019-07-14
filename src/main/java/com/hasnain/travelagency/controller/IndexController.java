/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import static java.awt.SystemColor.info;
/**
 *
 * @author User
 */
@Controller
public class IndexController {
   
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView landingPage(HttpSession httpSession) {
       
        ModelAndView mv = new ModelAndView("index");
       
       
        return mv;
    }
    
    
   @RequestMapping(value = "/dashboard")
    public ModelAndView dashboard() {
       
        ModelAndView mv = new ModelAndView("admindash");
       
       
        return mv;
    }
    
     @RequestMapping(value = "/userdashboard")
    public ModelAndView userdashboard() {
       
        ModelAndView mv = new ModelAndView("userDash");
       
       
        return mv;
    }
    
    
    
}
