/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.Feedback;
import org.springframework.stereotype.Service;

@Service
public interface FeedbackService {
     public String insertFeedback(Feedback f);

    public String updateFeedback( int feedbackid ,Feedback f);

    public String deleteFeedback(int feedbackid);

    public String viewFeedback();

    public Feedback   viewOneFeedback(int feedbackid);
}
