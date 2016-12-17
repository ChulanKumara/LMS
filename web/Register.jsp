<%-- 
    Document   : Register
    Created on : Dec 13, 2016, 7:08:57 PM
    Author     : Chulan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session == null || (session.getAttribute("username") == null || session.getAttribute("username").equals(""))) {
        String s = "Please Login First! Goto <a href=\"login.jsp\" >Login</a>";
        request.setAttribute("passedMessage", s);
        RequestDispatcher rd = request.getRequestDispatcher("/User.jsp");
        rd.forward(request, response);
    } else if (session != null && !session.getAttribute("username").equals("admin")) {
        String s = "You Don't Belong Here!";
        request.setAttribute("passedMessage", s);
        RequestDispatcher rd = request.getRequestDispatcher("/User.jsp");
        rd.forward(request, response);
    } else {
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register Page</title>
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

        <br>
        <br>
        <br>

        <div class="container">

            <div class="row">
                <br>
                <br>
                <br>
                <br>


                <div class="col l4 offset-l4 m6 offset-m3 s12" style="padding: 50px 50px 50px 50px;border-radius: 5px;box-shadow: 1px 1px 20px whitesmoke"> 
                    <form action="UserRegister" method="POST">
                        <div class="row center">
                            <h3><b>Insert Book Details</b></h3>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">library_books</i>
                                <input id="user_id" type="number" name="userID">
                                <label for="user_id" class="white-text">User ID</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">info</i>
                                <input id="user_Name" type="text" name="userName">
                                <label for="user_Name" class="white-text">UserName</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">https</i>
                                <input id="user_Password" type="password" name="userPassword">
                                <label for="user_Password" class="white-text">Password</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">https</i>
                                <input id="user_Email" type="email" name="userEmail">
                                <label for="user_Email" class="white-text">Email</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">https</i>
                                <input id="user_Role" type="text" name="userRole">
                                <label for="user_Role" class="white-text">Role</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">today</i>
                                <input id="user_RegisteredDate" type="date" class="datepicker" name="userRegisteredDate">
                                <label for="user_RegisteredDate" class="white-text">User Registration Date</label>
                            </div>
                        </div>

                        <div class="row center">
                            <button  class="waves-effect waves-light black white-text text-darken-1 btn center-align" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="materialize/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $(".button-collapse").sideNav();
            });
        </script>

        <script type="text/javascript">
            $('.datepicker').pickadate({
                selectMonths: true, // Creates a dropdown to control month
                selectYears: 15 // Creates a dropdown of 15 years to control year
            });
        </script>

        <style>

            /* label color */
            .input-field label {
                color: #000;
            }
            /* label focus color */
            .input-field input[type=text]:focus + label {
                color: #000;
            }
            /* label underline focus color */
            .input-field input[type=text]:focus {
                border-bottom: 1px solid #000;
                box-shadow: 0 1px 0 0 #000;
            }
            /* label focus color */
            .input-field input[type=number]:focus + label {
                color: #000;
            }
            /* label underline focus color */
            .input-field input[type=number]:focus {
                border-bottom: 1px solid #000;
                box-shadow: 0 1px 0 0 #000;
            }

            /* label focus color */
            .input-field input[type=date]:focus + label {
                color: #000;
            }
            /* label underline focus color */
            .input-field input[type=date]:focus {
                border-bottom: 1px solid #000;
                box-shadow: 0 1px 0 0 #000;
            }

            /* icon prefix focus color */
            .input-field .prefix.active {
                color: #000;
            }

        </style>
    </body>
</html>
<% }
%>
