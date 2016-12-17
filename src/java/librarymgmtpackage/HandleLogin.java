/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package librarymgmtpackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chulan
 */
@WebServlet(name = "HandleLogin", urlPatterns = {"/HandleLogin"})
public class HandleLogin extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HandleLogin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HandleLogin at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);

        MD5Password md5 = new MD5Password();
        
        connectToSQLServer DBconnection = new connectToSQLServer();

        //creating a session
        HttpSession session = request.getSession();

        DBconnection.createConnection();

        if (DBconnection.Userlogin(request.getParameter("username"), request.getParameter("password"))) {

            String uname = request.getParameter("username");
            String pass = request.getParameter("password");

            if (uname.equals("admin")) {
                System.out.println("Admin Logged In");
                session.setAttribute("username", uname);
                response.sendRedirect("AdminPage.jsp");
            } else {
                System.out.println("User Logged In");
                session.setAttribute("username", uname);
                response.sendRedirect("UserPage.jsp");
            }
        } else{
            String s = "Please Try Again!\n Invalid Username or Password. <a href=\"login.jsp\" >Go Back</a>";
            request.setAttribute("passedMessage", s);
            RequestDispatcher rd = request.getRequestDispatcher("/User.jsp");
            rd.forward(request, response);
        }

        DBconnection.closeConnection();
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
