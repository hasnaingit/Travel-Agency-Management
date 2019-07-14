package com.hasnain.travelagency.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperReport;

import com.hasnain.travelagency.daoimpl.JasperReportDAO;
import com.hasnain.travelagency.reportmodel.CustomerlistReport;
import com.hasnain.travelagency.reportmodel.PaymentReport;
import java.util.Date;
/**
 *
 * @author User
 */
@Controller
public class ReportController {
    
    @RequestMapping(value = "/reportView", method = RequestMethod.GET)
    public String loadSurveyPg(
            @ModelAttribute("reportInputForm") CustomerlistReport reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "report";
    }
    
    @RequestMapping(value = "/reportView", method = RequestMethod.POST)
    public String generateReport(@ModelAttribute("reportInputForm") CustomerlistReport reportInputForm,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "customerlist";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            String title = reportInputForm.getTitle();
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("title", title);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
    
     @RequestMapping(value = "/paymentreportView", method = RequestMethod.GET)
    public String loadsSurveyPg(
            @ModelAttribute("reportInputForm") PaymentReport reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "payreport";
    }
    
    
    
    
    
     @RequestMapping(value = "/paymentreportView", method = RequestMethod.POST)
    public String generatepaymentReport(@ModelAttribute("reportInputForm") PaymentReport reportInputForm,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "report1";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
          
            String  firstdate=reportInputForm.getFirstdate();
            String  seconddate=reportInputForm.getSeconddate();
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("firstdate", firstdate);
            hmParams.put("seconddate", seconddate);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
    
    
    
}
