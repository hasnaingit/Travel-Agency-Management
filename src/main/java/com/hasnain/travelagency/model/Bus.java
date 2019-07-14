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
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Bus implements  Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int  busid ;
  
  String busname, startplace, endplace, fare, status ;
  
  @Transient
    MultipartFile   photourl   ;

    public MultipartFile getPhotourl() {
        return photourl;
    }

    public void setPhotourl(MultipartFile photourl) {
        this.photourl = photourl;
    }
  
  

    public int getBusid() {
        return busid;
    }

    public void setBusid(int busid) {
        this.busid = busid;
    }

    public String getBusname() {
        return busname;
    }

    public void setBusname(String busname) {
        this.busname = busname;
    }

    public String getStartplace() {
        return startplace;
    }

    public void setStartplace(String startplace) {
        this.startplace = startplace;
    }

    public String getEndplace() {
        return endplace;
    }

    public void setEndplace(String endplace) {
        this.endplace = endplace;
    }

    public String getFare() {
        return fare;
    }

    public void setFare(String fare) {
        this.fare = fare;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Bus{" + "busid=" + busid + ", busname=" + busname + ", startplace=" + startplace + ", endplace=" + endplace + ", fare=" + fare + ", status=" + status + ", photourl=" + photourl + '}';
    }
    
    
    
}
