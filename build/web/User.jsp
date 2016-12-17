<%-- 
    Document   : User
    Created on : Dec 11, 2016, 11:07:09 AM
    Author     : Chulan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Message Page</title>
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
                    <li><a class="grey-text text-darken-3" href="index.html">Home</a></li>
                    <li><a class="grey-text text-darken-3" href="login.jsp">Login</a></li>
                    <li><a class="grey-text text-darken-3" href="Register.html">Register</a></li>
                </ul>
                <ul class="side-nav blue-grey darken-1" id="mobile-demo">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="Register.html">Register</a></li>
                </ul>
            </div>
        </nav>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="materialize/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $(".button-collapse").sideNav();
            });
        </script>

        <div class="container">
            <div class="row">
                <br><br>
                <br><br>
                <br><br>

                
                        <div class="col s12 center"><span class="flow-text grey-text darken-1" style="padding: 3px 3px 3px 3px;border-radius: 2px;box-shadow: 10px 10px 10px grey; border-bottom: 5px; border-top: 5px" ><%String msg = (String) request.getAttribute("passedMessage");
                    out.print(msg);%></span></div>
            </div>
        </div>

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
