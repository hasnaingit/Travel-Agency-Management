
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.Packages;
import org.springframework.stereotype.Service;

@Service
public interface PackagesService {
    
     public String insertPackages (Packages p);

    public String updatePackages ( int packid , Packages p);

    public String deletePackages (int packid);

    public String viewPackages ();

    public Packages   viewOnePackages (int packid);
    
}
