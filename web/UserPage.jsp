<%-- 
    Document   : UserPage
    Created on : Dec 10, 2016, 4:52:25 PM
    Author     : Chulan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session == null || (session.getAttribute("username") == null || session.getAttribute("username").equals(""))) {
        String s = "Please Login First! Goto <a href=\"login.jsp\" >Login</a>";
        request.setAttribute("passedMessage", s);
        RequestDispatcher rd = request.getRequestDispatcher("/User.jsp");
        rd.forward(request, response);
    } else if (session != null && session.getAttribute("username").equals("admin")) {
        String s = "You Don't Belong Here!";
        request.setAttribute("passedMessage", s);
        RequestDispatcher rd = request.getRequestDispatcher("/User.jsp");
        rd.forward(request, response);
    } else {
%>
<!DOCTYPE html>
<html>
    <head>
        <title>User Page</title>
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
        <div class="col s12 center center flow-text grey-text darken-1" style="padding: 1px 1px 1px 1px;border-radius: 20px;box-shadow: 10px 10px 5px grey; border-bottom: 5px; border-top: 5px;  border-style: outset;">
            <h2>
                <q>Following Are The List Of Things You Can Perform <br> Click The Desired Button <br> To Perform The Function.</q>
            </h2>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <form action="BookView.jsp" name="bkView">
            <div class="row center">
                <button  class="waves-effect waves-light grey white-text text-darken-1 btn center-align" type="submit">View Book</button>
            </div>
        </form>
        <br>

        <form action="BookSearch.jsp" name="bkSearch">
            <div class="row center">
                <button  class="waves-effect waves-light grey white-text text-darken-1 btn center-align" type="submit">Search Book</button>
            </div>
        </form>
        <br>

        <form action="BookRequest.jsp" name="bkRequest">
            <div class="row center">
                <button  class="waves-effect waves-light grey white-text text-darken-1 btn center-align" type="submit">Request Book</button>
            </div>
        </form>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="materialize/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $(".button-collapse").sideNav();
            });
        </script>

        <style>
            /* label focus color */
            .input-field input[type=text]:focus + label {
                color: #FFF;
            }
            /* label underline focus color */
            .input-field input[type=text]:focus {
                border-bottom: 1px solid #FFF;
                box-shadow: 0 1px 0 0 #FFF;
            }
        </style>

    </body>
</html>
<%   }
%>
