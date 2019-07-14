/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Air {
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int airid;
   
   private String airname, fromstation, tostation, seat, startdate, arivedate, picurl, price, status;

    public int getAirid() {
        return airid;
    }

    public void setAirid(int airid) {
        this.airid = airid;
    }

    public String getAirname() {
        return airname;
    }

    public void setAirname(String airname) {
        this.airname = airname;
    }

    public String getFromstation() {
        return fromstation;
    }

    public void setFromstation(String fromstation) {
        this.fromstation = fromstation;
    }

    public String getTostation() {
        return tostation;
    }

    public void setTostation(String tostation) {
        this.tostation = tostation;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getArivedate() {
        return arivedate;
    }

    public void setArivedate(String arivedate) {
        this.arivedate = arivedate;
    }

    public String getPicurl() {
        return picurl;
    }

    public void setPicurl(String picurl) {
        this.picurl = picurl;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
