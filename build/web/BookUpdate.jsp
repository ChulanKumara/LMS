<%-- 
    Document   : BookUpdate
    Created on : Dec 12, 2016, 10:31:31 AM
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
        <title>Book Update Page</title>
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

        <div class="container">

            <div class="row">
                <br>
                <br>
                <br>
                <br>


                <div class="col l4 offset-l4 m6 offset-m3 s12" style="padding: 50px 50px 50px 50px;border-radius: 5px;box-shadow: 1px 1px 20px whitesmoke"> 
                    <form action="BookUpdate" method="POST">
                        <div class="row center">
                            <h3><b>Update Book Details</b></h3>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">library_books</i>
                                <input id="book_id" type="number" name="bookID">
                                <label for="book_id" class="white-text">Book ID</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">info</i>
                                <input id="book_Title" type="text" name="bookTitle">
                                <label for="book_Title" class="white-text">Book Title</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">assignment_ind</i>
                                <input id="book_Author" type="text" name="bookAuthor">
                                <label for="book_Author" class="white-text">Book Author</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">dialpad</i>
                                <input id="book_ISBN" type="number" name="bookISBN">
                                <label for="book_ISBN" class="white-text">Book ISBN</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">subject</i>
                                <input id="book_NoOfCopies" type="number" name="bookNoOfCopies">
                                <label for="book_NoOfCopies" class="white-text">Book Number Of Copies</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">today</i>
                                <input id="book_PublishedDate" type="date" class="datepicker" name="bookPublishedDate">
                                <label for="book_PublishedDate" class="white-text">Book Published Date</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">today</i>
                                <input id="book_InsertDate" type="date" class="datepicker" name="bookInsertDate">
                                <label for="book_InsertDate" class="white-text">Book Insert Date</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <i class="material-icons prefix">subject</i>
                                <input id="book_Reserve" type="number" name="bookReserve">
                                <label for="book_Reserve" class="white-text">Book Reserved</label>
                            </div>
                        </div>
                        <div class="row center">
                            <button  class="waves-effect waves-light black white-text text-darken-1 btn center-align" type="submit">Update</button>
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
