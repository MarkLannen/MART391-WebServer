﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="expert-registration-landing.aspx.cs" Inherits="expert_registration_landing" %>

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
        <a class="navbar-brand Sanchez" href="index.html">Phount</a>
        
    </div>
</nav>

    <section id="expert-registration-landing-section">
    <div class="container text-center py-5">
        <div class="row justify-content-center">
            <h1 id="" class="mb-5 registration-landing-heading">Create a profile to register as an Expert</h1>
        </div>
            <div class="row justify-content-center">
            <form id="expertRegistrationForm" runat="server" class="">

                 <div class="row"> 
                        <div class="form-group col-md-6">
                            <label id="noviceUsernameText" for="expertUsername" class="text-white">Username*</label>
                            <asp:Textbox runat="server" id="Textbox1" class="form-control registration-element"  aria-describedby="usernameHelp" placeholder="Enter Username"></asp:Textbox> 
                            <small id="usernameHelp" class="form-text text-muted"></small>
                        </div>
                        <div class="form-group col-md-6">
                            <label id="novicePasswordText" for="expertPassword" class="text-white">Password*</label>
                            <asp:Textbox runat="server" id="Textbox2" class="form-control registration-element"  aria-describedby="passwordHelp" placeholder="Enter Password"></asp:Textbox> 
                            <small id="passwordHelp" class="form-text text-muted"></small>
                        </div>
                    </div>


                 <div class="row"> 
                     <div class="form-group col-md-6">
                            <label id="noviceEmailText" class="text-white" for="expertEmail">Email*</label>
                            <asp:Textbox runat="server" id="Textbox4" class="form-control registration-element"  aria-describedby="emailHelp" placeholder="Enter Email"></asp:Textbox> 
                            <small id="emailHelp" class="form-text text-muted"></small>
                        </div>
                        <div class="form-group col-md-6">
                            <label id="novicePhoneNumberText" class="text-white" for="novicePhoneNumber">Phone Number</label>
                            <asp:Textbox runat="server" id="Textbox3" class="form-control registration-element"  aria-describedby="phoneNumberHelp" placeholder="Enter Phone Number"></asp:Textbox> 
                            <small id="phoneNumberHelp" class="form-text text-muted"></small>
                        </div>
                        
                    </div>

                    <div class="row "> 
                        <div class="form-group col-md-6">
                            <label id="noviceFirstNameText" class="text-white">First Name</label>
                            <asp:Textbox runat="server" id="txtFirstName" class="form-control registration-element"  aria-describedby="firstNameHelp" placeholder="Enter First Name"></asp:Textbox> 
                            <small id="firstNameHelp" class="form-text text-muted"></small>
                        </div>
                        <div class="form-group col-md-6">
                            <label id="noviceLastNameText" class="text-white">Last Name</label>
                            <asp:Textbox runat="server" id="txtLastName" class="form-control registration-element"  aria-describedby="lastNameHelp" placeholder="Enter Last Name"></asp:Textbox> 
                            <small id="lastNameHelp" class="form-text text-muted"></small>
                        </div>
                    </div>
                   
                   
                   
                    <div class="form-group">
                       
                    </div>
                    <div class="">
                        <asp:Button type="submit" runat="server" class="btn btn-light registration-element register-button" Text="Register" OnClick="btn_Expert_Registration"></asp:Button>
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
