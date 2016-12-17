/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package librarymgmtpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chulan
 */
@WebServlet(name = "UserRegister", urlPatterns = {"/UserRegister"})
public class UserRegister extends HttpServlet {

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
            out.println("<title>Servlet UserRegister</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserRegister at " + request.getContextPath() + "</h1>");
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
        //Get User Inputs
        String userID = request.getParameter("userID");
        String userName = request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");
        String userEmail = request.getParameter("userEmail");
        String userRole = request.getParameter("userRole");
        String userRegisterDate = request.getParameter("userRegisteredDate");

        //Display Output
        PrintWriter out = response.getWriter();
        out.println("<h1><b> User_ID: " + userID + "</b></h1>");
        out.println("<h1><b> User_Name: " + userName + "</b></h1>");
        out.println("<h1><b> User_Password: " + userPassword + "</b></h1>");
        out.println("<h1><b> User_Email: " + userEmail + "</b></h1>");
        out.println("<h1><b> User_Role: " + userRole + "</b></h1>");
        out.println("<h1><b> User_Register_Date: " + userRegisterDate + "</b></h1>");

        Connection con;
        Statement stmt;

        //Create Connection
        try {
            // Establish the connection.
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); // Load The Driver
            // Line Below Needs To Be Modified To Include The Database Name, User, And Password (if any)
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=LibraryManagementSystem;user=LibraryUser;password=1234;");
            System.out.println("Connected to Database!");

            stmt = con.createStatement();
            String sql = "INSERT INTO dbo.Users VALUES('" + userID + "','" + userName + "','" + userPassword + "','" + userEmail + "','" + userRole + "','" + userRegisterDate + "')";
            stmt.executeUpdate(sql);
            out.println();
            out.println();
            out.println("<h2>Registered Successfully!<h2>");

        } // Handle any errors that may have occurred.
        catch (Exception e) {
            e.printStackTrace();
        }

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
