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
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chulan
 */
@WebServlet(name = "BookInsert", urlPatterns = {"/BookInsert"})
public class BookInsert extends HttpServlet {

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
            out.println("<title>Servlet BookInsert</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookInsert at " + request.getContextPath() + "</h1>");
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

        //Get The User Inputs
        String bookID = request.getParameter("bookID");
        String bookTitle = request.getParameter("bookTitle");
        String bookAuthor = request.getParameter("bookAuthor");
        String bookISBN = request.getParameter("bookISBN");
        String bookNoOfCopies = request.getParameter("bookNoOfCopies");
        String bookInsDate = request.getParameter("bookInsDate");
        String bookPublishedDate = request.getParameter("bookPublishedDate");
        String bookInsertDate = request.getParameter("bookInsertDate");
        String bookReserved = request.getParameter("bookReserve");

        //Display User Input
        PrintWriter out = response.getWriter();
        out.println("<h1><b> Book_ID: " + bookID + "</b></h1>");
        out.println("<h1><b> Book_Title: " + bookTitle + "</b></h1>");
        out.println("<h1><b> Book_Author: " + bookAuthor + "</b></h1>");
        out.println("<h1><b> Book_ISBN: " + bookISBN + "</b></h1>");
        out.println("<h1><b> Book_No_Of_Copies: " + bookNoOfCopies + "</b></h1>");
        out.println("<h1><b> Book_Published_Date: " + bookPublishedDate + "</b></h1>");
        out.println("<h1><b> Book_Insert_Date: " + bookInsertDate + "</b></h1>");
        out.println("<h1><b> Book_Reserved: " + bookReserved + "</b></h1>");

        //connectToSQLServer DBconnection = new connectToSQLServer();
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
            String sql = "INSERT INTO dbo.Books VALUES('" + bookID + "','" + bookTitle + "','" + bookAuthor + "','" + bookISBN + "','" + bookNoOfCopies + "','" + bookPublishedDate + "','" + bookInsertDate + "','" + bookReserved + "')";
            stmt.executeUpdate(sql);
            out.println();
            out.println();
            out.println("<h2>Inserted Successfully!<h2>");

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
