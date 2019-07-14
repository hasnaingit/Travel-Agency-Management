/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Packcategory  implements Serializable {
    
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int packcatid ;
    
    
   private String  packtitle, packdetails; 

    public int getPackcatid() {
        return packcatid;
    }

    public void setPackcatid(int packcatid) {
        this.packcatid = packcatid;
    }



    public String getPacktitle() {
        return packtitle;
    }

    public void setPacktitle(String packtitle) {
        this.packtitle = packtitle;
    }

    public String getPackdetails() {
        return packdetails;
    }

    public void setPackdetails(String packdetails) {
        this.packdetails = packdetails;
    }
   
   
}
