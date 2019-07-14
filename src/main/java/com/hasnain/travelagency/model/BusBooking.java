
package com.hasnain.travelagency.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class BusBooking implements Serializable{
     @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
     
    private int busbookingid;
    @Column
    private int  busid;
    @Column
    private String custid;
    
    
    @Temporal(TemporalType.DATE)
    

    private Date bookingdate;
    @Column
    private String status;
    @Column
    private String payment;
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    

    public int getBusbookingid() {
        return busbookingid;
    }

    public void setBusbookingid(int busbookingid) {
        this.busbookingid = busbookingid;
    }

    public int getBusid() {
        return busid;
    }

    public void setBusid(int busid) {
        this.busid = busid;
    }

    public String getCustid() {
        return custid;
    }

    public void setCustid(String custid) {
        this.custid = custid;
    }

    public Date getBookingdate() {
        return bookingdate;
    }

    public void setBookingdate(Date bookingdate) {
        this.bookingdate = bookingdate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    @Override
    public String toString() {
        return "busbooking{" + "busbookingid=" + busbookingid + ", busid=" + busid + ", custid=" + custid + ", bookingdate=" + bookingdate + ", status=" + status + ", payment=" + payment + '}';
    }
    
    
}
