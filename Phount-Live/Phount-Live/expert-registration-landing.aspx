<%@ Page Language="C#" AutoEventWireup="true" CodeFile="expert-registration-landing.aspx.cs" Inherits="expert_registration_landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="StyleSheet.css">

    <!--    Google Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Rubik:300|Sanchez&display=swap" rel="stylesheet">
    <!--    Custom JavaScript-->

    <title>Expert Registration</title>
</head>
<body>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #00518f">
    <div class="container-fluid">
        <a class="navbar-brand Sanchez" href="#">Phount</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
            <ul class="navbar-nav">

            </ul>
            <button id="nav-login-button" class="btn px-4 ml-auto">Login</button>
            <button class="btn btn-light ml-3">My Profile</button>
        </div>
    </div>
</nav>

    <section id="expert-registration-landing-section">
    <div class="container text-center py-5">
        <div class="row justify-content-center">
            <h1 id="" class="mb-5 registration-landing-heading">Create an account to connect<br> with an expert</h1>
        </div>
            <div class="row justify-content-center">
                <form class="">
                    <div class="form-group">
                        <label id="expertUsernameText" for="expertUsername">Username</label>
                        <input type="email" class="form-control registration-element" id="expertUsername" aria-describedby="emailHelp" placeholder="Enter Username">
                        <small id="usernameHelp" class="form-text text-muted"></small>
                    </div>
                    <div class="form-group">
                        <label id="expertEmailText" for="expertEmail">Email address</label>
                        <input type="email" class="form-control registration-element" id="expertEmail" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted"></small>
                    </div>
                    <div class="form-group mb-5">
                        <label id="expertPasswordText" for="expertPassword">Password</label>
                        <input type="password" class="form-control registration-element" id="expertPassword" placeholder="Password">
                    </div>
                    <div class="">
                        <button type="submit" class="btn btn-light registration-element register-button">Register!</button>
                    </div>

                </form>
            </div>
    </div>
</section>



<!-- Footer -->
<footer class="page-footer font-small blue pt-4">

    <!-- Footer Links -->
    <div class="container-fluid text-center text-md-left">

        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-6 mt-md-0 mt-3">

                <!-- Content -->
                <h5 class="text-uppercase">Footer Content</h5>
                <p>Here you can use rows and columns to organize your footer content.</p>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none pb-3">

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
                <h5 class="text-uppercase">Links</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Link 1</a>
                    </li>
                    <li>
                        <a href="#!">Link 2</a>
                    </li>
                    <li>
                        <a href="#!">Link 3</a>
                    </li>
                    <li>
                        <a href="#!">Link 4</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
                <h5 class="text-uppercase">Links</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Link 1</a>
                    </li>
                    <li>
                        <a href="#!">Link 2</a>
                    </li>
                    <li>
                        <a href="#!">Link 3</a>
                    </li>
                    <li>
                        <a href="#!">Link 4</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

    </div>
    <!-- Footer Links -->

</footer>
<!-- Footer -->




<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript" src="scripts.js"></script>



    <%--<form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
</body>
</html>
