<%-- 
    Document   : BookView
    Created on : Dec 12, 2016, 5:23:53 PM
    Author     : Chulan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Book View Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css" media="screen,projection" />

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    </head>
    <body style="background: url(images/default.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover;-o-background-size: cover; background-size: cover;">

        <!-- navigation bar-->
        <nav>
            <div class="nav-wrapper blue-grey">
                <a href="#!" class="brand-logo grey-text text-darken-4" style="font-weight: 100">&nbsp;Library Management System</a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a class="grey-text text-darken-3"><h4 class="amber-text" align="center">Welcome ${sessionScope.username}</h4></a></li>
                    <li><a class="grey-text text-darken-3" href="index.html">Home</a></li>
                    <li><a class="grey-text text-darken-3" href="login.jsp">Logout</a></li>
                    <li><a class="grey-text text-darken-3" href="About.html">About</a></li>               
                </ul>
                <ul class="side-nav blue-grey darken-1" id="mobile-demo">
                    <li><a><h4 class="amber-text" align="center">Welcome ${sessionScope.username}</h4></a></li>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="login.jsp">Logout</a></li>
                    <li><a href="About.html">About</a></li>

                </ul>
            </div>
        </nav>
        <div class="d">
            <%
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=LibraryManagementSystem;user=LibraryUser;password=1234;");
                System.out.println("Connected to Database !");

                Statement stm = null;
                ResultSet rs = null;
            %>
            <center><h1 style="color:grey; padding-top: -40px; padding-bottom: 10px;">Books in Library</h1></center>
            <table align="center" cellpadding="5" cellspacing="5" border="1" class="table">
                <tr>

                </tr>
                <tr bgcolor="grey">
                    <td><b>Book ID</b></td>
                    <td><b>Book Title</b></td>
                    <td><b>Book Author</b></td>                   
                    <td><b>Book ISBN</b></td>
                    <td><b>No Of Copies</b></td>
                    <td><b>Book Published Date</b></td>
                    <td><b>Book Inserted Date</b></td>
                </tr>
                <%
                    try {
                        stm = con.createStatement();
                        String sql = "SELECT * FROM dbo.Books";

                        rs = stm.executeQuery(sql);
                        while (rs.next()) {
                %>
                <tr bgcolor="#DEB880">

                    <td><%=rs.getString("Book_ID")%></td>
                    <td><%=rs.getString("Book_Title")%></td>
                    <td><%=rs.getString("Book_Author")%></td>                
                    <td><%=rs.getString("Book_ISBN")%></td>
                    <td><%=rs.getString("Book_No_Of_Copies")%></td>
                    <td><%=rs.getString("Book_Published_Date")%></td>
                    <td><%=rs.getString("Book_Insert_Date")%></td>

                </tr>

                <%
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>

            <br>
            <br>

            <form action="BookRequest.jsp" name="bkRequest">
                <div class="row center">              
                    <button  class="waves-effect waves-light grey white-text text-darken-1 btn center-align" type="submit">Request Book</button>
                </div>
            </form>
        </div>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="materialize/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $(".button-collapse").sideNav();
            });
        </script>
    </body>
</html>

