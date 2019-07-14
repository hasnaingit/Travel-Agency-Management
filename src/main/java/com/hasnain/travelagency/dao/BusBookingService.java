/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.BusBooking;
import org.springframework.stereotype.Service;

@Service
public interface BusBookingService {
     public String insertBusBooking(BusBooking bb);

    public String updateBusBooking( int busbookingid , BusBooking bb);

    public String deleteBusBooking(int busbookingid);

    public String viewBusBooking(String email);

    public BusBooking  viewOneBusBooking(int busbookingid);
}
