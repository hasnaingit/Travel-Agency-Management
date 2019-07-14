/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Packages  implements Serializable{
     @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int packid;
    private int   packcatid,  daynum, nightnum, adultnum, childnum, accdncost, buscost, aircost, guidecost, totalcost  ;

      @Temporal(TemporalType.DATE)
    private Date   depdate, returndate   ;
 
    private String  status, description, location;     
    
    
    @Transient
    MultipartFile   photourl   ;

    public MultipartFile getPhotourl() {
        return photourl;
    }

    public void setPhotourl(MultipartFile photourl) {
        this.photourl = photourl;
    }


    public int getPackid() {
        return packid;
    }

    public void setPackid(int packid) {
        this.packid = packid;
    }

    public int getPackcatid() {
        return packcatid;
    }

    public void setPackcatid(int packcatid) {
        this.packcatid = packcatid;
    }

    public int getDaynum() {
        return daynum;
    }

    public void setDaynum(int daynum) {
        this.daynum = daynum;
    }

    public int getNightnum() {
        return nightnum;
    }

    public void setNightnum(int nightnum) {
        this.nightnum = nightnum;
    }

    public int getAdultnum() {
        return adultnum;
    }

    public void setAdultnum(int adultnum) {
        this.adultnum = adultnum;
    }

    public int getChildnum() {
        return childnum;
    }

    public void setChildnum(int childnum) {
        this.childnum = childnum;
    }

    public int getAccdncost() {
        return accdncost;
    }

    public void setAccdncost(int accdncost) {
        this.accdncost = accdncost;
    }

    public int getBuscost() {
        return buscost;
    }

    public void setBuscost(int buscost) {
        this.buscost = buscost;
    }

    public int getAircost() {
        return aircost;
    }

    public void setAircost(int aircost) {
        this.aircost = aircost;
    }

    public int getGuidecost() {
        return guidecost;
    }

    public void setGuidecost(int guidecost) {
        this.guidecost = guidecost;
    }

    public int getTotalcost() {
        return totalcost;
    }

    public void setTotalcost(int totalcost) {
        this.totalcost = totalcost;
    }

    public Date getDepdate() {
        return depdate;
    }

    public void setDepdate(Date depdate) {
        this.depdate = depdate;
    }

    public Date getReturndate() {
        return returndate;
    }

    public void setReturndate(Date returndate) {
        this.returndate = returndate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
    
}
