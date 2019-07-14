
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.HotelBooking;
import org.springframework.stereotype.Service;

@Service
public interface HotelBookingService {
     public String insertHotelBooking(HotelBooking hb);

    public String updateHotelBooking( int hotelbookingid , HotelBooking hb);

    public String deleteHotelBooking(int hotelbookingid);

    public String viewHotelBooking(String email);

    public HotelBooking  viewOneHotelBooking(int hotelbookingid);
}
