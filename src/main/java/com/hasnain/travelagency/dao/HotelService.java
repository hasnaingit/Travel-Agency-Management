/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.Hotel;
import org.springframework.stereotype.Service;

@Service
public interface HotelService {
     public String insertHotel(Hotel hl);

    public String updateHotel(Hotel hl);

    public String deleteHotel(int hotelid);

    public String viewHotel();

    public Hotel viewOneHotel(int hotelid);
}
