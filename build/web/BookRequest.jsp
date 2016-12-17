<%-- 
    Document   : BookRequest
    Created on : Dec 12, 2016, 6:27:52 PM
    Author     : Chulan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Book Request Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <br>
        <br>

        <div class="col s12 center center flow-text grey-text darken-1" style="padding: 1px 1px 1px 1px;border-radius: 20px;box-shadow: 10px 10px 5px grey; border-bottom: 5px; border-top: 5px;  border-style: outset;">
            <h2>
                You Can Request A Book Based On It's ID <br> If The Requested Book Is Not Available <br> An Email Will Be Sent To You When It Is Available.
            </h2>
        </div>

        <div class="container">

            <div class="row">
                <br>
                <br>
                <br>
                <br>


                <div class="col l4 offset-l4 m6 offset-m3 s12" style="padding: 50px 50px 50px 50px;border-radius: 5px;box-shadow: 1px 1px 20px whitesmoke"> 
                    <form action="BookRequestResult.jsp">
                        <div class="row center">
                            <h3><b>Request Book</b></h3>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">library_books</i>
                                <input id="book_id" type="number" name="bookID">
                                <label for="book_id" class="white-text">Book ID</label>
                            </div>
                        </div>
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

