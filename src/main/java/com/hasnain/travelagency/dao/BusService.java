/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.Bus;
import org.springframework.stereotype.Service;

@Service
public interface BusService {
    public String insertBus(Bus bs);

    public String updateBus(Bus bs);

    public String deleteBus(int busid);

    public String viewBus();
    
    
public String searchBus(Bus b);


    public Bus viewOneBus(int busid);
}
