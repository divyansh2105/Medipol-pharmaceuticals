/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dahiya
 */
public class bmi extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             out.println("<html>");
        out.println("<head>");
        out.println("<title>bmi</title>");
        out.println("</head>");
        out.println("<body style='background-color:#F6F6EA;'>");
       
         DecimalFormat df2 = new DecimalFormat(".##");
         String h=request.getParameter("htype");
            String heightstring=request.getParameter("height");
            double heightint=Double.parseDouble(heightstring);
            double height = 0;
            double weight = 0;
            double target = 0;
            if(h.equals("cm"))
            {
                height=heightint/100;
            }
            if(h.equals("feet"))
            {
                height=heightint*0.3048;
            }
            if(h.equals("m"))
            {
                height=heightint;
            }
            
            String w=request.getParameter("wtype");
            String weightstring=request.getParameter("weight");
            if(w.equals("lbs"))
            {
                double wint=Double.parseDouble(weightstring);
               weight=wint*0.453;
            }
            if(w.equals("kg"))
            {
                 weight=Double.parseDouble(weightstring);
            }
        
            String t=request.getParameter("ttype");
            String targetstring=request.getParameter("target");
            if(t.equals("lbs"))
            {
                double tint=Double.parseDouble(targetstring);
                 target=tint*0.453592;
            }
            if(t.equals("kg"))
            {
                 target=Double.parseDouble(targetstring);
            }
        double bmi=weight/(height*height);
        double per = 0;
          String text=null;
          String gl=null;
       if(target>weight)
        {
            per=(target-weight);
            text="Here are some energy-dense foods that are perfect for gaining weight:<br><br>Nuts: Almonds, walnuts, macadamia nuts"+", peanuts, etc. <br><br>Dried fruit: Raisins, dates, prunes and others. <br><br>High-fat dairy: Whole milk, full-fat yogurt, cheese, cream."+
"<br><br>Fats and Oils: Extra virgin olive oil and avocado oil.<br><br>Grains: Whole grains like oats and brown rice.";
        gl="You need to gain "+df2.format(per)+" kg";
        }
        if(target<weight)
        {
            per=(weight-target);
          text="Here are the 10 most weight loss friendly foods on earth, that are supported by science.<br>1. Whole Eggs<br>2. Leafy Greens<br>3.\"+\" Salmon<br>4. Cruciferous Vegetables<br>5. Lean Beef and \"+\"Chicken Breast<br>6. Boiled Potatoes<br>7. Tuna<br>8. Beans and Legumes\"+\"<br>9. Soups<br>10. Cottage Cheese";
        gl="You need to lose "+df2.format(per)+" kg";
        }
        if(target==weight)
        {
            text=null;
            gl="You are at your targetted weight";
        }
        String bmistring;
        if(bmi<18.5)
        {
            bmistring="you are underweight";
        }
        else if(bmi>=18.5 && bmi<24.9)
        {
            bmistring="you have normal weight";
        }
        else if(bmi>=24.9 && bmi<29.9)
        {
            bmistring="you are overweight";
        }
        else
        {
            bmistring="you are obese";
        }
      
         out.println("<h1>" + "Your BMI is:"+df2.format(bmi) + "</h1>");
        out.println("<h3>" +bmistring + "</h3>"); 
        out.println("<h3>" + gl + "</h3>");
        out.println("<h4>" + text + "</h4>");
        
        
        
        
        
        
        
        out.println("</body>");
        out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}










