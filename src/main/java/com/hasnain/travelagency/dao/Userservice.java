/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.User;
import com.hasnain.travelagency.model.UserRole;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service
public interface Userservice {
    public String acceptUser(User u);

    public String insertUser(User u);

    public String updateUser(User u);

    public String deleteUser(User u);

    public String viewUsers(User u);

    public User viewUser(String s);
}
