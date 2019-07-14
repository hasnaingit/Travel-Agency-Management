
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.AirBooking;
import org.springframework.stereotype.Service;

@Service
public interface AirBookingService {
      public String insertAirBooking(AirBooking ab);

    public String updateAirBooking( int airbookingid , AirBooking ab);

    public String deleteAirBooking(int airbookingid);

    public String viewAirBooking();

    public AirBooking  viewOneHotelBooking(int airbookingid);
    
}
