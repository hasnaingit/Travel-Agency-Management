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
public class HotelBooking  implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private int hotelbookingid;

    private int hotelid, adultnum, childnum, totaldays, totalcost;

    @Temporal(TemporalType.DATE)

    private Date startdate, enddate, bookingdate;
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getHotelbookingid() {
        return hotelbookingid;
    }

    public void setHotelbookingid(int hotelbookingid) {
        this.hotelbookingid = hotelbookingid;
    }

    public int getHotelid() {
        return hotelid;
    }

    public void setHotelid(int hotelid) {
        this.hotelid = hotelid;
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

    public int getTotaldays() {
        return totaldays;
    }

    public void setTotaldays(int totaldays) {
        this.totaldays = totaldays;
    }

   

    public int getTotalcost() {
        return totalcost;
    }

    public void setTotalcost(int totalcost) {
        this.totalcost = totalcost;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Date getBookingdate() {
        return bookingdate;
    }

    public void setBookingdate(Date bookingdate) {
        this.bookingdate = bookingdate;
    }

}
