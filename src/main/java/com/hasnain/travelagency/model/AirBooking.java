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

@Entity
public class AirBooking implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int airbookingid;
    private int airid, custid, numofadult, numofchild, totalprice;
    @Temporal(TemporalType.DATE)
    private Date bookingdate;
      private String passportno;

    public int getAirbookingid() {
        return airbookingid;
    }

    public void setAirbookingid(int airbookingid) {
        this.airbookingid = airbookingid;
    }

    public int getAirid() {
        return airid;
    }

    public void setAirid(int airid) {
        this.airid = airid;
    }

    public int getCustid() {
        return custid;
    }

    public void setCustid(int custid) {
        this.custid = custid;
    }

    public int getNumofadult() {
        return numofadult;
    }

    public void setNumofadult(int numofadult) {
        this.numofadult = numofadult;
    }

    public int getNumofchild() {
        return numofchild;
    }

    public void setNumofchild(int numofchild) {
        this.numofchild = numofchild;
    }

    public int getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(int totalprice) {
        this.totalprice = totalprice;
    }

    public Date getBookingdate() {
        return bookingdate;
    }

    public void setBookingdate(Date bookingdate) {
        this.bookingdate = bookingdate;
    }

    public String getPassportno() {
        return passportno;
    }

    public void setPassportno(String passportno) {
        this.passportno = passportno;
    }
      

}
