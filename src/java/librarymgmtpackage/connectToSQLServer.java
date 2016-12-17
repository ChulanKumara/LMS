/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package librarymgmtpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Chulan
 */
public class connectToSQLServer {

    // Declare the JDBC objects.
    Connection con;
    Statement stmt;

    public void createConnection() {

        try {
            // Establish the connection.
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); // Load The Driver
            // Line Below Needs To Be Modified To Include The Database Name, User, And Password (if any)
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=LibraryManagementSystem;user=LibraryUser;password=1234;");
            System.out.println("Connected to Database!");

            stmt = con.createStatement();

        } // Handle any errors that may have occurred.
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Close Connections That Were Open
    public void closeConnection() {
        try {
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public boolean Userlogin(String enteredUsername, String enteredPassword) {
        String usernameFromDB = null;
        String userpassFromDB = null;
        try {
            String SQL = "SELECT Username,Password FROM dbo.Users WHERE username = '" + enteredUsername + "'";           
            ResultSet rs = stmt.executeQuery(SQL);

            // Iterate through the data in the result set and display it.
            while (rs.next()) {
                usernameFromDB = rs.getString(1);
                userpassFromDB = rs.getString(2);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(connectToSQLServer.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (usernameFromDB.equals(enteredUsername) && userpassFromDB.equals(enteredPassword)) {
            return true;
        } else {
            return false;
        }
    }

}
