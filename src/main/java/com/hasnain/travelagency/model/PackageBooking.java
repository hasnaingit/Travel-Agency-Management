
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
public class PackageBooking implements Serializable{
    
     @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int packbookingid;
            
            private int  packid ;
             @Temporal(TemporalType.DATE)
            
            private Date bookingdate;
            
            private String bookingstatus ,emailid;

    public int getPackbookingid() {
        return packbookingid;
    }

    public void setPackbookingid(int packbookingid) {
        this.packbookingid = packbookingid;
    }

    public int getPackid() {
        return packid;
    }

    public void setPackid(int packid) {
        this.packid = packid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

   

    public Date getBookingdate() {
        return bookingdate;
    }

    public void setBookingdate(Date bookingdate) {
        this.bookingdate = bookingdate;
    }

    public String getBookingstatus() {
        return bookingstatus;
    }

    public void setBookingstatus(String bookingstatus) {
        this.bookingstatus = bookingstatus;
    }
            
}
