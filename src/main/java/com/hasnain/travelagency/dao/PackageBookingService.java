
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.PackageBooking;
import org.springframework.stereotype.Service;

@Service
public interface PackageBookingService {
     public String insertPackageBooking(PackageBooking pb);

    public String updatePackageBooking( int packbookingid ,PackageBooking pb);

    public String deletePackageBooking(int packbookingid);

    public String viewPackageBooking(String emailid);

    public PackageBooking   viewOnePackageBooking(int packbookingid);
}
