<%@ Page Language="C#" AutoEventWireup="true" CodeFile="novice-registration-first-step.aspx.cs" Inherits="novice_registration_first_step" %>

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

    <title>Novice Registration First Step</title>
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
                    <li class="nav-item">
                        <a class="nav-link Rubik text-white ml-2" href="#">Register as an Expert</a>
                    </li>
                </ul>
                <button id="nav-login-button" class="btn px-4 ml-auto">Login</button>
                <button class="btn btn-light ml-3">My Profile</button>
            </div>
        </div>
    </nav>

    <section id="expert-registration-header">
        <div id="expert-registration-instructions" class="container">
            <h1 class="expert-registration-heading">Hi ##Novice's Name##, welcome to Phount!</h1>
            <p class="mb-5">Let's set up your profile so that you can connect with an expert!</p>
            <h2 class="mb-4">2 steps to set up your profile - please tell us about:</h2>
            <div class="row mb-4 d-flex justify-content-start">
                <div class="col-12 col-sm-6 text-center mb-4">
                    <img src="graphics/Phount-1-red-fill-35px.svg" class="mb-1" height="35px" width="35px" alt=""><br>
                    <p>The area(s) of expertise you need help with</p>
                </div>
                <div class="col-12 col-sm-6 text-center">
                    <img src="graphics/Phount-2-red-35px.svg" class="mb-1" height="35px" width="35px" alt=""><br>
                    <p>List the specific skills in that area that you need</p>
                </div>
            </div>
        </div>
    </section>


    <section class="mb-5">
        <div class="container">
            <div>
                <img src="graphics/Phount-1-red-fill-35px.svg" class="mb-1" height="35px" width="35px" alt=""></div>
            <h4 class="mb-5">Let’s start with an area of expertise you need help with</h4>
            <form id="noviceRegistrationFirstStepForm" runat="server" class="">
                <div class="row">
                    <br>
                    <div class="form-group col-md-6 col-12">
                        <label for="expertCategory">Select an area of expertise</label>
                        <asp:DropDownList runat="server" class="form-control" id="expertCategory">
                            <asp:ListItem Value="" Text="">1</asp:ListItem>
                            <asp:ListItem Value="" Text="">2</asp:ListItem>
                            <asp:ListItem Value="" Text="">3</asp:ListItem>
                            <asp:ListItem Value="" Text="">4</asp:ListItem>
                            <asp:ListItem Value="" Text="">5</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-6 col-12">
                        <label for="formGroupExampleInput">Was your area of expertise not listed?</label>
                        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Create a new area of expertise">
                    </div>
                    <div class="col-6">
                        <input class="btn btn-large" id="expert-area-submission" type="button" value="Submit and Add Specific Skills">
                    </div>
                </div>
            </form>
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
</body>
</html>
