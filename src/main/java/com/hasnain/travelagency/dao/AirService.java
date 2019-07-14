/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.Air;

import org.springframework.stereotype.Service;

@Service
public interface AirService {
     public String insertAir(Air ar);

    public String updateAir(Air ar);

    public String deleteAir(int airid);

    public String viewAir();

    public Air viewOneAir(int airid); 
}
