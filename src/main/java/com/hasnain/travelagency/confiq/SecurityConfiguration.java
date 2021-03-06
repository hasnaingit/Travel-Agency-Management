/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.confiq;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 *
 * @author User
 */
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    
    @Autowired
    private DataSource dataSource;
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        
        http.authorizeRequests()
                .antMatchers("/").permitAll()
           //     .antMatchers("/showingcategorypage").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/dashboard").access("hasRole('ROLE_ADMIN')")
                
                 .antMatchers("/showingcustomerpage").access("hasRole('ROLE_ADMIN')")
                 .antMatchers("/showingcategorypage").access("hasRole('ROLE_ADMIN')")
                 .antMatchers("/showfeedbackpage").access("hasRole('ROLE_ADMIN')")
                 .antMatchers("/showhotelpage").access("hasRole('ROLE_ADMIN')")
                 .antMatchers("/showpackagespage").access("hasRole('ROLE_ADMIN')")
                 .antMatchers("/showpaymentpage").access("hasRole('ROLE_ADMIN')")
                 .antMatchers("/userdashboard").access("hasRole('ROLE_USER')")
                 .antMatchers("/showbookingpage").access("hasRole('ROLE_USER')")
                 .antMatchers("/showbusbookingpage").access("hasRole('ROLE_USER')")
                 .antMatchers("/showbookingpage").access("hasRole('ROLE_USER')")
//                .antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")
                .and().formLogin().loginPage("/login").loginProcessingUrl("/perform_login")
                .successForwardUrl("/loginsuccess").usernameParameter("usename")
                .passwordParameter("userpassword").failureUrl("/login")
                .and().logout().logoutUrl("/logout")
                .logoutSuccessUrl("/login").invalidateHttpSession(true)
                .and().csrf().disable();
    }
    
    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        System.out.println("in security.............");
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("select emailid, password, status from UserRole where emailid=? and status='True'")
                .authoritiesByUsernameQuery("select emailid,role from UserRole where emailid=?");
    }
    
}
