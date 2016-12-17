<%-- 
    Document   : login
    Created on : Dec 9, 2016, 10:41:49 PM
    Author     : Chulan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
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
                    <li><a class="grey-text text-darken-3" href="requestAccount.html">Register</a></li>
                    <li><a class="grey-text text-darken-3" href="About.html">About</a></li>
                </ul>
                <ul class="side-nav blue-grey darken-1" id="mobile-demo">
                    <li><a href="index.html">LibraryMS</a></li>                  
                    <li><a href="requestAccount.html">Register</a></li>
                    <li><a href="About.html">About</a></li>
                </ul>
            </div>
        </nav>

        <br>
        <br>
        <div class="col s12 center center flow-text grey-text darken-1" style="padding: 1px 1px 1px 1px;border-radius: 20px;box-shadow: 10px 10px 5px grey; border-bottom: 5px; border-top: 5px;  border-style: outset;">
            <h2>
                <q>Login Here First To Experience <br> The Capabilities Of This Library <br> Management System.</q>
            </h2>
        </div>
             
        <div class="container">

            <div class="row">
                <br>
                <br>
                <br>
                <br>


                <div class="col l4 offset-l4 m6 offset-m3 s12" style="padding: 50px 50px 50px 50px;border-radius: 5px;box-shadow: 1px 1px 20px whitesmoke"> 
                    <form action="HandleLogin" method="POST">
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">account_circle</i>
                                <input id="user_name" type="text" name="username">
                                <label for="user_name" class="white-text">Userame</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">lock_outline</i>
                                <input id="user_password" type="password" name="password">
                                <label for="user_password" class="white-text">Password</label>
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

        <style>
            .input-field label {
                color: #FFF;

                /* label focus color */ 
                .input-field input[type=text]:focus + label {
                    color: #FFF;
                }

                /* label underline focus color */
                .input-field input[type=text]:focus {
                    border-bottom: 1px solid #FFF;
                    box-shadow: 0 1px 0 0 #FFF;
                }

                /* label focus color */
                .input-field input[type=password]:focus + label {
                    color: #FFF;
                    
                }
                /* label underline focus color */
                .input-field input[type=password]:focus {
                    border-bottom: 1px solid #FFF;
                    box-shadow: 0 1px 0 0 #FFF;
                }
            }
        </style>
    </body>
</html>
